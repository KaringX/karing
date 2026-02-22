# [Feature] Support encrypted subscription decryption

Closes #1346 (https://github.com/KaringX/karing/issues/1346)

## Summary

- When the subscription response has header `subscription-encryption: true`, the content is AES-128-CBC encrypted. This PR adds decryption support so users can enter the subscription password (site login password) to decrypt.

## Changes

1. **`lib/app/utils/subscription_decrypt.dart`** (new)
   - `isSubscriptionEncrypted(headerValue)` – checks if response is encrypted
   - `tryDecryptSubscription(password, base64Data)` – AES-128-CBC decrypt (key = MD5(password) as 32-char hex → 16 bytes; IV = first 16 bytes of base64 decoded body; cipher = rest)
   - `decryptSubscriptionResponse(encHeader, body, password)` – helper that decrypts if encrypted or returns body unchanged; throws `SubscriptionEncryptedException` when password is missing or wrong
   - Matches the algorithm described in the issue (same as flclash / v2rayN)

2. **`lib/app/modules/server_manager.dart`**
   - `loadFrom(..., subscriptionPassword)` – optional parameter passed through to `AutoConfUtils.tryConvert`
   - `addRemoteConfig(..., subscriptionPassword)` – optional parameter; stores password per groupid for later updates; catches `SubscriptionEncryptedException` and returns a user-facing error
   - Subscription passwords persisted in `subscription_passwords.json` (same directory as subscribe config); loaded on init, used for `updateSubscription` and reload
   - `getSubscriptionPassword(groupid)` / `setSubscriptionPassword(groupid, password)` for edit screen

3. **`lib/screens/add_profile_by_link_or_content_screen.dart`**
   - Optional "Subscription password (for encrypted)" field; value passed to `addRemoteConfig(subscriptionPassword: ...)`

4. **`lib/screens/my_profiles_edit_screen.dart`**
   - Optional "Subscription password (for encrypted)" field; value read/saved via `ServerManager.getSubscriptionPassword` / `setSubscriptionPassword`

5. **`pubspec.yaml`**
   - Added dependency `encrypt: 5.0.3` for AES-128-CBC.

## Integration required in `AutoConfUtils.tryConvert`

`tryConvert` is currently called with 7 arguments. This PR adds an 8th argument `subscriptionPassword` (String?). Please update the signature and implementation as follows:

- When fetching subscription by URL, after receiving the HTTP response:
  - Read header `subscription-encryption` (case-insensitive).
  - If `isSubscriptionEncrypted(headerValue)` is true:
    - Use `SubscriptionDecrypt.decryptSubscriptionResponse(response.headers['subscription-encryption'], response.bodyBytes, subscriptionPassword)` to get the decrypted body (or let it throw `SubscriptionEncryptedException` if password is missing/wrong).
    - Use the decrypted bytes as the subscription content for parsing.
  - Otherwise use the response body as usual.

Example (pseudo):

```dart
// after getting response with headers and body
try {
  body = decryptSubscriptionResponse(
    response.headers.value('subscription-encryption'),
    response.bodyBytes,
    subscriptionPassword,
  );
} on SubscriptionEncryptedException catch (e) {
  rethrow; // so addRemoteConfig can catch and show message
}
// then parse body as before
```

## Testing

- Add a subscription with an encrypted subscription URL; enter the correct password → should succeed.
- Add without password or with wrong password → should show error asking for password or "Incorrect subscription password".
- Edit profile: set/change subscription password and save → password is stored and used on next reload/update.
