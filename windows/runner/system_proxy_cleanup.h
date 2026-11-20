#ifndef RUNNER_SYSTEM_PROXY_CLEANUP_H_
#define RUNNER_SYSTEM_PROXY_CLEANUP_H_

// Synchronously clears the Windows system proxy during session shutdown if it
// is currently enabled and points exclusively to Karing's configured local
// mixed port.
void ClearSystemProxyOnShutdown() noexcept;

#endif  // RUNNER_SYSTEM_PROXY_CLEANUP_H_
