///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:slang/generated.dart';
import 'strings.g.dart';

// Path: <root>
class TranslationsPt with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsPt({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.pt,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <pt>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsPt _root = this; // ignore: unused_field

	@override 
	TranslationsPt $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsPt(meta: meta ?? this.$meta);

	// Translations
	@override late final _TranslationsAboutScreenPt AboutScreen = _TranslationsAboutScreenPt._(_root);
	@override late final _TranslationsBackupAndSyncWebdavScreenPt BackupAndSyncWebdavScreen = _TranslationsBackupAndSyncWebdavScreenPt._(_root);
	@override late final _TranslationsDiversionGroupCustomEditScreenPt DiversionGroupCustomEditScreen = _TranslationsDiversionGroupCustomEditScreenPt._(_root);
	@override late final _TranslationsDiversionRuleDetectScreenPt DiversionRuleDetectScreen = _TranslationsDiversionRuleDetectScreenPt._(_root);
	@override late final _TranslationsDiversionRulesScreenPt DiversionRulesScreen = _TranslationsDiversionRulesScreenPt._(_root);
	@override late final _TranslationsDnsSettingsScreenPt DnsSettingsScreen = _TranslationsDnsSettingsScreenPt._(_root);
	@override late final _TranslationsFileContentViewerScreenPt FileContentViewerScreen = _TranslationsFileContentViewerScreenPt._(_root);
	@override late final _TranslationsHomeScreenPt HomeScreen = _TranslationsHomeScreenPt._(_root);
	@override late final _TranslationsLaunchFailedScreenPt LaunchFailedScreen = _TranslationsLaunchFailedScreenPt._(_root);
	@override late final _TranslationsMyProfilesMergeScreenPt MyProfilesMergeScreen = _TranslationsMyProfilesMergeScreenPt._(_root);
	@override late final _TranslationsNetCheckScreenPt NetCheckScreen = _TranslationsNetCheckScreenPt._(_root);
	@override late final _TranslationsNetConnectionsFilterScreenPt NetConnectionsFilterScreen = _TranslationsNetConnectionsFilterScreenPt._(_root);
	@override late final _TranslationsNetConnectionsScreenPt NetConnectionsScreen = _TranslationsNetConnectionsScreenPt._(_root);
	@override late final _TranslationsPerAppAndroidScreenPt PerAppAndroidScreen = _TranslationsPerAppAndroidScreenPt._(_root);
	@override late final _TranslationsRegionSettingsScreenPt RegionSettingsScreen = _TranslationsRegionSettingsScreenPt._(_root);
	@override late final _TranslationsServerSelectScreenPt ServerSelectScreen = _TranslationsServerSelectScreenPt._(_root);
	@override late final _TranslationsSettingsScreenPt SettingsScreen = _TranslationsSettingsScreenPt._(_root);
	@override late final _TranslationsUserAgreementScreenPt UserAgreementScreen = _TranslationsUserAgreementScreenPt._(_root);
	@override late final _TranslationsVersionUpdateScreenPt VersionUpdateScreen = _TranslationsVersionUpdateScreenPt._(_root);
	@override late final _TranslationsCommonWidgetPt CommonWidget = _TranslationsCommonWidgetPt._(_root);
	@override late final _TranslationsMainPt main = _TranslationsMainPt._(_root);
	@override late final _TranslationsMetaPt meta = _TranslationsMetaPt._(_root);
	@override String get diversionRulesKeep => 'Manter [${_root.meta.diversionRules}] de [${_root.meta.isp}]';
	@override String get diversionCustomGroupPreset => '[${_root.meta.diversionCustomGroup}] Predefinido';
	@override String get diversionCustomGroupPresetTips => 'Nota: Os itens ativados serão adicionados/substituídos a [${_root.meta.diversionCustomGroup}] e [${_root.meta.diversionRules}]';
	@override String get diversionCustomGroupAddTips => 'Nota: Após adicionar, pode precisar de ajustar manualmente a ordem, caso contrário o desvio recém-adicionado pode não ter efeito';
	@override String get rulesetEnableTips => 'Dica: Após ativar as opções, por favor vá a [${_root.meta.diversionRules}] para definir as regras relevantes, caso contrário não terão efeito';
	@override String get ispUserAgentTips => '[${_root.meta.isp}] enviará dados de diferentes tipos de subscrição baseados no [UserAgent] no pedido [HTTP]';
	@override String get ispDiversionTips => '[${_root.meta.isp}] fornece regras de desvio de tráfego; subscrições do tipo [V2Ray] não suportam regras de desvio de tráfego';
	@override late final _TranslationsIspPt isp = _TranslationsIspPt._(_root);
	@override late final _TranslationsPermissionPt permission = _TranslationsPermissionPt._(_root);
	@override late final _TranslationsTlsPt tls = _TranslationsTlsPt._(_root);
	@override late final _TranslationsOutboundRuleModePt outboundRuleMode = _TranslationsOutboundRuleModePt._(_root);
	@override late final _TranslationsDnsProxyResolveModePt dnsProxyResolveMode = _TranslationsDnsProxyResolveModePt._(_root);
	@override late final _TranslationsProxyStrategyPt proxyStrategy = _TranslationsProxyStrategyPt._(_root);
	@override late final _TranslationsReloadReasonPt reloadReason = _TranslationsReloadReasonPt._(_root);
	@override late final _TranslationsThemePt theme = _TranslationsThemePt._(_root);
	@override String get downloadProxyStrategy => 'Canal de Descarregamento';
	@override String get dnsProxyResolveModeTips => '[${_root.dnsProxyResolveMode.proxy}]: Ligue-se ao servidor DNS através do servidor proxy para resolver o nome de domínio\n[${_root.dnsProxyResolveMode.direct}]: Ligue-se diretamente ao servidor DNS para resolver o nome de domínio\n[${_root.dnsProxyResolveMode.fakeip}]: O servidor proxy resolve o nome de domínio em seu nome; se desligar a ligação VPN, a sua aplicação pode precisar de ser reiniciada; apenas eficaz para tráfego de entrada [TUN]';
	@override String get routeFinal => 'final';
	@override String get protocolSniff => 'Sniff de Protocolo';
	@override String sendOrReceiveNotMatch({required Object p}) => 'Por favor use [${p}]';
	@override String get turnOffPrivateDirect => 'Por favor ative [Ligação direta de rede privada] primeiro';
	@override String targetConnectFailed({required Object p}) => 'Falha ao ligar a [${p}]. Por favor certifique-se de que os dispositivos estão na mesma LAN';
	@override String get appleTVSync => 'Sincronizar a configuração atual do núcleo para Apple TV - Karing';
	@override String get appleTVSyncDone => 'A sincronização está concluída. Por favor vá a Apple TV - Karing para iniciar a ligação/reiniciar a ligação';
	@override String get appleTVRemoveCoreConfig => 'Eliminar Configuração do Núcleo de Apple TV - Karing';
	@override String get appleTVRemoveCoreConfigDone => 'Configuração do Núcleo de Apple TV - Karing eliminada; serviço VPN desligado';
	@override String get appleTVUrlInvalid => 'URL inválido, por favor abra Apple TV - Karing e digitalize o código QR exibido pelo Karing';
	@override String appleTV404({required Object p}) => 'AppleTV:Karing[${p}] não tem esta função, por favor atualize e tente novamente';
	@override String appleCoreVersionNotMatch({required Object p}) => 'A versão principal do núcleo não corresponde, por favor atualize [${p}] e tente novamente';
	@override String get remoteProfileEditConfirm => 'Após o Perfil ser atualizado, as alterações do nó serão restauradas. Continuar?';
	@override String get mustBeValidHttpsURL => 'Deve ser um URL https válido';
	@override String fileNotExistReinstall({required Object p}) => 'Ficheiro em falta [${p}], por favor reinstale';
	@override String get noNetworkConnect => 'Sem ligação à Internet';
	@override String get sudoPassword => 'palavra-passe sudo (obrigatória para o modo TUN)';
	@override String get turnOffNetworkBeforeInstall => 'Recomenda-se mudar para [Modo de Avião] antes de instalar a atualização';
	@override String get latencyTestResolveIP => 'Ao verificar manualmente, resolver o IP de saída';
	@override String get latencyTestConcurrency => 'Concorrência';
	@override String get edgeRuntimeNotInstalled => 'O dispositivo atual não instalou o tempo de execução Edge WebView2, pelo que a página não pode ser exibida. Por favor descarregue e instale o tempo de execução Edge WebView2 (x64), reinicie a Aplicação e tente novamente.';
	@override Map<String, String> get locales => {
		'en': 'English',
		'zh-CN': '简体中文',
		'zh-TW': '繁體中文',
		'ja': '日本語',
		'ko': '한국어',
		'fr': 'Français',
		'es': 'Español',
		'ar': 'عربي',
		'ru': 'Русский',
		'fa': 'فارسی',
		'de': 'Deutsch',
		'pt': 'Português',
		'it': 'Italiano',
		'uk': 'Українська',
		'pl': 'Polski',
		'nl': 'Nederlands',
		'sv': 'Svenska',
		'no': 'Norsk',
		'da': 'Dansk',
		'hi': 'हिन्दी',
		'ur': 'اردو',
		'bn': 'বাংলা',
		'el': 'Ελληνικά',
		'vi': 'Tiếng Việt',
		'tr': 'Türkçe',
		'th': 'ไทย',
	};
}

// Path: AboutScreen
class _TranslationsAboutScreenPt implements TranslationsAboutScreenEn {
	_TranslationsAboutScreenPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get installRefer => 'Referência de Instalação';
	@override String get installTime => 'Hora de Instalação';
	@override String get versionChannel => 'Canal de Atualização Automática';
	@override String get updateWhenConnected => 'Verifique se há atualizações após ligar';
	@override String get autoDownloadPkg => 'Descarregar Pacotes de Atualização Automaticamente';
	@override String get disableAppImproveData => 'Dados de Melhoria da Aplicação';
	@override String get disableUAReportTip => 'Ativar [${_root.AboutScreen.disableAppImproveData}] ajuda-nos a melhorar a estabilidade e usabilidade do produto; não recolhemos nenhuns dados de privacidade pessoal. Desativar impedirá a aplicação de recolher quaisquer dados.';
	@override String get devOptions => 'Opções de Programador';
	@override String get enableDebugLog => 'Ativar Registo de Depuração';
	@override String get viewFilsContent => 'Ver Ficheiros';
	@override String get enablePprof => 'Ativar pprof';
	@override String get pprofPanel => 'Painel pprof';
	@override String get allowRemoteAccessPprof => 'Permitir acesso remoto ao ${_root.AboutScreen.pprofPanel}';
	@override String get allowRemoteAccessHtmlBoard => 'Permitir acesso remoto ao ${_root.SettingsScreen.htmlBoard}';
	@override String get useOriginalSBProfile => 'Usar Perfil sing-box original';
}

// Path: BackupAndSyncWebdavScreen
class _TranslationsBackupAndSyncWebdavScreenPt implements TranslationsBackupAndSyncWebdavScreenEn {
	_TranslationsBackupAndSyncWebdavScreenPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get webdavServerUrl => 'URL do Servidor';
	@override String get webdavRequired => 'Não pode estar vazio';
	@override String get webdavLoginFailed => 'Falha no login:';
	@override String get webdavListFailed => 'Falha ao obter lista de ficheiros:';
}

// Path: DiversionGroupCustomEditScreen
class _TranslationsDiversionGroupCustomEditScreenPt implements TranslationsDiversionGroupCustomEditScreenEn {
	_TranslationsDiversionGroupCustomEditScreenPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String invalidDomain({required Object p}) => '[Domínio] inválido:${p}';
	@override String invalidIpCidr({required Object p}) => '[IP Cidr] inválido:${p}';
	@override String invalid({required Object p0, required Object p}) => 'Inválido [${p0}]:${p}';
	@override String invalidRuleSet({required Object p}) => '[Conjunto de Regras] inválido:${p}, O URL deve ser um URL https válido e um ficheiro binário com a extensão .srs/.json';
	@override String invalidRuleSetBuildIn({required Object p}) => '[Conjunto de Regras (integrado)] inválido:${p}, O formato é geosite:xxx ou geoip:xxx ou acl:xxx, e xxx deve ser um nome de regra válido';
	@override String invalidPackageId({required Object p}) => '[${_root.meta.appPackage}] inválido:${p}';
	@override String get setDiversionRule => 'Dica: Após guardar, vá a [${_root.meta.diversionRules}] para definir as regras relevantes, caso contrário não terão efeito';
}

// Path: DiversionRuleDetectScreen
class _TranslationsDiversionRuleDetectScreenPt implements TranslationsDiversionRuleDetectScreenEn {
	_TranslationsDiversionRuleDetectScreenPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Deteção de Regras de Desvio';
	@override String get rule => 'Regra:';
	@override String get outbound => 'Servidor Proxy:';
}

// Path: DiversionRulesScreen
class _TranslationsDiversionRulesScreenPt implements TranslationsDiversionRulesScreenEn {
	_TranslationsDiversionRulesScreenPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get diversionRulesMatchTips => 'Dica: Tente fazer corresponder as regras de cima para baixo. Se nenhuma regra corresponder, use [final]';
}

// Path: DnsSettingsScreen
class _TranslationsDnsSettingsScreenPt implements TranslationsDnsSettingsScreenEn {
	_TranslationsDnsSettingsScreenPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get ispCanNotEmpty => 'O ISP não pode estar vazio';
	@override String get urlCanNotEmpty => 'O URL não pode estar vazio';
	@override String error({required Object p}) => 'Tipo não suportado:${p}';
	@override String get dnsDesc => 'A primeira coluna de dados de atraso é o atraso da consulta de ligação direta;\nA segunda coluna: Ative [[Tráfego Proxy]Resolver DNS através do servidor proxy]: os dados de atraso são o atraso da consulta encaminhado através do servidor proxy atual; se [[Tráfego Proxy]Resolver DNS através do servidor proxy] estiver desativado: Os dados de atraso são o atraso da consulta de ligação direta';
}

// Path: FileContentViewerScreen
class _TranslationsFileContentViewerScreenPt implements TranslationsFileContentViewerScreenEn {
	_TranslationsFileContentViewerScreenPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Visualizador de Conteúdo de Ficheiro';
	@override String get clearFileContent => 'Tem a certeza de que deseja limpar o conteúdo do ficheiro?';
	@override String get clearFileContentTips => 'Tem a certeza de que deseja limpar o conteúdo do ficheiro de Perfil? Limpar o ficheiro de Perfil pode causar perda de dados ou funções anormais da aplicação, por favor opere com cautela';
}

// Path: HomeScreen
class _TranslationsHomeScreenPt implements TranslationsHomeScreenEn {
	_TranslationsHomeScreenPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get toSelectServer => 'Por favor Selecione um Servidor';
	@override String get invalidServer => 'é inválido, por favor selecione novamente';
	@override String get disabledServer => 'está desativado, por favor selecione novamente';
	@override String get expiredServer => 'Nenhum servidor disponível, os perfis podem estar expirados ou desativados';
	@override String systemProxyTips({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}';
	@override String get myLinkEmpty => 'Por favor configure o [Link de Atalho] antes de o usar';
	@override String tooMuchServers({required Object p, required Object p1}) => 'Demasiados servidores proxy [${p}>${p1}], e a ligação pode falhar devido a limitações de memória do sistema';
	@override String tooMuchServers2({required Object p, required Object p1}) => 'Demasiados servidores proxy [${p}>${p1}] podem causar ligações lentas ou inacessíveis';
}

// Path: LaunchFailedScreen
class _TranslationsLaunchFailedScreenPt implements TranslationsLaunchFailedScreenEn {
	_TranslationsLaunchFailedScreenPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get invalidProcess => 'A aplicação falhou ao iniciar [Nome de processo inválido], por favor reinstale a aplicação num diretório separado';
	@override String get invalidProfile => 'A aplicação falhou ao iniciar [Falha ao aceder ao perfil], por favor reinstale a aplicação';
	@override String get invalidVersion => 'A aplicação falhou ao iniciar [Versão inválida], por favor reinstale a aplicação';
	@override String get systemVersionLow => 'A aplicação falhou ao iniciar [versão do sistema demasiado baixa]';
	@override String get invalidInstallPath => 'O caminho de instalação é inválido, por favor reinstale-a num caminho válido';
}

// Path: MyProfilesMergeScreen
class _TranslationsMyProfilesMergeScreenPt implements TranslationsMyProfilesMergeScreenEn {
	_TranslationsMyProfilesMergeScreenPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get profilesMerge => 'Fusão de Perfis';
	@override String get profilesMergeTarget => 'Perfil de Destino';
	@override String get profilesMergeSource => 'Perfis de Origem';
	@override String get profilesMergeTips => 'Dica: O desvio dos perfis de origem será descartado';
}

// Path: NetCheckScreen
class _TranslationsNetCheckScreenPt implements TranslationsNetCheckScreenEn {
	_TranslationsNetCheckScreenPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Verificação de Rede';
	@override String get warn => 'Nota: Devido à influência do ambiente de rede e das regras de desvio, os resultados do teste não são completamente equivalentes aos resultados reais.';
	@override String get invalidDomain => 'Nome de Domínio Inválido';
	@override String get connectivity => 'Conetividade de Rede';
	@override String connectivityTestIpv4AllFailed({required Object p}) => 'Teste de ligação Ipv4 [${p}] falhou em todos';
	@override String get connectivityTestIpv4Ok => 'Ligação Ipv4 bem-sucedida';
	@override String connectivityTestIpv6AllFailed({required Object p}) => 'Teste de ligação Ipv6 [${p}] falhou em todos, a sua rede pode não suportar ipv6';
	@override String get connectivityTestIpv6Ok => 'Ligação Ipv6 bem-sucedida';
	@override String get connectivityTestOk => 'A rede está ligada à Internet';
	@override String get connectivityTestFailed => 'A rede ainda não está ligada à Internet';
	@override String get remoteRulesetsDownloadOk => 'Todos descarregados com sucesso';
	@override String get remoteRulesetsDownloadNotOk => 'A descarregar ou falha no descarregamento';
	@override String get outbound => 'Servidor Proxy';
	@override String outboundOk({required Object p}) => 'Ligação [${p}] bem-sucedida';
	@override String outboundFailed({required Object p1, required Object p2}) => 'Ligação [${p1}] falhou\nErro:[${p2}]';
	@override String get dnsServer => 'Servidor DNS';
	@override String dnsOk({required Object p1, required Object p2, required Object p3, required Object p4}) => 'Consulta DNS [${p1}] bem-sucedida\nRegra DNS:[${p2}]\nLatência:[${p3} ms]\nEndereço:[${p4}]';
	@override String dnsFailed({required Object p1, required Object p2, required Object p3}) => 'Consulta DNS [${p1}] bem-sucedida\n nRegra DNS:[${p2}]\nErro:[${p3}]';
	@override String get host => 'Ligação HTTP';
	@override String hostConnection({required Object p1, required Object p2, required Object p3}) => '[${p1}]\nRegra de Desvio:[${p2}]\nServidor Proxy:[${p3}]';
	@override String get hostConnectionOk => 'ligação bem-sucedida';
	@override String hostConnectionFailed({required Object p}) => 'falha na ligação:[${p}]';
}

// Path: NetConnectionsFilterScreen
class _TranslationsNetConnectionsFilterScreenPt implements TranslationsNetConnectionsFilterScreenEn {
	_TranslationsNetConnectionsFilterScreenPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get hostIp => 'Domínio/IP';
	@override String get app => 'Aplicação';
	@override String get rule => 'Regra';
	@override String get chain => 'Saída';
}

// Path: NetConnectionsScreen
class _TranslationsNetConnectionsScreenPt implements TranslationsNetConnectionsScreenEn {
	_TranslationsNetConnectionsScreenPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get copyAsCSV => 'Copiado para formato CSV';
	@override String get selectType => 'Selecionar Tipo de Desvio';
}

// Path: PerAppAndroidScreen
class _TranslationsPerAppAndroidScreenPt implements TranslationsPerAppAndroidScreenEn {
	_TranslationsPerAppAndroidScreenPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Proxy por Aplicação';
	@override String get whiteListMode => 'Modo Whitelist';
	@override String get whiteListModeTip => 'Quando ativado: apenas as aplicações marcadas são proxies; quando não ativado: apenas as aplicações não marcadas são proxies';
}

// Path: RegionSettingsScreen
class _TranslationsRegionSettingsScreenPt implements TranslationsRegionSettingsScreenEn {
	_TranslationsRegionSettingsScreenPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'País ou Região';
	@override String get Regions => 'Dica: Por favor configure o seu país ou região atual corretamente, caso contrário pode causar problemas de desvio de rede';
}

// Path: ServerSelectScreen
class _TranslationsServerSelectScreenPt implements TranslationsServerSelectScreenEn {
	_TranslationsServerSelectScreenPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Selecionar Servidor';
	@override String get autoSelectServer => 'Selecionar automaticamente o servidor com a latência mais baixa';
	@override String get recentUse => 'Usado Recentemente';
	@override String get myFav => 'Meus Favoritos';
	@override String selectLocal({required Object p}) => 'O servidor selecionado é um endereço local e pode não funcionar corretamente:${p}';
	@override String get selectRequireEnableIPv6 => 'O servidor selecionado é um endereço IPv6 e requer [Ativar IPv6]';
	@override String get selectDisabled => 'Este servidor foi desativado';
	@override String get error404 => 'Deteção de latência encontrou um erro, por favor verifique se existe uma configuração com o mesmo conteúdo';
}

// Path: SettingsScreen
class _TranslationsSettingsScreenPt implements TranslationsSettingsScreenEn {
	_TranslationsSettingsScreenPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get getTranffic => 'Obter Tráfego';
	@override String get tutorial => 'Tutorial';
	@override String get commonlyUsedRulesets => 'Conjuntos de Regras Comuns';
	@override String get htmlBoard => 'Painel Online';
	@override String get dnsLeakDetection => 'Deteção de Fugas de DNS';
	@override String get proxyLeakDetection => 'Deteção de Fugas de Proxy';
	@override String get speedTest => 'Teste de Velocidade';
	@override String get rulesetDirectDownlad => 'Descarregamento Direto de Conjunto de Regras';
	@override String get hideUnusedDiversionGroup => 'Ocultar Regras de Desvio Não Utilizadas';
	@override String get disableISPDiversionGroup => 'Desativar [${_root.meta.diversionRules}] de [${_root.meta.isp}]';
	@override String get portSettingRule => 'Baseado em Regras';
	@override String get portSettingDirectAll => 'Direto para Todos';
	@override String get portSettingProxyAll => 'Proxy para Todos';
	@override String get portSettingControl => 'Controlo e Sincronização';
	@override String get portSettingCluster => 'Serviço de Cluster';
	@override String get modifyPort => 'Modificar Porta';
	@override String get modifyPortOccupied => 'A porta está ocupada, por favor use outra porta';
	@override String get ipStrategyTips => 'Antes de ativar, confirme que a sua rede suporta IPv6, caso contrário algum tráfego não poderá ser acedido normalmente.';
	@override String get tunAppendHttpProxy => 'Anexar Proxy HTTP a VPN';
	@override String get tunAppendHttpProxyTips => 'Algumas aplicações ignoram o Dispositivo NIC virtual e ligam-se diretamente ao proxy HTTP';
	@override String get tunAllowBypassHttpProxyDomain => 'Domínios permitidos para ignorar o proxy HTTP';
	@override String get dnsEnableRule => 'Ativar regras de Desvio de DNS';
	@override String get dnsEnableProxyResolveMode => 'Canal de Resolução de [${_root.meta.trafficProxy}]';
	@override String get dnsEnableClientSubnet => 'Ativar ECS em [${_root.meta.trafficDirect}]';
	@override String get dnsTestDomain => 'Domínio de Teste';
	@override String get dnsTestDomainInvalid => 'Domínio Inválido';
	@override String get dnsTypeOutbound => 'Servidor Proxy';
	@override String get dnsTypeDirect => _root.meta.trafficDirect;
	@override String get dnsTypeProxy => _root.meta.trafficProxy;
	@override String get dnsTypeResolver => 'Servidor DNS';
	@override String get dnsEnableRuleTips => 'Após ativar, o nome de domínio selecionará o servidor DNS correspondente para resolução de acordo com as regras de desvio';
	@override String get dnsEnableFakeIpTips => 'Após ativar FakeIP, se se desligar da VPN, a sua aplicação pode precisar de ser reiniciada; esta funcionalidade requer que o [Modo TUN] esteja ativado';
	@override String get dnsTypeOutboundTips => 'Resolução de nome de domínio para [${_root.SettingsScreen.dnsTypeOutbound}]';
	@override String get dnsTypeDirectTips => 'Resolução de nome de domínio para [${_root.meta.trafficDirect}]';
	@override String get dnsTypeProxyTips => 'Resolução de nome de domínio para [${_root.meta.trafficProxy}]';
	@override String get dnsTypeResolverTips => 'Resolução de nome de domínio para [${_root.SettingsScreen.dnsTypeResolver}]';
	@override String get dnsAutoSetServer => 'Configuração Automática do Servidor';
	@override String get dnsResetServer => 'Repor Servidor';
	@override String get inboundDomainResolve => 'Resolver nomes de Domínio de Entrada';
	@override String get privateDirect => 'Ligação direta de Rede Privada';
	@override String inboundDomainResolveTips({required Object p}) => 'Alguns nomes de domínio que não estão configurados com regras de desvio precisam de ser resolvidos antes de poderem atingir as regras de desvio baseadas em IP; esta funcionalidade afeta pedidos de entrada na porta proxy [${p}]';
	@override String get useRomoteRes => 'Usar Recursos Remotos';
	@override String get autoAppendRegion => 'Anexar automaticamente regras básicas';
	@override String get autoSelect => 'Seleção Automática';
	@override String get autoSelectServerIgnorePerProxyServer => 'Ignorar servidores Proxy [Front/Chain]';
	@override String get autoSelectServerInterval => 'Intervalo de Verificações de Latência';
	@override String get autoSelectSelectedHealthCheckInterval => 'Intervalo de verificação de integridade do servidor atual';
	@override String get autoSelectServerReTestIfNetworkUpdate => 'Verificar Latência novamente quando a Rede Mudar';
	@override String get autoSelectServerUpdateCurrentServerAfterManualUrltest => 'Atualizar o Servidor Atual após Verificação de Latência Manual';
	@override String get autoSelectServerIntervalTips => 'Quanto mais curto o intervalo de tempo, mais atempadamente os dados de latência do servidor são atualizados, o que ocupará mais recursos e consumirá mais energia';
	@override String get autoSelectSelectedHealthCheckIntervalTips => 'Se a verificação falhar, o servidor é trocado; se nenhum servidor disponível for encontrado ao trocar de servidor, o grupo verificará a latência novamente';
	@override String get autoSelectServerFavFirst => 'Prioridade para [Meus Favoritos]';
	@override String get autoSelectServerFavFirstTips => 'Se a lista [Meus Favoritos] não estiver vazia, use os servidores em [Meus Favoritos]';
	@override String get autoSelectServerFilter => 'Filtrar Servidores Inválidos';
	@override String autoSelectServerFilterTips({required Object p}) => 'Verificações de latência de servidor que falhem serão filtradas; se nenhum servidor estiver disponível após a filtragem, os primeiros [${p}] servidores serão usados em vez disso';
	@override String get autoSelectServerLimitedNum => 'Número máximo de servidores';
	@override String get autoSelectServerLimitedNumTips => 'Servidores que excedam este número serão filtrados';
	@override String get numInvalid => 'Número inválido';
	@override String get hideInvalidServer => 'Ocultar Servidores Inválidos';
	@override String get sortServer => 'Ordenação de Servidores';
	@override String get sortServerTips => 'Ordenar por latência da menor para a maior';
	@override String get selectServerHideRecommand => 'Ocultar [Recomendado]';
	@override String get selectServerHideRecent => 'Ocultar [Usado Recentemente]';
	@override String get selectServerHideFav => 'Ocultar [Meus Favoritos]';
	@override String get homeScreen => 'Ecrã Inicial';
	@override String get theme => 'Tema';
	@override String get widgetsAlpha => 'Transparência dos Widgets';
	@override String get widgetsEmpty => 'Nenhum Widget Disponível';
	@override String get backgroundImage => 'Imagem de Fundo';
	@override String get myLink => 'Link de Atalho';
	@override String get autoConnectAfterLaunch => 'Ligação Automática após o Lançamento';
	@override String get autoConnectAtBoot => 'Ligação Automática após o Início do Sistema';
	@override String get autoConnectAtBootTips => 'O suporte do sistema é necessário; alguns sistemas também podem exigir que o [arranque automático] esteja ativado.';
	@override String get hideAfterLaunch => 'Ocultar janela após o arranque';
	@override String get autoSetSystemProxy => 'Configurar Proxy do Sistema Automaticamente quando Ligado';
	@override String get bypassSystemProxy => 'Nomes de domínio que têm permissão para ignorar o proxy do sistema';
	@override String get disconnectWhenQuit => 'Desligar quando a Aplicação Sair';
	@override String get autoAddToFirewall => 'Adicionar Regras de Firewall Automaticamente';
	@override String get excludeFromRecent => 'Ocultar de [Tarefas Recentes]';
	@override String get wakeLock => 'Bloqueio de Despertar';
	@override String get hideVpn => 'Ocultar Ícone de VPN';
	@override String get hideVpnTips => 'Ativar IPv6 fará com que esta função falhe';
	@override String get allowBypass => 'Permitir que Aplicações Ignorem a VPN';
	@override String get importSuccess => 'Importação com Sucesso';
	@override String get rewriteConfirm => 'Este ficheiro irá substituir a configuração local existente. Deseja continuar?';
	@override String get mergePerapp => 'Fundir listas locais de [${_root.PerAppAndroidScreen.title}]';
	@override String get networkShare => 'Partilha de Rede';
	@override String get frontProxy => 'Proxy Front/Chain';
	@override String frontProxyTips({required Object p}) => 'Dados->Servidor Proxy Front/Chain [Múltiplos Servidores Proxy: Cima para Baixo]->Servidor Proxy [${p}]->Servidor de Destino';
	@override String get allowOtherHostsConnect => 'Permitir que Outros se Liguem';
	@override String allowOtherHostsConnectTips({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}';
	@override String get allowOtherHostsConnectWarn => 'Devido a limitações do sistema, após isto ser ativado, as aplicações neste dispositivo que usem http para aceder à rede podem não conseguir ligar-se à rede corretamente.';
	@override String get tunAutoRoute => 'Rota automática';
	@override String get tunAutoRedirect => 'Redirecionamento automático';
	@override String get tunStrictRoute => 'Strict Route';
	@override String get tunStrictRouteTips => 'Se após ligar a partilha outros não conseguirem aceder a este dispositivo, por favor tente desligar este interruptor';
	@override String get loopbackAddress => 'Endereço de Loopback';
	@override String get enableCluster => 'Ativar Cluster de Proxy Socks/Http';
	@override String get clusterAllowOtherHostsConnect => 'Permitir que Outros se Liguem ao Cluster';
	@override String clusterAllowOtherHostsConnectTips({required Object ip, required Object port}) => 'http://${ip}:${port}/get_proxies';
	@override String get clusterAuth => 'Autenticação de Cluster de Proxy';
	@override String get tunMode => 'Modo TUN';
	@override String get tuni4Address => 'Endereço IP';
	@override String get tunModeTips => 'O modo TUN assumirá todo o tráfego do sistema [Neste modo, pode deixar o proxy do sistema desativado]';
	@override String get tunModeRunAsAdmin => 'O modo TUN requer permissões de administrador do sistema, por favor reinicie a aplicação como administrador';
	@override String get tunStack => 'Pilha';
	@override String get tunHijackTips => 'Após fechar, os pedidos DNS do TUN serão encaminhados diretamente para o servidor DNS correspondente';
	@override String get launchAtStartup => 'Lançar no Arranque';
	@override String get quitWhenSwitchSystemUser => 'Sair da Aplicação ao Trocar de Utilizador do Sistema';
	@override String get handleScheme => 'Chamada de Esquema do Sistema';
	@override String get portableMode => 'Modo Portátil';
	@override String get portableModeDisableTips => 'Se precisar de sair do modo portátil, por favor saia do [karing] e elimine manualmente a pasta [profiles] no mesmo diretório que [karing.exe]';
	@override String get accessibility => 'Acessibilidade';
	@override String get handleKaringScheme => 'Lidar com chamada karing://';
	@override String get handleClashScheme => 'Lidar com chamada clash://';
	@override String get handleSingboxScheme => 'Lidar com chamada sing-box://';
	@override String get alwayOnVPN => 'Ligação Sempre Ativa';
	@override String get disconnectAfterSleep => 'Desligar após a suspensão do sistema';
	@override String get removeSystemVPNConfig => 'Eliminar configuração de VPN do sistema';
	@override String get timeConnectOrDisconnect => 'Ligar/desligar agendado';
	@override String get timeConnectOrDisconnectTips => 'A VPN deve estar ligada para ter efeito; após ser ativada, a [Suspensão Automática] será desativada';
	@override String timeConnectAndDisconnectInterval({required Object p}) => 'O intervalo de ligação/desligamento não pode ser inferior a ${p} minutos';
	@override String get disableFontScaler => 'Desativar escala de fonte (O reinício tem efeito)';
	@override String get autoOrientation => 'Rodar com o ecrã';
	@override String get restartTakesEffect => 'O reinício tem efeito';
	@override String get reconnectTakesEffect => 'A religação tem efeito';
	@override String get resetSettings => 'Repor Definições';
	@override String get cleanCache => 'Limpar Cache';
	@override String get cleanCacheDone => 'Limpeza concluída';
	@override String get appleTestFlight => 'Apple TestFlight';
	@override String get appleAppStore => 'Apple AppStore';
	@override String hasNewVersion({required Object p}) => 'Atualizar Versão ${p}';
	@override String get follow => 'Siga-nos';
	@override String get contactUs => 'Contacte-nos';
	@override String get supportUs => 'Apoie-nos';
	@override String get rateInApp => 'Avalie-nos';
	@override String get rateInAppStore => 'Avalie-nos na AppStore';
}

// Path: UserAgreementScreen
class _TranslationsUserAgreementScreenPt implements TranslationsUserAgreementScreenEn {
	_TranslationsUserAgreementScreenPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get privacyFirst => 'A Sua Privacidade Vem Primeiro';
	@override String get agreeAndContinue => 'Aceitar e Continuar';
}

// Path: VersionUpdateScreen
class _TranslationsVersionUpdateScreenPt implements TranslationsVersionUpdateScreenEn {
	_TranslationsVersionUpdateScreenPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String versionReady({required Object p}) => 'A nova versão [${p}] está pronta';
	@override String get update => 'Reiniciar para Atualizar';
	@override String get cancel => 'Agora Não';
}

// Path: CommonWidget
class _TranslationsCommonWidgetPt implements TranslationsCommonWidgetEn {
	_TranslationsCommonWidgetPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get diableAlwayOnVPN => 'Se a [VPN sempre ligada] estiver ativada, por favor desligue a [VPN sempre ligada] e tente ligar-se novamente';
	@override String get resetPort => 'Por favor mude a porta para outra porta disponível ou feche a aplicação que está a ocupar a porta.';
}

// Path: main
class _TranslationsMainPt implements TranslationsMainEn {
	_TranslationsMainPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMainTrayPt tray = _TranslationsMainTrayPt._(_root);
}

// Path: meta
class _TranslationsMetaPt implements TranslationsMetaEn {
	_TranslationsMetaPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get enable => 'Ativar';
	@override String get disable => 'Desativar';
	@override String get bydefault => 'Predefinição';
	@override String get filter => 'Filtrar';
	@override String get filterMethod => 'Método de Filtragem';
	@override String get include => 'Incluir';
	@override String get exclude => 'Excluir';
	@override String get all => 'Todos';
	@override String get prefer => 'Preferir';
	@override String get only => 'Apenas';
	@override String get open => 'Abrir';
	@override String get close => 'Fechar';
	@override String get quit => 'Sair';
	@override String get add => 'Adicionar';
	@override String get addSuccess => 'Adicionado com sucesso';
	@override String addFailed({required Object p}) => 'Falha ao adicionar:${p}';
	@override String get remove => 'Remover';
	@override String get removeConfirm => 'Tem a certeza de que deseja eliminar?';
	@override String get edit => 'Editar';
	@override String get view => 'Ver';
	@override String get more => 'Mais';
	@override String get tips => 'Informação';
	@override String get copy => 'Copiar';
	@override String get paste => 'Colar';
	@override String get cut => 'Corte';
	@override String get save => 'Guardar';
	@override String get ok => 'Ok';
	@override String get cancel => 'Cancelar';
	@override String get feedback => 'Feedback';
	@override String get feedbackContent => 'Conteúdo do Feedback';
	@override String get feedbackContentHit => 'Obrigatório, até 500 caracteres';
	@override String get feedbackContentCannotEmpty => 'O conteúdo do feedback não pode estar vazio';
	@override String get faq => 'FAQ';
	@override String get htmlTools => 'Conjunto de Ferramentas HTML';
	@override String get download => 'Descarregar';
	@override String get upload => 'Carregar';
	@override String get downloadSpeed => 'Velocidade de Descarregamento';
	@override String get uploadSpeed => 'Velocidade de Carregamento';
	@override String get loading => 'A carregar...';
	@override String get convert => 'Converter';
	@override String get check => 'Verificar';
	@override String get detect => 'Detetar';
	@override String get cache => 'Cache';
	@override String get days => 'Dias';
	@override String get hours => 'Horas';
	@override String get minutes => 'Minutos';
	@override String get seconds => 'Segundos';
	@override String get milliseconds => 'Milissegundos';
	@override String get tolerance => 'Tolerância';
	@override String get dateTimePeriod => 'Período de tempo';
	@override String get protocol => 'Protocolo';
	@override String get search => 'Procurar';
	@override String get custom => 'Personalizado';
	@override String get inbound => 'Entrada';
	@override String get outbound => 'Saída';
	@override String get destination => 'Destino';
	@override String get outletIpByCurrentSelected => 'IP';
	@override String get outletIpByDirect => 'IP:${_root.outboundRuleMode.direct}';
	@override String get connect => 'Ligar';
	@override String get disconnect => 'Desligar';
	@override String get reconnect => 'Religar';
	@override String get connected => 'Ligado';
	@override String get disconnected => 'Desligado';
	@override String get connecting => 'A ligar';
	@override String get connectTimeout => 'Tempo de Ligação Esgotado';
	@override String get timeout => 'Tempo Esgotado';
	@override String get timeoutDuration => 'Duração do Tempo Esgotado';
	@override String get runDuration => 'Duração da Execução';
	@override String get latency => 'Latência';
	@override String get latencyTest => 'Verificações de Latência';
	@override String get language => 'Idioma';
	@override String get next => 'Seguinte';
	@override String get done => 'Concluído';
	@override String get apply => 'Aplicar';
	@override String get refresh => 'Atualizar';
	@override String get retry => 'Tentar novamente?';
	@override String get update => 'Atualizar';
	@override String get updateInterval => 'Intervalo de atualização';
	@override String get updateInterval5mTips => 'Mínimo: 5m';
	@override String updateFailed({required Object p}) => 'Falha na atualização:${p}';
	@override String get samplingUnit => 'Unidade de Tempo de Amostragem';
	@override String get queryResultCount => 'Número de Resultados da Consulta';
	@override String queryLimit({required Object p}) => 'Mostrar até ${p} dados';
	@override String get none => 'Nenhum';
	@override String get start => 'Iniciar';
	@override String get pause => 'Pausa';
	@override String get reset => 'Repor';
	@override String get submit => 'Submeter';
	@override String get user => 'Utilizador';
	@override String get account => 'Conta';
	@override String get password => 'Palavra-passe';
	@override String get required => 'Obrigatório';
	@override String get type => 'Tipo';
	@override String get path => 'Caminho';
	@override String get local => 'Local';
	@override String get remote => 'Remoto';
	@override String get other => 'Outro';
	@override String get dns => 'DNS';
	@override String get url => 'URL';
	@override String get urlInvalid => 'URL Inválido';
	@override String get urlCannotEmpty => 'Link não pode estar vazio';
	@override String get urlTooLong => 'URL é demasiado longo (>8182)';
	@override String get copyUrl => 'Copiar Link';
	@override String get openUrl => 'Abrir Link';
	@override String get shareUrl => 'Partilhar Link';
	@override String get speedTestUrl => 'URL de Teste de Velocidade';
	@override String get tls => 'TLS';
	@override String get userAgent => 'UserAgent';
	@override String get staticIP => 'IP Estático';
	@override String get staticIPTips => 'Precisa de ativar [TUN HijackDNS] ou [${_root.SettingsScreen.inboundDomainResolve}].';
	@override String get isp => 'Fornecedor de VPN';
	@override String get domainSuffix => 'Sufixo de Domínio';
	@override String get domain => 'Domínio';
	@override String get domainKeyword => 'Palavra-chave de Domínio';
	@override String get domainRegex => 'Regex de Domínio';
	@override String get ip => 'IP';
	@override String get port => 'Porta';
	@override String get portRange => 'Intervalo de portas';
	@override String get appPackage => 'Id de Pacote de Aplicação';
	@override String get processName => 'Nome do Processo';
	@override String get processPath => 'Caminho do Processo';
	@override String get processDir => 'Diretório do Processo';
	@override String get systemProxy => 'Proxy do Sistema';
	@override String get percentage => 'Percentagem';
	@override String get statistics => 'Estatísticas';
	@override String get statisticsAndAnalysis => 'Estatísticas e Análise';
	@override String get statisticsDataDesensitize => 'Desensibilização de Dados';
	@override String get statisticsDataDesensitizeTips => 'Processo/id do pacote/nome do domínio de destino/IP de destino etc. serão substituídos por * e guardados após a desensibilização';
	@override String get records => 'Registos';
	@override String get requestRecords => 'Registos de Pedidos';
	@override String get netInterfaces => 'Interfaces de Rede';
	@override String get netSpeed => 'Velocidade';
	@override String get memoryTrendChart => 'Gráfico de Tendência de Memória';
	@override String get goroutinesTrendChart => 'Gráfico de Tendência de GoRoutines';
	@override String get trafficTrendChart => 'Gráfico de Tendência de Tráfego';
	@override String get trafficDistributionChart => 'Gráfico de Distribuição de Tráfego';
	@override String get connectionChart => 'Gráfico de Tendência de Ligação';
	@override String get memoryChart => 'Gráfico de Tendência de Memória';
	@override String get trafficStatistics => 'Estatísticas de tráfego';
	@override String get traffic => 'Tráfego';
	@override String get trafficTotal => 'Tráfego Total';
	@override String get trafficProxy => 'Tráfego Proxy';
	@override String get trafficDirect => 'Tráfego Direto';
	@override String get website => 'Website';
	@override String get memory => 'Memória';
	@override String get outboundMode => 'Modo de Saída';
	@override String get rule => 'Regra';
	@override String get global => 'Global';
	@override String get qrcode => 'Código QR';
	@override String get qrcodeTooLong => 'O texto é demasiado longo para ser exibido';
	@override String get qrcodeShare => 'Partilhar Código QR';
	@override String get textToQrcode => 'Texto para Código QR';
	@override String get qrcodeScan => 'Digitalizar Código QR';
	@override String get qrcodeScanResult => 'Resultado da Digitalização';
	@override String get qrcodeScanFromImage => 'Digitalizar de Imagem';
	@override String get qrcodeScanResultFailed => 'Falha ao analisar a imagem, por favor certifique-se de que a captura de ecrã é um código QR válido';
	@override String get qrcodeScanResultEmpty => 'O resultado da digitalização está vazio';
	@override String get screenshot => 'Captura de ecrã';
	@override String get backupAndSync => 'Cópia de Segurança e Sincronização';
	@override String get autoBackup => 'Cópia de segurança automática';
	@override String get noProfileGotAutoBackup => 'Se dados como [${_root.meta.myProfiles}] forem perdidos, pode restaurá-los de [${_root.meta.backupAndSync}-${_root.meta.autoBackup}] ou de outras fontes de cópia de segurança (como iCloud ou Webdav, etc.)';
	@override String get autoBackupAddProfile => 'Após adicionar o Perfil';
	@override String get autoBackupRemoveProfile => 'Após eliminar o Perfil';
	@override String get profile => 'Perfil';
	@override String get currentProfile => 'Perfil Atual';
	@override String get importAndExport => 'Importar e Exportar';
	@override String get import => 'Importar';
	@override String get importFromUrl => 'Importar de URL';
	@override String get export => 'Exportar';
	@override String get send => 'Enviar';
	@override String get receive => 'Receber';
	@override String get sendConfirm => 'Confirmar envio?';
	@override String get termOfUse => 'Termos de Serviço';
	@override String get privacyPolicy => 'Privacidade e Política';
	@override String get about => 'Sobre';
	@override String get name => 'Nome';
	@override String get version => 'Versão';
	@override String get notice => 'Aviso';
	@override String appNotifyWithReason({required Object p, required Object p1}) => 'Ação:${p}\nRazão:${p1}';
	@override String get sort => 'Reordenar';
	@override String get novice => 'Modo Iniciante';
	@override String get willCompleteAfterRebootInstall => 'Por favor reinicie o seu dispositivo para concluir a instalação da extensão do sistema';
	@override String get willCompleteAfterRebootUninstall => 'Por favor reinicie o seu dispositivo para concluir a desinstalação da extensão do sistema';
	@override String get requestNeedsUserApproval => '1. Por favor [Permitir] que o Karing instale extensões do sistema em [Definições do Sistema]-[Privacidade e Segurança]\n2. [Definições do Sistema]-[Geral]-[Itens de Início Extensões]-[Extensão de Rede] ativar [karingServiceSE]\nreligar após a conclusão';
	@override String get FullDiskAccessPermissionRequired => 'Por favor ative a permissão [karingServiceSE] em [Definições do Sistema]-[Privacidade e Segurança]-[Permissão de Acesso Total ao Disco] e religue';
	@override String get tvMode => 'Modo TV';
	@override String get recommended => 'Recomendado';
	@override String innerError({required Object p}) => 'Erro Interno:${p}';
	@override String get logicOperation => 'Operação Lógica';
	@override String get share => 'Partilhar';
	@override String get candidateWord => 'Palavras Candidatas';
	@override String get keywordOrRegx => 'Palavras-chave/Regular';
	@override String get importFromClipboard => 'Importar da Área de Transferência';
	@override String get exportToClipboard => 'Exportar para a Área de Transferência';
	@override String get server => 'Servidor';
	@override String get ads => 'Anúncios';
	@override String get adsRemove => 'Remover anúncios';
	@override String get donate => 'Doar';
	@override String get diversion => 'Desvio';
	@override String get diversionRules => 'Regras de Desvio';
	@override String get diversionCustomGroup => 'Grupo de Desvio Personalizado';
	@override String get urlTestCustomGroup => 'Seleção Automática Personalizada';
	@override String get setting => 'Definições';
	@override String get iCloud => 'iCloud';
	@override String get appleTV => 'Apple TV';
	@override String get webdav => 'Webdav';
	@override String get lanSync => 'Sincronização LAN';
	@override String get lanSyncNotQuitTips => 'Não saia desta interface antes de a sincronização estar concluída';
	@override String get deviceNoSpace => 'Espaço em disco insuficiente';
	@override String get hideSystemApp => 'Ocultar Aplicações do Sistema';
	@override String get hideAppIcon => 'Ocultar Ícones de Aplicações';
	@override String get hideDockIcon => 'Ocultar Ícone da Dock';
	@override String get remark => 'Observação';
	@override String get remarkExist => 'A observação já existe, por favor use outro nome';
	@override String get remarkCannotEmpty => 'As observações não podem estar vazias';
	@override String get remarkTooLong => 'Observações até 32 caracteres';
	@override String get openDir => 'Abrir Diretório de Ficheiros';
	@override String get fileChoose => 'Selecionar Ficheiro';
	@override String get filePathCannotEmpty => 'O caminho do ficheiro não pode estar vazio';
	@override String fileNotExist({required Object p}) => 'O ficheiro não existe:${p}';
	@override String fileTypeInvalid({required Object p}) => 'Tipo de ficheiro inválido:${p}';
	@override String get uwpExemption => 'Isenções de Isolamento de Rede UWP';
	@override String get rulesetGeoSite => 'GeoSite';
	@override String get rulesetGeoIp => 'GeoIP';
	@override String get rulesetAcl => 'ACL';
	@override String get getProfile => 'Obter Perfil';
	@override String get addProfile => 'Adicionar Perfil';
	@override String get myProfiles => 'Meus Perfis';
	@override String get profileEdit => 'Editar Perfil';
	@override String get profileEditUrlExist => 'O URL já existe, por favor use outro URL';
	@override String get profileEditReloadAfterProfileUpdate => 'Recarregar após atualização do Perfil';
	@override String get profileEditTestLatencyAfterProfileUpdate => 'Iniciar testes de latência após atualização automática do Perfil';
	@override String get profileEditTestLatencyAfterProfileUpdateTips => 'A VPN precisa de estar ligada e [Recarregar após atualização do Perfil] Ativado';
	@override String get profileEditTestLatencyAutoRemove => 'Remover automaticamente servidores que falhem nos testes de latência';
	@override String get profileEditTestLatencyAutoRemoveTips => 'Tentar até 3 vezes';
	@override String get profileImport => 'Importar Ficheiro de Perfil';
	@override String get profileAddUrlOrContent => 'Adicionar Link de Perfil';
	@override String get profileExists => 'O Perfil já existe, por favor não o adicione repetidamente';
	@override String get profileUrlOrContent => 'Link/Conteúdo do Perfil';
	@override String get profileUrlOrContentHit => 'Link/Conteúdo do Perfil [Obrigatório] (Suporta links de Perfil Clash, V2ray(suportado em lote), Stash, Karing, Sing-box, Shadowsocks, Sub)';
	@override String get profileUrlOrContentCannotEmpty => 'O link do Perfil não pode estar vazio';
	@override String profileAddFailedFormatException({required Object p}) => 'O formato está errado, por favor corrija-o e adicione-o novamente:${p}';
	@override String profileAddFailedThenDownloadAndImport({required Object p}) => 'Falha ao adicionar: ${p}, por favor tente modificar o [UserAgent] e tente novamente, ou use o navegador integrado do dispositivo para abrir o link de configuração e importar o ficheiro de configuração descarregado pelo navegador para esta aplicação';
	@override String profileAddFailedHandshakeException({required Object p}) => 'Falha ao adicionar: ${p}, por favor ligue o proxy ou modifique o nó proxy atual e tente novamente';
	@override String get profileAddParseFailed => 'Falha ao analisar o Perfil';
	@override String get profileAddNoServerAvaliable => 'Nenhum servidor disponível, certifique-se de que o Link do Perfil ou o Ficheiro do Perfil é válido; se o seu Perfil vier do GitHub, por favor obtenha o link do botão [Raw] na página';
	@override String get profileAddWrapSuccess => 'Perfil gerado com sucesso, por favor vá a [${_root.meta.myProfiles}] para ver';
}

// Path: isp
class _TranslationsIspPt implements TranslationsIspEn {
	_TranslationsIspPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get bind => 'Vincular a [${_root.meta.isp}] ';
	@override String unbind({required Object p}) => 'Desvincular[${p}]';
	@override String faq({required Object p}) => 'FAQ[${p}]';
	@override String customerService({required Object p}) => 'Telegram[${p}]';
	@override String follow({required Object p}) => 'Seguir[${p}]';
	@override String get invalidOrExpired => '[${_root.meta.isp}] Inválido ou expirado';
}

// Path: permission
class _TranslationsPermissionPt implements TranslationsPermissionEn {
	_TranslationsPermissionPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get camera => 'Câmara';
	@override String get screen => 'Gravação de Ecrã';
	@override String get appQuery => 'Obter Lista de Aplicações';
	@override String request({required Object p}) => 'Ativar permissão [${p}]';
	@override String requestNeed({required Object p}) => 'Por favor Ative a permissão [${p}]';
}

// Path: tls
class _TranslationsTlsPt implements TranslationsTlsEn {
	_TranslationsTlsPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get insecure => 'Saltar Verificação de Certificado';
	@override String get affectProtocolTips => 'vless, vmess, trojan';
	@override String get fragmentEnable => 'Ativar Fragmento TLS';
	@override String get fragmentSize => 'Tamanho do Fragmento TLS';
	@override String get fragmentSleep => 'Pausa do Fragmento TLS';
	@override String get mixedCaseSNIEnable => 'Ativar SNI de Caixa Mista TLS';
	@override String get paddingEnable => 'Ativar Preenchimento TLS';
	@override String get paddingSize => 'Tamanho do Preenchimento TLS';
}

// Path: outboundRuleMode
class _TranslationsOutboundRuleModePt implements TranslationsOutboundRuleModeEn {
	_TranslationsOutboundRuleModePt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get currentSelected => 'Selecionado Atualmente';
	@override String get urltest => 'Seleção Automática';
	@override String get direct => 'Direto';
	@override String get block => 'Bloquear';
}

// Path: dnsProxyResolveMode
class _TranslationsDnsProxyResolveModePt implements TranslationsDnsProxyResolveModeEn {
	_TranslationsDnsProxyResolveModePt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get proxy => _root.outboundRuleMode.currentSelected;
	@override String get direct => _root.outboundRuleMode.direct;
	@override String get fakeip => 'FakeIP';
}

// Path: proxyStrategy
class _TranslationsProxyStrategyPt implements TranslationsProxyStrategyEn {
	_TranslationsProxyStrategyPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get perferProxy => '${_root.meta.prefer} ${_root.outboundRuleMode.currentSelected}';
	@override String get perferDirect => '${_root.meta.prefer} ${_root.outboundRuleMode.direct}';
	@override String get onlyProxy => '${_root.meta.only} ${_root.outboundRuleMode.currentSelected}';
	@override String get onlyDirect => '${_root.meta.only} ${_root.outboundRuleMode.direct}';
}

// Path: reloadReason
class _TranslationsReloadReasonPt implements TranslationsReloadReasonEn {
	_TranslationsReloadReasonPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get latencyTest => '${_root.meta.latencyTest}-${_root.meta.profileEditTestLatencyAutoRemove}';
	@override String get profileUpdate => 'Atualização do Perfil';
}

// Path: theme
class _TranslationsThemePt implements TranslationsThemeEn {
	_TranslationsThemePt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get light => 'Claro';
	@override String get dark => 'Escuro';
	@override String get auto => 'Automático';
}

// Path: main.tray
class _TranslationsMainTrayPt implements TranslationsMainTrayEn {
	_TranslationsMainTrayPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get menuOpen => 'Abrir';
	@override String get menuExit => 'Sair';
}

/// The flat map containing all translations for locale <pt>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsPt {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'AboutScreen.installRefer' => 'Referência de Instalação',
			'AboutScreen.installTime' => 'Hora de Instalação',
			'AboutScreen.versionChannel' => 'Canal de Atualização Automática',
			'AboutScreen.updateWhenConnected' => 'Verifique se há atualizações após ligar',
			'AboutScreen.autoDownloadPkg' => 'Descarregar Pacotes de Atualização Automaticamente',
			'AboutScreen.disableAppImproveData' => 'Dados de Melhoria da Aplicação',
			'AboutScreen.disableUAReportTip' => 'Ativar [${_root.AboutScreen.disableAppImproveData}] ajuda-nos a melhorar a estabilidade e usabilidade do produto; não recolhemos nenhuns dados de privacidade pessoal. Desativar impedirá a aplicação de recolher quaisquer dados.',
			'AboutScreen.devOptions' => 'Opções de Programador',
			'AboutScreen.enableDebugLog' => 'Ativar Registo de Depuração',
			'AboutScreen.viewFilsContent' => 'Ver Ficheiros',
			'AboutScreen.enablePprof' => 'Ativar pprof',
			'AboutScreen.pprofPanel' => 'Painel pprof',
			'AboutScreen.allowRemoteAccessPprof' => 'Permitir acesso remoto ao ${_root.AboutScreen.pprofPanel}',
			'AboutScreen.allowRemoteAccessHtmlBoard' => 'Permitir acesso remoto ao ${_root.SettingsScreen.htmlBoard}',
			'AboutScreen.useOriginalSBProfile' => 'Usar Perfil sing-box original',
			'BackupAndSyncWebdavScreen.webdavServerUrl' => 'URL do Servidor',
			'BackupAndSyncWebdavScreen.webdavRequired' => 'Não pode estar vazio',
			'BackupAndSyncWebdavScreen.webdavLoginFailed' => 'Falha no login:',
			'BackupAndSyncWebdavScreen.webdavListFailed' => 'Falha ao obter lista de ficheiros:',
			'DiversionGroupCustomEditScreen.invalidDomain' => ({required Object p}) => '[Domínio] inválido:${p}',
			'DiversionGroupCustomEditScreen.invalidIpCidr' => ({required Object p}) => '[IP Cidr] inválido:${p}',
			'DiversionGroupCustomEditScreen.invalid' => ({required Object p0, required Object p}) => 'Inválido [${p0}]:${p}',
			'DiversionGroupCustomEditScreen.invalidRuleSet' => ({required Object p}) => '[Conjunto de Regras] inválido:${p}, O URL deve ser um URL https válido e um ficheiro binário com a extensão .srs/.json',
			'DiversionGroupCustomEditScreen.invalidRuleSetBuildIn' => ({required Object p}) => '[Conjunto de Regras (integrado)] inválido:${p}, O formato é geosite:xxx ou geoip:xxx ou acl:xxx, e xxx deve ser um nome de regra válido',
			'DiversionGroupCustomEditScreen.invalidPackageId' => ({required Object p}) => '[${_root.meta.appPackage}] inválido:${p}',
			'DiversionGroupCustomEditScreen.setDiversionRule' => 'Dica: Após guardar, vá a [${_root.meta.diversionRules}] para definir as regras relevantes, caso contrário não terão efeito',
			'DiversionRuleDetectScreen.title' => 'Deteção de Regras de Desvio',
			'DiversionRuleDetectScreen.rule' => 'Regra:',
			'DiversionRuleDetectScreen.outbound' => 'Servidor Proxy:',
			'DiversionRulesScreen.diversionRulesMatchTips' => 'Dica: Tente fazer corresponder as regras de cima para baixo. Se nenhuma regra corresponder, use [final]',
			'DnsSettingsScreen.ispCanNotEmpty' => 'O ISP não pode estar vazio',
			'DnsSettingsScreen.urlCanNotEmpty' => 'O URL não pode estar vazio',
			'DnsSettingsScreen.error' => ({required Object p}) => 'Tipo não suportado:${p}',
			'DnsSettingsScreen.dnsDesc' => 'A primeira coluna de dados de atraso é o atraso da consulta de ligação direta;\nA segunda coluna: Ative [[Tráfego Proxy]Resolver DNS através do servidor proxy]: os dados de atraso são o atraso da consulta encaminhado através do servidor proxy atual; se [[Tráfego Proxy]Resolver DNS através do servidor proxy] estiver desativado: Os dados de atraso são o atraso da consulta de ligação direta',
			'FileContentViewerScreen.title' => 'Visualizador de Conteúdo de Ficheiro',
			'FileContentViewerScreen.clearFileContent' => 'Tem a certeza de que deseja limpar o conteúdo do ficheiro?',
			'FileContentViewerScreen.clearFileContentTips' => 'Tem a certeza de que deseja limpar o conteúdo do ficheiro de Perfil? Limpar o ficheiro de Perfil pode causar perda de dados ou funções anormais da aplicação, por favor opere com cautela',
			'HomeScreen.toSelectServer' => 'Por favor Selecione um Servidor',
			'HomeScreen.invalidServer' => 'é inválido, por favor selecione novamente',
			'HomeScreen.disabledServer' => 'está desativado, por favor selecione novamente',
			'HomeScreen.expiredServer' => 'Nenhum servidor disponível, os perfis podem estar expirados ou desativados',
			'HomeScreen.systemProxyTips' => ({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}',
			'HomeScreen.myLinkEmpty' => 'Por favor configure o [Link de Atalho] antes de o usar',
			'HomeScreen.tooMuchServers' => ({required Object p, required Object p1}) => 'Demasiados servidores proxy [${p}>${p1}], e a ligação pode falhar devido a limitações de memória do sistema',
			'HomeScreen.tooMuchServers2' => ({required Object p, required Object p1}) => 'Demasiados servidores proxy [${p}>${p1}] podem causar ligações lentas ou inacessíveis',
			'LaunchFailedScreen.invalidProcess' => 'A aplicação falhou ao iniciar [Nome de processo inválido], por favor reinstale a aplicação num diretório separado',
			'LaunchFailedScreen.invalidProfile' => 'A aplicação falhou ao iniciar [Falha ao aceder ao perfil], por favor reinstale a aplicação',
			'LaunchFailedScreen.invalidVersion' => 'A aplicação falhou ao iniciar [Versão inválida], por favor reinstale a aplicação',
			'LaunchFailedScreen.systemVersionLow' => 'A aplicação falhou ao iniciar [versão do sistema demasiado baixa]',
			'LaunchFailedScreen.invalidInstallPath' => 'O caminho de instalação é inválido, por favor reinstale-a num caminho válido',
			'MyProfilesMergeScreen.profilesMerge' => 'Fusão de Perfis',
			'MyProfilesMergeScreen.profilesMergeTarget' => 'Perfil de Destino',
			'MyProfilesMergeScreen.profilesMergeSource' => 'Perfis de Origem',
			'MyProfilesMergeScreen.profilesMergeTips' => 'Dica: O desvio dos perfis de origem será descartado',
			'NetCheckScreen.title' => 'Verificação de Rede',
			'NetCheckScreen.warn' => 'Nota: Devido à influência do ambiente de rede e das regras de desvio, os resultados do teste não são completamente equivalentes aos resultados reais.',
			'NetCheckScreen.invalidDomain' => 'Nome de Domínio Inválido',
			'NetCheckScreen.connectivity' => 'Conetividade de Rede',
			'NetCheckScreen.connectivityTestIpv4AllFailed' => ({required Object p}) => 'Teste de ligação Ipv4 [${p}] falhou em todos',
			'NetCheckScreen.connectivityTestIpv4Ok' => 'Ligação Ipv4 bem-sucedida',
			'NetCheckScreen.connectivityTestIpv6AllFailed' => ({required Object p}) => 'Teste de ligação Ipv6 [${p}] falhou em todos, a sua rede pode não suportar ipv6',
			'NetCheckScreen.connectivityTestIpv6Ok' => 'Ligação Ipv6 bem-sucedida',
			'NetCheckScreen.connectivityTestOk' => 'A rede está ligada à Internet',
			'NetCheckScreen.connectivityTestFailed' => 'A rede ainda não está ligada à Internet',
			'NetCheckScreen.remoteRulesetsDownloadOk' => 'Todos descarregados com sucesso',
			'NetCheckScreen.remoteRulesetsDownloadNotOk' => 'A descarregar ou falha no descarregamento',
			'NetCheckScreen.outbound' => 'Servidor Proxy',
			'NetCheckScreen.outboundOk' => ({required Object p}) => 'Ligação [${p}] bem-sucedida',
			'NetCheckScreen.outboundFailed' => ({required Object p1, required Object p2}) => 'Ligação [${p1}] falhou\nErro:[${p2}]',
			'NetCheckScreen.dnsServer' => 'Servidor DNS',
			'NetCheckScreen.dnsOk' => ({required Object p1, required Object p2, required Object p3, required Object p4}) => 'Consulta DNS [${p1}] bem-sucedida\nRegra DNS:[${p2}]\nLatência:[${p3} ms]\nEndereço:[${p4}]',
			'NetCheckScreen.dnsFailed' => ({required Object p1, required Object p2, required Object p3}) => 'Consulta DNS [${p1}] bem-sucedida\n nRegra DNS:[${p2}]\nErro:[${p3}]',
			'NetCheckScreen.host' => 'Ligação HTTP',
			'NetCheckScreen.hostConnection' => ({required Object p1, required Object p2, required Object p3}) => '[${p1}]\nRegra de Desvio:[${p2}]\nServidor Proxy:[${p3}]',
			'NetCheckScreen.hostConnectionOk' => 'ligação bem-sucedida',
			'NetCheckScreen.hostConnectionFailed' => ({required Object p}) => 'falha na ligação:[${p}]',
			'NetConnectionsFilterScreen.hostIp' => 'Domínio/IP',
			'NetConnectionsFilterScreen.app' => 'Aplicação',
			'NetConnectionsFilterScreen.rule' => 'Regra',
			'NetConnectionsFilterScreen.chain' => 'Saída',
			'NetConnectionsScreen.copyAsCSV' => 'Copiado para formato CSV',
			'NetConnectionsScreen.selectType' => 'Selecionar Tipo de Desvio',
			'PerAppAndroidScreen.title' => 'Proxy por Aplicação',
			'PerAppAndroidScreen.whiteListMode' => 'Modo Whitelist',
			'PerAppAndroidScreen.whiteListModeTip' => 'Quando ativado: apenas as aplicações marcadas são proxies; quando não ativado: apenas as aplicações não marcadas são proxies',
			'RegionSettingsScreen.title' => 'País ou Região',
			'RegionSettingsScreen.Regions' => 'Dica: Por favor configure o seu país ou região atual corretamente, caso contrário pode causar problemas de desvio de rede',
			'ServerSelectScreen.title' => 'Selecionar Servidor',
			'ServerSelectScreen.autoSelectServer' => 'Selecionar automaticamente o servidor com a latência mais baixa',
			'ServerSelectScreen.recentUse' => 'Usado Recentemente',
			'ServerSelectScreen.myFav' => 'Meus Favoritos',
			'ServerSelectScreen.selectLocal' => ({required Object p}) => 'O servidor selecionado é um endereço local e pode não funcionar corretamente:${p}',
			'ServerSelectScreen.selectRequireEnableIPv6' => 'O servidor selecionado é um endereço IPv6 e requer [Ativar IPv6]',
			'ServerSelectScreen.selectDisabled' => 'Este servidor foi desativado',
			'ServerSelectScreen.error404' => 'Deteção de latência encontrou um erro, por favor verifique se existe uma configuração com o mesmo conteúdo',
			'SettingsScreen.getTranffic' => 'Obter Tráfego',
			'SettingsScreen.tutorial' => 'Tutorial',
			'SettingsScreen.commonlyUsedRulesets' => 'Conjuntos de Regras Comuns',
			'SettingsScreen.htmlBoard' => 'Painel Online',
			'SettingsScreen.dnsLeakDetection' => 'Deteção de Fugas de DNS',
			'SettingsScreen.proxyLeakDetection' => 'Deteção de Fugas de Proxy',
			'SettingsScreen.speedTest' => 'Teste de Velocidade',
			'SettingsScreen.rulesetDirectDownlad' => 'Descarregamento Direto de Conjunto de Regras',
			'SettingsScreen.hideUnusedDiversionGroup' => 'Ocultar Regras de Desvio Não Utilizadas',
			'SettingsScreen.disableISPDiversionGroup' => 'Desativar [${_root.meta.diversionRules}] de [${_root.meta.isp}]',
			'SettingsScreen.portSettingRule' => 'Baseado em Regras',
			'SettingsScreen.portSettingDirectAll' => 'Direto para Todos',
			'SettingsScreen.portSettingProxyAll' => 'Proxy para Todos',
			'SettingsScreen.portSettingControl' => 'Controlo e Sincronização',
			'SettingsScreen.portSettingCluster' => 'Serviço de Cluster',
			'SettingsScreen.modifyPort' => 'Modificar Porta',
			'SettingsScreen.modifyPortOccupied' => 'A porta está ocupada, por favor use outra porta',
			'SettingsScreen.ipStrategyTips' => 'Antes de ativar, confirme que a sua rede suporta IPv6, caso contrário algum tráfego não poderá ser acedido normalmente.',
			'SettingsScreen.tunAppendHttpProxy' => 'Anexar Proxy HTTP a VPN',
			'SettingsScreen.tunAppendHttpProxyTips' => 'Algumas aplicações ignoram o Dispositivo NIC virtual e ligam-se diretamente ao proxy HTTP',
			'SettingsScreen.tunAllowBypassHttpProxyDomain' => 'Domínios permitidos para ignorar o proxy HTTP',
			'SettingsScreen.dnsEnableRule' => 'Ativar regras de Desvio de DNS',
			'SettingsScreen.dnsEnableProxyResolveMode' => 'Canal de Resolução de [${_root.meta.trafficProxy}]',
			'SettingsScreen.dnsEnableClientSubnet' => 'Ativar ECS em [${_root.meta.trafficDirect}]',
			'SettingsScreen.dnsTestDomain' => 'Domínio de Teste',
			'SettingsScreen.dnsTestDomainInvalid' => 'Domínio Inválido',
			'SettingsScreen.dnsTypeOutbound' => 'Servidor Proxy',
			'SettingsScreen.dnsTypeDirect' => _root.meta.trafficDirect,
			'SettingsScreen.dnsTypeProxy' => _root.meta.trafficProxy,
			'SettingsScreen.dnsTypeResolver' => 'Servidor DNS',
			'SettingsScreen.dnsEnableRuleTips' => 'Após ativar, o nome de domínio selecionará o servidor DNS correspondente para resolução de acordo com as regras de desvio',
			'SettingsScreen.dnsEnableFakeIpTips' => 'Após ativar FakeIP, se se desligar da VPN, a sua aplicação pode precisar de ser reiniciada; esta funcionalidade requer que o [Modo TUN] esteja ativado',
			'SettingsScreen.dnsTypeOutboundTips' => 'Resolução de nome de domínio para [${_root.SettingsScreen.dnsTypeOutbound}]',
			'SettingsScreen.dnsTypeDirectTips' => 'Resolução de nome de domínio para [${_root.meta.trafficDirect}]',
			'SettingsScreen.dnsTypeProxyTips' => 'Resolução de nome de domínio para [${_root.meta.trafficProxy}]',
			'SettingsScreen.dnsTypeResolverTips' => 'Resolução de nome de domínio para [${_root.SettingsScreen.dnsTypeResolver}]',
			'SettingsScreen.dnsAutoSetServer' => 'Configuração Automática do Servidor',
			'SettingsScreen.dnsResetServer' => 'Repor Servidor',
			'SettingsScreen.inboundDomainResolve' => 'Resolver nomes de Domínio de Entrada',
			'SettingsScreen.privateDirect' => 'Ligação direta de Rede Privada',
			'SettingsScreen.inboundDomainResolveTips' => ({required Object p}) => 'Alguns nomes de domínio que não estão configurados com regras de desvio precisam de ser resolvidos antes de poderem atingir as regras de desvio baseadas em IP; esta funcionalidade afeta pedidos de entrada na porta proxy [${p}]',
			'SettingsScreen.useRomoteRes' => 'Usar Recursos Remotos',
			'SettingsScreen.autoAppendRegion' => 'Anexar automaticamente regras básicas',
			'SettingsScreen.autoSelect' => 'Seleção Automática',
			'SettingsScreen.autoSelectServerIgnorePerProxyServer' => 'Ignorar servidores Proxy [Front/Chain]',
			'SettingsScreen.autoSelectServerInterval' => 'Intervalo de Verificações de Latência',
			'SettingsScreen.autoSelectSelectedHealthCheckInterval' => 'Intervalo de verificação de integridade do servidor atual',
			'SettingsScreen.autoSelectServerReTestIfNetworkUpdate' => 'Verificar Latência novamente quando a Rede Mudar',
			'SettingsScreen.autoSelectServerUpdateCurrentServerAfterManualUrltest' => 'Atualizar o Servidor Atual após Verificação de Latência Manual',
			'SettingsScreen.autoSelectServerIntervalTips' => 'Quanto mais curto o intervalo de tempo, mais atempadamente os dados de latência do servidor são atualizados, o que ocupará mais recursos e consumirá mais energia',
			'SettingsScreen.autoSelectSelectedHealthCheckIntervalTips' => 'Se a verificação falhar, o servidor é trocado; se nenhum servidor disponível for encontrado ao trocar de servidor, o grupo verificará a latência novamente',
			'SettingsScreen.autoSelectServerFavFirst' => 'Prioridade para [Meus Favoritos]',
			'SettingsScreen.autoSelectServerFavFirstTips' => 'Se a lista [Meus Favoritos] não estiver vazia, use os servidores em [Meus Favoritos]',
			'SettingsScreen.autoSelectServerFilter' => 'Filtrar Servidores Inválidos',
			'SettingsScreen.autoSelectServerFilterTips' => ({required Object p}) => 'Verificações de latência de servidor que falhem serão filtradas; se nenhum servidor estiver disponível após a filtragem, os primeiros [${p}] servidores serão usados em vez disso',
			'SettingsScreen.autoSelectServerLimitedNum' => 'Número máximo de servidores',
			'SettingsScreen.autoSelectServerLimitedNumTips' => 'Servidores que excedam este número serão filtrados',
			'SettingsScreen.numInvalid' => 'Número inválido',
			'SettingsScreen.hideInvalidServer' => 'Ocultar Servidores Inválidos',
			'SettingsScreen.sortServer' => 'Ordenação de Servidores',
			'SettingsScreen.sortServerTips' => 'Ordenar por latência da menor para a maior',
			'SettingsScreen.selectServerHideRecommand' => 'Ocultar [Recomendado]',
			'SettingsScreen.selectServerHideRecent' => 'Ocultar [Usado Recentemente]',
			'SettingsScreen.selectServerHideFav' => 'Ocultar [Meus Favoritos]',
			'SettingsScreen.homeScreen' => 'Ecrã Inicial',
			'SettingsScreen.theme' => 'Tema',
			'SettingsScreen.widgetsAlpha' => 'Transparência dos Widgets',
			'SettingsScreen.widgetsEmpty' => 'Nenhum Widget Disponível',
			'SettingsScreen.backgroundImage' => 'Imagem de Fundo',
			'SettingsScreen.myLink' => 'Link de Atalho',
			'SettingsScreen.autoConnectAfterLaunch' => 'Ligação Automática após o Lançamento',
			'SettingsScreen.autoConnectAtBoot' => 'Ligação Automática após o Início do Sistema',
			'SettingsScreen.autoConnectAtBootTips' => 'O suporte do sistema é necessário; alguns sistemas também podem exigir que o [arranque automático] esteja ativado.',
			'SettingsScreen.hideAfterLaunch' => 'Ocultar janela após o arranque',
			'SettingsScreen.autoSetSystemProxy' => 'Configurar Proxy do Sistema Automaticamente quando Ligado',
			'SettingsScreen.bypassSystemProxy' => 'Nomes de domínio que têm permissão para ignorar o proxy do sistema',
			'SettingsScreen.disconnectWhenQuit' => 'Desligar quando a Aplicação Sair',
			'SettingsScreen.autoAddToFirewall' => 'Adicionar Regras de Firewall Automaticamente',
			'SettingsScreen.excludeFromRecent' => 'Ocultar de [Tarefas Recentes]',
			'SettingsScreen.wakeLock' => 'Bloqueio de Despertar',
			'SettingsScreen.hideVpn' => 'Ocultar Ícone de VPN',
			'SettingsScreen.hideVpnTips' => 'Ativar IPv6 fará com que esta função falhe',
			'SettingsScreen.allowBypass' => 'Permitir que Aplicações Ignorem a VPN',
			'SettingsScreen.importSuccess' => 'Importação com Sucesso',
			'SettingsScreen.rewriteConfirm' => 'Este ficheiro irá substituir a configuração local existente. Deseja continuar?',
			'SettingsScreen.mergePerapp' => 'Fundir listas locais de [${_root.PerAppAndroidScreen.title}]',
			'SettingsScreen.networkShare' => 'Partilha de Rede',
			'SettingsScreen.frontProxy' => 'Proxy Front/Chain',
			'SettingsScreen.frontProxyTips' => ({required Object p}) => 'Dados->Servidor Proxy Front/Chain [Múltiplos Servidores Proxy: Cima para Baixo]->Servidor Proxy [${p}]->Servidor de Destino',
			'SettingsScreen.allowOtherHostsConnect' => 'Permitir que Outros se Liguem',
			'SettingsScreen.allowOtherHostsConnectTips' => ({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}',
			'SettingsScreen.allowOtherHostsConnectWarn' => 'Devido a limitações do sistema, após isto ser ativado, as aplicações neste dispositivo que usem http para aceder à rede podem não conseguir ligar-se à rede corretamente.',
			'SettingsScreen.tunAutoRoute' => 'Rota automática',
			'SettingsScreen.tunAutoRedirect' => 'Redirecionamento automático',
			'SettingsScreen.tunStrictRoute' => 'Strict Route',
			'SettingsScreen.tunStrictRouteTips' => 'Se após ligar a partilha outros não conseguirem aceder a este dispositivo, por favor tente desligar este interruptor',
			'SettingsScreen.loopbackAddress' => 'Endereço de Loopback',
			'SettingsScreen.enableCluster' => 'Ativar Cluster de Proxy Socks/Http',
			'SettingsScreen.clusterAllowOtherHostsConnect' => 'Permitir que Outros se Liguem ao Cluster',
			'SettingsScreen.clusterAllowOtherHostsConnectTips' => ({required Object ip, required Object port}) => 'http://${ip}:${port}/get_proxies',
			'SettingsScreen.clusterAuth' => 'Autenticação de Cluster de Proxy',
			'SettingsScreen.tunMode' => 'Modo TUN',
			'SettingsScreen.tuni4Address' => 'Endereço IP',
			'SettingsScreen.tunModeTips' => 'O modo TUN assumirá todo o tráfego do sistema [Neste modo, pode deixar o proxy do sistema desativado]',
			'SettingsScreen.tunModeRunAsAdmin' => 'O modo TUN requer permissões de administrador do sistema, por favor reinicie a aplicação como administrador',
			'SettingsScreen.tunStack' => 'Pilha',
			'SettingsScreen.tunHijackTips' => 'Após fechar, os pedidos DNS do TUN serão encaminhados diretamente para o servidor DNS correspondente',
			'SettingsScreen.launchAtStartup' => 'Lançar no Arranque',
			'SettingsScreen.quitWhenSwitchSystemUser' => 'Sair da Aplicação ao Trocar de Utilizador do Sistema',
			'SettingsScreen.handleScheme' => 'Chamada de Esquema do Sistema',
			'SettingsScreen.portableMode' => 'Modo Portátil',
			'SettingsScreen.portableModeDisableTips' => 'Se precisar de sair do modo portátil, por favor saia do [karing] e elimine manualmente a pasta [profiles] no mesmo diretório que [karing.exe]',
			'SettingsScreen.accessibility' => 'Acessibilidade',
			'SettingsScreen.handleKaringScheme' => 'Lidar com chamada karing://',
			'SettingsScreen.handleClashScheme' => 'Lidar com chamada clash://',
			'SettingsScreen.handleSingboxScheme' => 'Lidar com chamada sing-box://',
			'SettingsScreen.alwayOnVPN' => 'Ligação Sempre Ativa',
			'SettingsScreen.disconnectAfterSleep' => 'Desligar após a suspensão do sistema',
			'SettingsScreen.removeSystemVPNConfig' => 'Eliminar configuração de VPN do sistema',
			'SettingsScreen.timeConnectOrDisconnect' => 'Ligar/desligar agendado',
			'SettingsScreen.timeConnectOrDisconnectTips' => 'A VPN deve estar ligada para ter efeito; após ser ativada, a [Suspensão Automática] será desativada',
			'SettingsScreen.timeConnectAndDisconnectInterval' => ({required Object p}) => 'O intervalo de ligação/desligamento não pode ser inferior a ${p} minutos',
			'SettingsScreen.disableFontScaler' => 'Desativar escala de fonte (O reinício tem efeito)',
			'SettingsScreen.autoOrientation' => 'Rodar com o ecrã',
			'SettingsScreen.restartTakesEffect' => 'O reinício tem efeito',
			'SettingsScreen.reconnectTakesEffect' => 'A religação tem efeito',
			'SettingsScreen.resetSettings' => 'Repor Definições',
			'SettingsScreen.cleanCache' => 'Limpar Cache',
			'SettingsScreen.cleanCacheDone' => 'Limpeza concluída',
			'SettingsScreen.appleTestFlight' => 'Apple TestFlight',
			'SettingsScreen.appleAppStore' => 'Apple AppStore',
			'SettingsScreen.hasNewVersion' => ({required Object p}) => 'Atualizar Versão ${p}',
			'SettingsScreen.follow' => 'Siga-nos',
			'SettingsScreen.contactUs' => 'Contacte-nos',
			'SettingsScreen.supportUs' => 'Apoie-nos',
			'SettingsScreen.rateInApp' => 'Avalie-nos',
			'SettingsScreen.rateInAppStore' => 'Avalie-nos na AppStore',
			'UserAgreementScreen.privacyFirst' => 'A Sua Privacidade Vem Primeiro',
			'UserAgreementScreen.agreeAndContinue' => 'Aceitar e Continuar',
			'VersionUpdateScreen.versionReady' => ({required Object p}) => 'A nova versão [${p}] está pronta',
			'VersionUpdateScreen.update' => 'Reiniciar para Atualizar',
			'VersionUpdateScreen.cancel' => 'Agora Não',
			'CommonWidget.diableAlwayOnVPN' => 'Se a [VPN sempre ligada] estiver ativada, por favor desligue a [VPN sempre ligada] e tente ligar-se novamente',
			'CommonWidget.resetPort' => 'Por favor mude a porta para outra porta disponível ou feche a aplicação que está a ocupar a porta.',
			'main.tray.menuOpen' => 'Abrir',
			'main.tray.menuExit' => 'Sair',
			'meta.enable' => 'Ativar',
			'meta.disable' => 'Desativar',
			'meta.bydefault' => 'Predefinição',
			'meta.filter' => 'Filtrar',
			'meta.filterMethod' => 'Método de Filtragem',
			'meta.include' => 'Incluir',
			'meta.exclude' => 'Excluir',
			'meta.all' => 'Todos',
			'meta.prefer' => 'Preferir',
			'meta.only' => 'Apenas',
			'meta.open' => 'Abrir',
			'meta.close' => 'Fechar',
			'meta.quit' => 'Sair',
			'meta.add' => 'Adicionar',
			'meta.addSuccess' => 'Adicionado com sucesso',
			'meta.addFailed' => ({required Object p}) => 'Falha ao adicionar:${p}',
			'meta.remove' => 'Remover',
			'meta.removeConfirm' => 'Tem a certeza de que deseja eliminar?',
			'meta.edit' => 'Editar',
			'meta.view' => 'Ver',
			'meta.more' => 'Mais',
			'meta.tips' => 'Informação',
			'meta.copy' => 'Copiar',
			'meta.paste' => 'Colar',
			'meta.cut' => 'Corte',
			'meta.save' => 'Guardar',
			'meta.ok' => 'Ok',
			'meta.cancel' => 'Cancelar',
			'meta.feedback' => 'Feedback',
			'meta.feedbackContent' => 'Conteúdo do Feedback',
			'meta.feedbackContentHit' => 'Obrigatório, até 500 caracteres',
			'meta.feedbackContentCannotEmpty' => 'O conteúdo do feedback não pode estar vazio',
			'meta.faq' => 'FAQ',
			'meta.htmlTools' => 'Conjunto de Ferramentas HTML',
			'meta.download' => 'Descarregar',
			'meta.upload' => 'Carregar',
			'meta.downloadSpeed' => 'Velocidade de Descarregamento',
			'meta.uploadSpeed' => 'Velocidade de Carregamento',
			'meta.loading' => 'A carregar...',
			'meta.convert' => 'Converter',
			'meta.check' => 'Verificar',
			'meta.detect' => 'Detetar',
			'meta.cache' => 'Cache',
			'meta.days' => 'Dias',
			'meta.hours' => 'Horas',
			'meta.minutes' => 'Minutos',
			'meta.seconds' => 'Segundos',
			'meta.milliseconds' => 'Milissegundos',
			'meta.tolerance' => 'Tolerância',
			'meta.dateTimePeriod' => 'Período de tempo',
			'meta.protocol' => 'Protocolo',
			'meta.search' => 'Procurar',
			'meta.custom' => 'Personalizado',
			'meta.inbound' => 'Entrada',
			'meta.outbound' => 'Saída',
			'meta.destination' => 'Destino',
			'meta.outletIpByCurrentSelected' => 'IP',
			'meta.outletIpByDirect' => 'IP:${_root.outboundRuleMode.direct}',
			'meta.connect' => 'Ligar',
			'meta.disconnect' => 'Desligar',
			'meta.reconnect' => 'Religar',
			'meta.connected' => 'Ligado',
			'meta.disconnected' => 'Desligado',
			'meta.connecting' => 'A ligar',
			'meta.connectTimeout' => 'Tempo de Ligação Esgotado',
			'meta.timeout' => 'Tempo Esgotado',
			'meta.timeoutDuration' => 'Duração do Tempo Esgotado',
			'meta.runDuration' => 'Duração da Execução',
			'meta.latency' => 'Latência',
			'meta.latencyTest' => 'Verificações de Latência',
			'meta.language' => 'Idioma',
			'meta.next' => 'Seguinte',
			'meta.done' => 'Concluído',
			'meta.apply' => 'Aplicar',
			'meta.refresh' => 'Atualizar',
			'meta.retry' => 'Tentar novamente?',
			'meta.update' => 'Atualizar',
			'meta.updateInterval' => 'Intervalo de atualização',
			'meta.updateInterval5mTips' => 'Mínimo: 5m',
			'meta.updateFailed' => ({required Object p}) => 'Falha na atualização:${p}',
			'meta.samplingUnit' => 'Unidade de Tempo de Amostragem',
			'meta.queryResultCount' => 'Número de Resultados da Consulta',
			'meta.queryLimit' => ({required Object p}) => 'Mostrar até ${p} dados',
			'meta.none' => 'Nenhum',
			'meta.start' => 'Iniciar',
			'meta.pause' => 'Pausa',
			'meta.reset' => 'Repor',
			'meta.submit' => 'Submeter',
			'meta.user' => 'Utilizador',
			'meta.account' => 'Conta',
			'meta.password' => 'Palavra-passe',
			'meta.required' => 'Obrigatório',
			'meta.type' => 'Tipo',
			'meta.path' => 'Caminho',
			'meta.local' => 'Local',
			'meta.remote' => 'Remoto',
			'meta.other' => 'Outro',
			'meta.dns' => 'DNS',
			'meta.url' => 'URL',
			'meta.urlInvalid' => 'URL Inválido',
			'meta.urlCannotEmpty' => 'Link não pode estar vazio',
			'meta.urlTooLong' => 'URL é demasiado longo (>8182)',
			'meta.copyUrl' => 'Copiar Link',
			'meta.openUrl' => 'Abrir Link',
			'meta.shareUrl' => 'Partilhar Link',
			'meta.speedTestUrl' => 'URL de Teste de Velocidade',
			'meta.tls' => 'TLS',
			'meta.userAgent' => 'UserAgent',
			'meta.staticIP' => 'IP Estático',
			'meta.staticIPTips' => 'Precisa de ativar [TUN HijackDNS] ou [${_root.SettingsScreen.inboundDomainResolve}].',
			'meta.isp' => 'Fornecedor de VPN',
			'meta.domainSuffix' => 'Sufixo de Domínio',
			'meta.domain' => 'Domínio',
			'meta.domainKeyword' => 'Palavra-chave de Domínio',
			'meta.domainRegex' => 'Regex de Domínio',
			'meta.ip' => 'IP',
			'meta.port' => 'Porta',
			'meta.portRange' => 'Intervalo de portas',
			'meta.appPackage' => 'Id de Pacote de Aplicação',
			'meta.processName' => 'Nome do Processo',
			'meta.processPath' => 'Caminho do Processo',
			'meta.processDir' => 'Diretório do Processo',
			'meta.systemProxy' => 'Proxy do Sistema',
			'meta.percentage' => 'Percentagem',
			'meta.statistics' => 'Estatísticas',
			'meta.statisticsAndAnalysis' => 'Estatísticas e Análise',
			'meta.statisticsDataDesensitize' => 'Desensibilização de Dados',
			'meta.statisticsDataDesensitizeTips' => 'Processo/id do pacote/nome do domínio de destino/IP de destino etc. serão substituídos por * e guardados após a desensibilização',
			'meta.records' => 'Registos',
			'meta.requestRecords' => 'Registos de Pedidos',
			'meta.netInterfaces' => 'Interfaces de Rede',
			'meta.netSpeed' => 'Velocidade',
			'meta.memoryTrendChart' => 'Gráfico de Tendência de Memória',
			'meta.goroutinesTrendChart' => 'Gráfico de Tendência de GoRoutines',
			'meta.trafficTrendChart' => 'Gráfico de Tendência de Tráfego',
			'meta.trafficDistributionChart' => 'Gráfico de Distribuição de Tráfego',
			'meta.connectionChart' => 'Gráfico de Tendência de Ligação',
			'meta.memoryChart' => 'Gráfico de Tendência de Memória',
			'meta.trafficStatistics' => 'Estatísticas de tráfego',
			'meta.traffic' => 'Tráfego',
			'meta.trafficTotal' => 'Tráfego Total',
			'meta.trafficProxy' => 'Tráfego Proxy',
			'meta.trafficDirect' => 'Tráfego Direto',
			'meta.website' => 'Website',
			'meta.memory' => 'Memória',
			'meta.outboundMode' => 'Modo de Saída',
			'meta.rule' => 'Regra',
			'meta.global' => 'Global',
			'meta.qrcode' => 'Código QR',
			'meta.qrcodeTooLong' => 'O texto é demasiado longo para ser exibido',
			'meta.qrcodeShare' => 'Partilhar Código QR',
			'meta.textToQrcode' => 'Texto para Código QR',
			'meta.qrcodeScan' => 'Digitalizar Código QR',
			'meta.qrcodeScanResult' => 'Resultado da Digitalização',
			'meta.qrcodeScanFromImage' => 'Digitalizar de Imagem',
			'meta.qrcodeScanResultFailed' => 'Falha ao analisar a imagem, por favor certifique-se de que a captura de ecrã é um código QR válido',
			'meta.qrcodeScanResultEmpty' => 'O resultado da digitalização está vazio',
			'meta.screenshot' => 'Captura de ecrã',
			'meta.backupAndSync' => 'Cópia de Segurança e Sincronização',
			'meta.autoBackup' => 'Cópia de segurança automática',
			'meta.noProfileGotAutoBackup' => 'Se dados como [${_root.meta.myProfiles}] forem perdidos, pode restaurá-los de [${_root.meta.backupAndSync}-${_root.meta.autoBackup}] ou de outras fontes de cópia de segurança (como iCloud ou Webdav, etc.)',
			'meta.autoBackupAddProfile' => 'Após adicionar o Perfil',
			'meta.autoBackupRemoveProfile' => 'Após eliminar o Perfil',
			'meta.profile' => 'Perfil',
			'meta.currentProfile' => 'Perfil Atual',
			'meta.importAndExport' => 'Importar e Exportar',
			'meta.import' => 'Importar',
			'meta.importFromUrl' => 'Importar de URL',
			'meta.export' => 'Exportar',
			'meta.send' => 'Enviar',
			'meta.receive' => 'Receber',
			'meta.sendConfirm' => 'Confirmar envio?',
			'meta.termOfUse' => 'Termos de Serviço',
			'meta.privacyPolicy' => 'Privacidade e Política',
			'meta.about' => 'Sobre',
			'meta.name' => 'Nome',
			'meta.version' => 'Versão',
			'meta.notice' => 'Aviso',
			'meta.appNotifyWithReason' => ({required Object p, required Object p1}) => 'Ação:${p}\nRazão:${p1}',
			'meta.sort' => 'Reordenar',
			'meta.novice' => 'Modo Iniciante',
			'meta.willCompleteAfterRebootInstall' => 'Por favor reinicie o seu dispositivo para concluir a instalação da extensão do sistema',
			'meta.willCompleteAfterRebootUninstall' => 'Por favor reinicie o seu dispositivo para concluir a desinstalação da extensão do sistema',
			'meta.requestNeedsUserApproval' => '1. Por favor [Permitir] que o Karing instale extensões do sistema em [Definições do Sistema]-[Privacidade e Segurança]\n2. [Definições do Sistema]-[Geral]-[Itens de Início Extensões]-[Extensão de Rede] ativar [karingServiceSE]\nreligar após a conclusão',
			'meta.FullDiskAccessPermissionRequired' => 'Por favor ative a permissão [karingServiceSE] em [Definições do Sistema]-[Privacidade e Segurança]-[Permissão de Acesso Total ao Disco] e religue',
			'meta.tvMode' => 'Modo TV',
			'meta.recommended' => 'Recomendado',
			'meta.innerError' => ({required Object p}) => 'Erro Interno:${p}',
			'meta.logicOperation' => 'Operação Lógica',
			'meta.share' => 'Partilhar',
			'meta.candidateWord' => 'Palavras Candidatas',
			'meta.keywordOrRegx' => 'Palavras-chave/Regular',
			'meta.importFromClipboard' => 'Importar da Área de Transferência',
			'meta.exportToClipboard' => 'Exportar para a Área de Transferência',
			'meta.server' => 'Servidor',
			'meta.ads' => 'Anúncios',
			'meta.adsRemove' => 'Remover anúncios',
			'meta.donate' => 'Doar',
			'meta.diversion' => 'Desvio',
			'meta.diversionRules' => 'Regras de Desvio',
			'meta.diversionCustomGroup' => 'Grupo de Desvio Personalizado',
			'meta.urlTestCustomGroup' => 'Seleção Automática Personalizada',
			'meta.setting' => 'Definições',
			'meta.iCloud' => 'iCloud',
			'meta.appleTV' => 'Apple TV',
			'meta.webdav' => 'Webdav',
			'meta.lanSync' => 'Sincronização LAN',
			'meta.lanSyncNotQuitTips' => 'Não saia desta interface antes de a sincronização estar concluída',
			'meta.deviceNoSpace' => 'Espaço em disco insuficiente',
			'meta.hideSystemApp' => 'Ocultar Aplicações do Sistema',
			'meta.hideAppIcon' => 'Ocultar Ícones de Aplicações',
			'meta.hideDockIcon' => 'Ocultar Ícone da Dock',
			'meta.remark' => 'Observação',
			'meta.remarkExist' => 'A observação já existe, por favor use outro nome',
			'meta.remarkCannotEmpty' => 'As observações não podem estar vazias',
			'meta.remarkTooLong' => 'Observações até 32 caracteres',
			'meta.openDir' => 'Abrir Diretório de Ficheiros',
			'meta.fileChoose' => 'Selecionar Ficheiro',
			'meta.filePathCannotEmpty' => 'O caminho do ficheiro não pode estar vazio',
			'meta.fileNotExist' => ({required Object p}) => 'O ficheiro não existe:${p}',
			'meta.fileTypeInvalid' => ({required Object p}) => 'Tipo de ficheiro inválido:${p}',
			'meta.uwpExemption' => 'Isenções de Isolamento de Rede UWP',
			'meta.rulesetGeoSite' => 'GeoSite',
			'meta.rulesetGeoIp' => 'GeoIP',
			'meta.rulesetAcl' => 'ACL',
			'meta.getProfile' => 'Obter Perfil',
			'meta.addProfile' => 'Adicionar Perfil',
			'meta.myProfiles' => 'Meus Perfis',
			'meta.profileEdit' => 'Editar Perfil',
			'meta.profileEditUrlExist' => 'O URL já existe, por favor use outro URL',
			'meta.profileEditReloadAfterProfileUpdate' => 'Recarregar após atualização do Perfil',
			'meta.profileEditTestLatencyAfterProfileUpdate' => 'Iniciar testes de latência após atualização automática do Perfil',
			'meta.profileEditTestLatencyAfterProfileUpdateTips' => 'A VPN precisa de estar ligada e [Recarregar após atualização do Perfil] Ativado',
			'meta.profileEditTestLatencyAutoRemove' => 'Remover automaticamente servidores que falhem nos testes de latência',
			'meta.profileEditTestLatencyAutoRemoveTips' => 'Tentar até 3 vezes',
			'meta.profileImport' => 'Importar Ficheiro de Perfil',
			'meta.profileAddUrlOrContent' => 'Adicionar Link de Perfil',
			'meta.profileExists' => 'O Perfil já existe, por favor não o adicione repetidamente',
			'meta.profileUrlOrContent' => 'Link/Conteúdo do Perfil',
			'meta.profileUrlOrContentHit' => 'Link/Conteúdo do Perfil [Obrigatório] (Suporta links de Perfil Clash, V2ray(suportado em lote), Stash, Karing, Sing-box, Shadowsocks, Sub)',
			'meta.profileUrlOrContentCannotEmpty' => 'O link do Perfil não pode estar vazio',
			'meta.profileAddFailedFormatException' => ({required Object p}) => 'O formato está errado, por favor corrija-o e adicione-o novamente:${p}',
			'meta.profileAddFailedThenDownloadAndImport' => ({required Object p}) => 'Falha ao adicionar: ${p}, por favor tente modificar o [UserAgent] e tente novamente, ou use o navegador integrado do dispositivo para abrir o link de configuração e importar o ficheiro de configuração descarregado pelo navegador para esta aplicação',
			'meta.profileAddFailedHandshakeException' => ({required Object p}) => 'Falha ao adicionar: ${p}, por favor ligue o proxy ou modifique o nó proxy atual e tente novamente',
			'meta.profileAddParseFailed' => 'Falha ao analisar o Perfil',
			'meta.profileAddNoServerAvaliable' => 'Nenhum servidor disponível, certifique-se de que o Link do Perfil ou o Ficheiro do Perfil é válido; se o seu Perfil vier do GitHub, por favor obtenha o link do botão [Raw] na página',
			'meta.profileAddWrapSuccess' => 'Perfil gerado com sucesso, por favor vá a [${_root.meta.myProfiles}] para ver',
			'diversionRulesKeep' => 'Manter [${_root.meta.diversionRules}] de [${_root.meta.isp}]',
			'diversionCustomGroupPreset' => '[${_root.meta.diversionCustomGroup}] Predefinido',
			'diversionCustomGroupPresetTips' => 'Nota: Os itens ativados serão adicionados/substituídos a [${_root.meta.diversionCustomGroup}] e [${_root.meta.diversionRules}]',
			'diversionCustomGroupAddTips' => 'Nota: Após adicionar, pode precisar de ajustar manualmente a ordem, caso contrário o desvio recém-adicionado pode não ter efeito',
			'rulesetEnableTips' => 'Dica: Após ativar as opções, por favor vá a [${_root.meta.diversionRules}] para definir as regras relevantes, caso contrário não terão efeito',
			'ispUserAgentTips' => '[${_root.meta.isp}] enviará dados de diferentes tipos de subscrição baseados no [UserAgent] no pedido [HTTP]',
			'ispDiversionTips' => '[${_root.meta.isp}] fornece regras de desvio de tráfego; subscrições do tipo [V2Ray] não suportam regras de desvio de tráfego',
			'isp.bind' => 'Vincular a [${_root.meta.isp}] ',
			'isp.unbind' => ({required Object p}) => 'Desvincular[${p}]',
			'isp.faq' => ({required Object p}) => 'FAQ[${p}]',
			'isp.customerService' => ({required Object p}) => 'Telegram[${p}]',
			'isp.follow' => ({required Object p}) => 'Seguir[${p}]',
			'isp.invalidOrExpired' => '[${_root.meta.isp}] Inválido ou expirado',
			'permission.camera' => 'Câmara',
			'permission.screen' => 'Gravação de Ecrã',
			'permission.appQuery' => 'Obter Lista de Aplicações',
			'permission.request' => ({required Object p}) => 'Ativar permissão [${p}]',
			'permission.requestNeed' => ({required Object p}) => 'Por favor Ative a permissão [${p}]',
			'tls.insecure' => 'Saltar Verificação de Certificado',
			'tls.affectProtocolTips' => 'vless, vmess, trojan',
			'tls.fragmentEnable' => 'Ativar Fragmento TLS',
			'tls.fragmentSize' => 'Tamanho do Fragmento TLS',
			'tls.fragmentSleep' => 'Pausa do Fragmento TLS',
			'tls.mixedCaseSNIEnable' => 'Ativar SNI de Caixa Mista TLS',
			_ => null,
		} ?? switch (path) {
			'tls.paddingEnable' => 'Ativar Preenchimento TLS',
			'tls.paddingSize' => 'Tamanho do Preenchimento TLS',
			'outboundRuleMode.currentSelected' => 'Selecionado Atualmente',
			'outboundRuleMode.urltest' => 'Seleção Automática',
			'outboundRuleMode.direct' => 'Direto',
			'outboundRuleMode.block' => 'Bloquear',
			'dnsProxyResolveMode.proxy' => _root.outboundRuleMode.currentSelected,
			'dnsProxyResolveMode.direct' => _root.outboundRuleMode.direct,
			'dnsProxyResolveMode.fakeip' => 'FakeIP',
			'proxyStrategy.perferProxy' => '${_root.meta.prefer} ${_root.outboundRuleMode.currentSelected}',
			'proxyStrategy.perferDirect' => '${_root.meta.prefer} ${_root.outboundRuleMode.direct}',
			'proxyStrategy.onlyProxy' => '${_root.meta.only} ${_root.outboundRuleMode.currentSelected}',
			'proxyStrategy.onlyDirect' => '${_root.meta.only} ${_root.outboundRuleMode.direct}',
			'reloadReason.latencyTest' => '${_root.meta.latencyTest}-${_root.meta.profileEditTestLatencyAutoRemove}',
			'reloadReason.profileUpdate' => 'Atualização do Perfil',
			'theme.light' => 'Claro',
			'theme.dark' => 'Escuro',
			'theme.auto' => 'Automático',
			'downloadProxyStrategy' => 'Canal de Descarregamento',
			'dnsProxyResolveModeTips' => '[${_root.dnsProxyResolveMode.proxy}]: Ligue-se ao servidor DNS através do servidor proxy para resolver o nome de domínio\n[${_root.dnsProxyResolveMode.direct}]: Ligue-se diretamente ao servidor DNS para resolver o nome de domínio\n[${_root.dnsProxyResolveMode.fakeip}]: O servidor proxy resolve o nome de domínio em seu nome; se desligar a ligação VPN, a sua aplicação pode precisar de ser reiniciada; apenas eficaz para tráfego de entrada [TUN]',
			'routeFinal' => 'final',
			'protocolSniff' => 'Sniff de Protocolo',
			'sendOrReceiveNotMatch' => ({required Object p}) => 'Por favor use [${p}]',
			'turnOffPrivateDirect' => 'Por favor ative [Ligação direta de rede privada] primeiro',
			'targetConnectFailed' => ({required Object p}) => 'Falha ao ligar a [${p}]. Por favor certifique-se de que os dispositivos estão na mesma LAN',
			'appleTVSync' => 'Sincronizar a configuração atual do núcleo para Apple TV - Karing',
			'appleTVSyncDone' => 'A sincronização está concluída. Por favor vá a Apple TV - Karing para iniciar a ligação/reiniciar a ligação',
			'appleTVRemoveCoreConfig' => 'Eliminar Configuração do Núcleo de Apple TV - Karing',
			'appleTVRemoveCoreConfigDone' => 'Configuração do Núcleo de Apple TV - Karing eliminada; serviço VPN desligado',
			'appleTVUrlInvalid' => 'URL inválido, por favor abra Apple TV - Karing e digitalize o código QR exibido pelo Karing',
			'appleTV404' => ({required Object p}) => 'AppleTV:Karing[${p}] não tem esta função, por favor atualize e tente novamente',
			'appleCoreVersionNotMatch' => ({required Object p}) => 'A versão principal do núcleo não corresponde, por favor atualize [${p}] e tente novamente',
			'remoteProfileEditConfirm' => 'Após o Perfil ser atualizado, as alterações do nó serão restauradas. Continuar?',
			'mustBeValidHttpsURL' => 'Deve ser um URL https válido',
			'fileNotExistReinstall' => ({required Object p}) => 'Ficheiro em falta [${p}], por favor reinstale',
			'noNetworkConnect' => 'Sem ligação à Internet',
			'sudoPassword' => 'palavra-passe sudo (obrigatória para o modo TUN)',
			'turnOffNetworkBeforeInstall' => 'Recomenda-se mudar para [Modo de Avião] antes de instalar a atualização',
			'latencyTestResolveIP' => 'Ao verificar manualmente, resolver o IP de saída',
			'latencyTestConcurrency' => 'Concorrência',
			'edgeRuntimeNotInstalled' => 'O dispositivo atual não instalou o tempo de execução Edge WebView2, pelo que a página não pode ser exibida. Por favor descarregue e instale o tempo de execução Edge WebView2 (x64), reinicie a Aplicação e tente novamente.',
			'locales.en' => 'English',
			'locales.zh-CN' => '简体中文',
			'locales.zh-TW' => '繁體中文',
			'locales.ja' => '日本語',
			'locales.ko' => '한국어',
			'locales.fr' => 'Français',
			'locales.es' => 'Español',
			'locales.ar' => 'عربي',
			'locales.ru' => 'Русский',
			'locales.fa' => 'فارسی',
			'locales.de' => 'Deutsch',
			'locales.pt' => 'Português',
			'locales.it' => 'Italiano',
			'locales.uk' => 'Українська',
			'locales.pl' => 'Polski',
			'locales.nl' => 'Nederlands',
			'locales.sv' => 'Svenska',
			'locales.no' => 'Norsk',
			'locales.da' => 'Dansk',
			'locales.hi' => 'हिन्दी',
			'locales.ur' => 'اردو',
			'locales.bn' => 'বাংলা',
			'locales.el' => 'Ελληνικά',
			'locales.vi' => 'Tiếng Việt',
			'locales.tr' => 'Türkçe',
			'locales.th' => 'ไทย',
			_ => null,
		};
	}
}
