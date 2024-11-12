; *** Inno Setup version 6.1.0+ Brazilian Portuguese messages made by Cesar82 cesar.zanetti.82@gmail.com ***
;
; To download user-contributed translations of this file, go to:
;   https://jrsoftware.org/files/istrans/
;
; Note: When translating this text, do not add periods (.) to the end of
; messages that didn't have them already, because on those messages Inno
; Setup adds the periods automatically (appending a period would result in
; two periods being displayed).

[LangOptions]
; The following three entries are very important. Be sure to read and 
; understand the '[LangOptions] section' topic in the help file.
LanguageName=Português Brasileiro
LanguageID=$0416
LanguageCodePage=1252
; If the language you are translating to requires special font faces or
; sizes, uncomment any of the following entries and change them accordingly.
;DialogFontName=
;DialogFontSize=8
;WelcomeFontName=Verdana
;WelcomeFontSize=12
;TitleFontName=Arial
;TitleFontSize=29
;CopyrightFontName=Arial
;CopyrightFontSize=8

[Messages]

; *** Application titles
SetupAppTitle=Instalador
SetupWindowTitle=%1 - Instalador
UninstallAppTitle=Desinstalar
UninstallAppFullTitle=Desinstalar %1

; *** Misc. common
InformationTitle=Informação
ConfirmTitle=Confirmar
ErrorTitle=Erro

; *** SetupLdr messages
SetupLdrStartupMessage=Isto instalará o %1. Você deseja continuar?
LdrCannotCreateTemp=Incapaz de criar um arquivo temporário. Instalação abortada
LdrCannotExecTemp=Incapaz de executar o arquivo no diretório temporário. Instalação abortada
HelpTextNote=

; *** Startup error messages
LastErrorMessage=%1.%n%nErro %2: %3
SetupFileMissing=Está faltando o arquivo %1 do diretório de instalação. Por favor corrija o problema ou obtenha uma nova cópia do programa.
SetupFileCorrupt=Os arquivos de instalação estão corrompidos. Por favor obtenha uma nova cópia do programa.
SetupFileCorruptOrWrongVer=Os arquivos de instalação estão corrompidos ou são incompatíveis com esta versão do instalador. Por favor corrija o problema ou obtenha uma nova cópia do programa.
InvalidParameter=Um parâmetro inválido foi passado na linha de comando:%n%n%1
SetupAlreadyRunning=O instalador já está em execução.
WindowsVersionNotSupported=Este programa não suporta a versão do Windows que seu computador está executando.
WindowsServicePackRequired=Este programa requer o %1 Service Pack %2 ou superior.
NotOnThisPlatform=Este programa não executará no %1.
OnlyOnThisPlatform=Este programa deve ser executado no %1.
OnlyOnTheseArchitectures=Este programa só pode ser instalado em versões do Windows projetadas para as seguintes arquiteturas de processadores:%n%n% 1
WinVersionTooLowError=Este programa requer a %1 versão %2 ou superior.
WinVersionTooHighError=Este programa não pode ser instalado na %1 versão %2 ou superior.
AdminPrivilegesRequired=Você deve estar logado como administrador quando instalar este programa.
PowerUserPrivilegesRequired=Você deve estar logado como administrador ou como um membro do grupo de Usuários Power quando instalar este programa.
SetupAppRunningError=O instalador detectou que o %1 está atualmente em execução.%n%nPor favor feche todas as instâncias dele agora, então clique em OK pra continuar ou em Cancelar pra sair.
UninstallAppRunningError=O Desinstalador detectou que o %1 está atualmente em execução.%n%nPor favor feche todas as instâncias dele agora, então clique em OK pra continuar ou em Cancelar pra sair.

; *** Startup questions
PrivilegesRequiredOverrideTitle=Selecione o Modo de Instalação do Instalador
PrivilegesRequiredOverrideInstruction=Selecione o modo de instalação
PrivilegesRequiredOverrideText1=O %1 pode ser instalado pra todos os usuários (requer privilégios administrativos) ou só pra você.
PrivilegesRequiredOverrideText2=O %1 pode ser instalado só pra você ou pra todos os usuários (requer privilégios administrativos).
PrivilegesRequiredOverrideAllUsers=Instalar pra &todos os usuários
PrivilegesRequiredOverrideAllUsersRecommended=Instalar pra &todos os usuários (recomendado)
PrivilegesRequiredOverrideCurrentUser=Instalar só &pra mim
PrivilegesRequiredOverrideCurrentUserRecommended=Instalar só &pra mim (recomendado)

; *** Misc. errors
ErrorCreatingDir=O instalador foi incapaz de criar o diretório "%1"
ErrorTooManyFilesInDir=Incapaz de criar um arquivo no diretório "%1" porque ele contém arquivos demais

; *** Setup common messages
ExitSetupTitle=Sair do Instalador
ExitSetupMessage=A Instalação não está completa. Se você sair agora o programa não será instalado.%n%nVocê pode executar o instalador de novo outra hora pra completar a instalação.%n%nSair do instalador?
AboutSetupMenuItem=&Sobre o Instalador...
AboutSetupTitle=Sobre o Instalador
AboutSetupMessage=%1 versão %2%n%3%n%n%1 home page:%n%4
AboutSetupNote=
TranslatorNote=

; *** Buttons
ButtonBack=< &Voltar
ButtonNext=&Avançar >
ButtonInstall=&Instalar
ButtonOK=OK
ButtonCancel=Cancelar
ButtonYes=&Sim
ButtonYesToAll=Sim pra &Todos
ButtonNo=&Não
ButtonNoToAll=Nã&o pra Todos
ButtonFinish=&Concluir
ButtonBrowse=&Procurar...
ButtonWizardBrowse=P&rocurar...
ButtonNewFolder=&Criar Nova Pasta

; *** "Select Language" dialog messages
SelectLanguageTitle=Selecione o Idioma do Instalador
SelectLanguageLabel=Selecione o idioma pra usar durante a instalação:

; *** Common wizard text
ClickNext=Clique em Avançar pra continuar ou em Cancelar pra sair do instalador.
BeveledLabel=
BrowseDialogTitle=Procurar Pasta
BrowseDialogLabel=Selecione uma pasta na lista abaixo, então clique em OK.
NewFolderName=Nova Pasta

; *** "Welcome" wizard page
WelcomeLabel1=Bem-vindo ao Assistente do Instalador do [name]
WelcomeLabel2=Isto instalará o [name/ver] no seu computador.%n%nÉ recomendado que você feche todos os outros aplicativos antes de continuar.

; *** "Password" wizard page
WizardPassword=Senha
PasswordLabel1=Esta instalação está protegida por senha.
PasswordLabel3=Por favor forneça a senha, então clique em Avançar pra continuar. As senhas são caso-sensitivo.
PasswordEditLabel=&Senha:
IncorrectPassword=A senha que você inseriu não está correta. Por favor tente de novo.

; *** "License Agreement" wizard page
WizardLicense=Acordo de Licença
LicenseLabel=Por favor leia as seguintes informações importantes antes de continuar.
LicenseLabel3=Por favor leia o seguinte Acordo de Licença. Você deve aceitar os termos deste acordo antes de continuar com a instalação.
LicenseAccepted=Eu &aceito o acordo
LicenseNotAccepted=Eu &não aceito o acordo

; *** "Information" wizard pages
WizardInfoBefore=Informação
InfoBeforeLabel=Por favor leia as seguintes informações importantes antes de continuar.
InfoBeforeClickLabel=Quando você estiver pronto pra continuar com o instalador, clique em Avançar.
WizardInfoAfter=Informação
InfoAfterLabel=Por favor leia as seguintes informações importantes antes de continuar.
InfoAfterClickLabel=Quando você estiver pronto pra continuar com o instalador, clique em Avançar.

; *** "User Information" wizard page
WizardUserInfo=Informação do Usuário
UserInfoDesc=Por favor insira suas informações.
UserInfoName=&Nome do Usuário:
UserInfoOrg=&Organização:
UserInfoSerial=&Número de Série:
UserInfoNameRequired=Você deve inserir um nome.

; *** "Select Destination Location" wizard page
WizardSelectDir=Selecione o Local de Destino
SelectDirDesc=Aonde o [name] deve ser instalado?
SelectDirLabel3=O instalador instalará o [name] na seguinte pasta.
SelectDirBrowseLabel=Pra continuar clique em Avançar. Se você gostaria de selecionar uma pasta diferente, clique em Procurar.
DiskSpaceGBLabel=Pelo menos [gb] MBs de espaço livre em disco são requeridos.
DiskSpaceMBLabel=Pelo menos [mb] MBs de espaço livre em disco são requeridos.
CannotInstallToNetworkDrive=O instalador não pode instalar em um drive de rede.
CannotInstallToUNCPath=O instalador não pode instalar em um caminho UNC.
InvalidPath=Você deve inserir um caminho completo com a letra do drive; por exemplo:%n%nC:\APP%n%não um caminho UNC no formulário:%n%n\\server\share
InvalidDrive=O drive ou compartilhamento UNC que você selecionou não existe ou não está acessível. Por favor selecione outro.
DiskSpaceWarningTitle=Sem Espaço em Disco o Bastante
DiskSpaceWarning=O instalador requer pelo menos %1 KBs de espaço livre pra instalar mas o drive selecionado só tem %2 KBs disponíveis.%n%nVocê quer continuar de qualquer maneira?
DirNameTooLong=O nome ou caminho da pasta é muito longo.
InvalidDirName=O nome da pasta não é válido.
BadDirName32=Os nomes das pastas não pode incluir quaisquer dos seguintes caracteres:%n%n%1
DirExistsTitle=A Pasta Existe
DirExists=A pasta:%n%n%1%n%njá existe. Você gostaria de instalar nesta pasta de qualquer maneira?
DirDoesntExistTitle=A Pasta Não Existe
DirDoesntExist=A pasta:%n%n%1%n%nnão existe. Você gostaria quer a pasta fosse criada?

; *** "Select Components" wizard page
WizardSelectComponents=Selecionar Componentes
SelectComponentsDesc=Quais componentes devem ser instalados?
SelectComponentsLabel2=Selecione os componentes que você quer instalar; desmarque os componentes que você não quer instalar. Clique em Avançar quando você estiver pronto pra continuar.
FullInstallation=Instalação completa
; if possible don't translate 'Compact' as 'Minimal' (I mean 'Minimal' in your language)
CompactInstallation=Instalação compacta
CustomInstallation=Instalação personalizada
NoUninstallWarningTitle=O Componente Existe
NoUninstallWarning=O instalador detectou que os seguintes componentes já estão instalados no seu computador:%n%n%1%n%nNão selecionar estes componentes não desinstalará eles.%n%nVocê gostaria de continuar de qualquer maneira?
ComponentSize1=%1 KBs
ComponentSize2=%1 MBs
ComponentsDiskSpaceGBLabel=A seleção atual requer pelo menos [gb] MBs de espaço em disco.
ComponentsDiskSpaceMBLabel=A seleção atual requer pelo menos [mb] MBs de espaço em disco.

; *** "Select Additional Tasks" wizard page
WizardSelectTasks=Selecionar Tarefas Adicionais
SelectTasksDesc=Quais tarefas adicionais devem ser executadas?
SelectTasksLabel2=Selecione as tarefas adicionais que você gostaria que o instalador executasse enquanto instala o [name], então clique em Avançar.

; *** "Select Start Menu Folder" wizard page
WizardSelectProgramGroup=Selecionar a Pasta do Menu Iniciar
SelectStartMenuFolderDesc=Aonde o instalador deve colocar os atalhos do programa?
SelectStartMenuFolderLabel3=O instalador criará os atalhos do programa na seguinte pasta do Menu Iniciar.
SelectStartMenuFolderBrowseLabel=Pra continuar clique em Avançar. Se você gostaria de selecionar uma pasta diferente, clique em Procurar.
MustEnterGroupName=Você deve inserir um nome de pasta.
GroupNameTooLong=O nome ou caminho da pasta é muito longo.
InvalidGroupName=O nome da pasta não é válido.
BadGroupName=O nome da pasta não pode incluir quaisquer dos seguintes caracteres:%n%n%1
NoProgramGroupCheck2=&Não criar uma pasta no Menu Iniciar

; *** "Ready to Install" wizard page
WizardReady=Pronto pra Instalar
ReadyLabel1=O instalador está agora pronto pra começar a instalar o [name] no seu computador.
ReadyLabel2a=Clique em Instalar pra continuar com a instalação ou clique em Voltar se você quer revisar ou mudar quaisquer configurações.
ReadyLabel2b=Clique em Instalar pra continuar com a instalação.
ReadyMemoUserInfo=Informação do usuário:
ReadyMemoDir=Local de destino:
ReadyMemoType=Tipo de instalação:
ReadyMemoComponents=Componentes selecionados:
ReadyMemoGroup=Pasta do Menu Iniciar:
ReadyMemoTasks=Tarefas adicionais:

; *** TDownloadWizardPage wizard page and DownloadTemporaryFile
DownloadingLabel=Baixando arquivos adicionais...
ButtonStopDownload=&Parar download
StopDownload=Tem certeza que deseja parar o download?
ErrorDownloadAborted=Download abortado
ErrorDownloadFailed=Download falhou: %1 %2
ErrorDownloadSizeFailed=Falha ao obter o tamanho: %1 %2
ErrorFileHash1=Falha no hash do arquivo: %1
ErrorFileHash2=Hash de arquivo inválido: esperado %1, encontrado %2
ErrorProgress=Progresso inválido: %1 de %2
ErrorFileSize=Tamanho de arquivo inválido: esperado %1, encontrado %2

; *** "Preparing to Install" wizard page
WizardPreparing=Preparando pra Instalar
PreparingDesc=O instalador está se preparando pra instalar o [name] no seu computador.
PreviousInstallNotCompleted=A instalação/remoção de um programa anterior não foi completada. Você precisará reiniciar o computador pra completar essa instalação.%n%nApós reiniciar seu computador execute o instalador de novo pra completar a instalação do [name].
CannotContinue=O instalador não pode continuar. Por favor clique em Cancelar pra sair.
ApplicationsFound=Os aplicativos a seguir estão usando arquivos que precisam ser atualizados pelo instalador. É recomendados que você permita ao instalador fechar automaticamente estes aplicativos.
ApplicationsFound2=Os aplicativos a seguir estão usando arquivos que precisam ser atualizados pelo instalador. É recomendados que você permita ao instalador fechar automaticamente estes aplicativos. Após a instalação ter completado, o instalador tentará reiniciar os aplicativos.
CloseApplications=&Fechar os aplicativos automaticamente
DontCloseApplications=&Não fechar os aplicativos
ErrorCloseApplications=O instalador foi incapaz de fechar automaticamente todos os aplicativos. É recomendado que você feche todos os aplicativos usando os arquivos que precisam ser atualizados pelo instalador antes de continuar.
PrepareToInstallNeedsRestart=A instalação deve reiniciar seu computador. Depois de reiniciar o computador, execute a Instalação novamente para concluir a instalação de [name].%n%nDeseja reiniciar agora?

; *** "Installing" wizard page
WizardInstalling=Instalando
InstallingLabel=Por favor espere enquanto o instalador instala o [name] no seu computador.

; *** "Setup Completed" wizard page
FinishedHeadingLabel=Completando o Assistente do Instalador do [name]
FinishedLabelNoIcons=O instalador terminou de instalar o [name] no seu computador.
FinishedLabel=O instalador terminou de instalar o [name] no seu computador. O aplicativo pode ser iniciado selecionando os atalhos instalados.
ClickFinish=Clique em Concluir pra sair do Instalador.
FinishedRestartLabel=Pra completar a instalação do [name], o instalador deve reiniciar seu computador. Você gostaria de reiniciar agora?
FinishedRestartMessage=Pra completar a instalação do [name], o instalador deve reiniciar seu computador.%n%nVocê gostaria de reiniciar agora?
ShowReadmeCheck=Sim, eu gostaria de visualizar o arquivo README
YesRadio=&Sim, reiniciar o computador agora
NoRadio=&Não, eu reiniciarei o computador depois
; used for example as 'Run MyProg.exe'
RunEntryExec=Executar %1
; used for example as 'View Readme.txt'
RunEntryShellExec=Visualizar %1

; *** "Setup Needs the Next Disk" stuff
ChangeDiskTitle=O Instalador Precisa do Próximo Disco
SelectDiskLabel2=Por favor insira o Disco %1 e clique em OK.%n%nSe os arquivos neste disco podem ser achados numa pasta diferente do que a exibida abaixo, insira o caminho correto ou clique em Procurar.
PathLabel=&Caminho:
FileNotInDir2=O arquivo "%1" não pôde ser localizado em "%2". Por favor insira o disco correto ou selecione outra pasta.
SelectDirectoryLabel=Por favor especifique o local do próximo disco.

; *** Installation phase messages
SetupAborted=A instalação não foi completada.%n%nPor favor corrija o problema e execute o instalador de novo.
AbortRetryIgnoreSelectAction=Selecionar ação
AbortRetryIgnoreRetry=&Tentar de novo
AbortRetryIgnoreIgnore=&Ignorar o erro e continuar
AbortRetryIgnoreCancel=Cancelar instalação

; *** Installation status messages
StatusClosingApplications=Fechando aplicativos...
StatusCreateDirs=Criando diretórios...
StatusExtractFiles=Extraindo arquivos...
StatusCreateIcons=Criando atalhos...
StatusCreateIniEntries=Criando entradas INI...
StatusCreateRegistryEntries=Criando entradas do registro...
StatusRegisterFiles=Registrando arquivos...
StatusSavingUninstall=Salvando informações de desinstalação...
StatusRunProgram=Concluindo a instalação...
StatusRestartingApplications=Reiniciando os aplicativos...
StatusRollback=Desfazendo as mudanças...

; *** Misc. errors
ErrorInternal2=Erro interno: %1
ErrorFunctionFailedNoCode=%1 falhou
ErrorFunctionFailed=%1 falhou; código %2
ErrorFunctionFailedWithMessage=%1 falhou; código %2.%n%3
ErrorExecutingProgram=Incapaz de executar o arquivo:%n%1

; *** Registry errors
ErrorRegOpenKey=Erro ao abrir a chave do registro:%n%1\%2
ErrorRegCreateKey=Erro ao criar a chave do registro:%n%1\%2
ErrorRegWriteKey=Erro ao gravar a chave do registro:%n%1\%2

; *** INI errors
ErrorIniEntry=Erro ao criar a entrada INI no arquivo "%1".

; *** File copying errors
FileAbortRetryIgnoreSkipNotRecommended=&Ignorar este arquivo (não recomendado)
FileAbortRetryIgnoreIgnoreNotRecommended=&Ignorar o erro e continuar (não recomendado)
SourceIsCorrupted=O arquivo de origem está corrompido
SourceDoesntExist=O arquivo de origem "%1" não existe
ExistingFileReadOnly2=O arquivo existente não pôde ser substituído porque está marcado como somente-leitura.
ExistingFileReadOnlyRetry=&Remover o atributo somente-leitura e tentar de novo
ExistingFileReadOnlyKeepExisting=&Manter o arquivo existente
ErrorReadingExistingDest=Um erro ocorreu enquanto tentava ler o arquivo existente:
FileExistsSelectAction=Selecione a ação
FileExists2=O arquivo já existe.
FileExistsOverwriteExisting=&Sobrescrever o arquivo existente
FileExistsKeepExisting=&Mantenha o arquivo existente
FileExistsOverwriteOrKeepAll=&Faça isso para os próximos conflitos
ExistingFileNewerSelectAction=Selecione a ação
ExistingFileNewer2=O arquivo existente é mais recente do que aquele que o Setup está tentando instalar.
ExistingFileNewerOverwriteExisting=&Sobrescrever o arquivo existente
ExistingFileNewerKeepExisting=&Mantenha o arquivo existente (recomendado)
ExistingFileNewerOverwriteOrKeepAll=&Faça isso para os próximos conflitos
ErrorChangingAttr=Um erro ocorreu enquanto tentava mudar os atributos do arquivo existente:
ErrorCreatingTemp=Um erro ocorreu enquanto tentava criar um arquivo no diretório destino:
ErrorReadingSource=Um erro ocorreu enquanto tentava ler o arquivo de origem:
ErrorCopying=Um erro ocorreu enquanto tentava copiar um arquivo:
ErrorReplacingExistingFile=Um erro ocorreu enquanto tentava substituir o arquivo existente:
ErrorRestartReplace=ReiniciarSubstituir falhou:
ErrorRenamingTemp=Um erro ocorreu enquanto tentava renomear um arquivo no diretório destino:
ErrorRegisterServer=Incapaz de registrar a DLL/OCX: %1
ErrorRegSvr32Failed=O RegSvr32 falhou com o código de saída %1
ErrorRegisterTypeLib=Incapaz de registrar a biblioteca de tipos: %1

; *** Uninstall display name markings
; used for example as 'My Program (32-bit)'
UninstallDisplayNameMark=%1 (%2)
; used for example as 'My Program (32-bit, All users)'
UninstallDisplayNameMarks=%1 (%2, %3)
UninstallDisplayNameMark32Bit=32 bits
UninstallDisplayNameMark64Bit=64 bits
UninstallDisplayNameMarkAllUsers=Todos os usuários
UninstallDisplayNameMarkCurrentUser=Usuário atual

; *** Post-installation errors
ErrorOpeningReadme=Um erro ocorreu enquanto tentava abrir o arquivo README.
ErrorRestartingComputer=O instalador foi incapaz de reiniciar o computador. Por favor faça isto manualmente.

; *** Uninstaller messages
UninstallNotFound=O arquivo "%1" não existe. Não consegue desinstalar.
UninstallOpenError=O arquivo "%1" não pôde ser aberto. Não consegue desinstalar
UninstallUnsupportedVer=O arquivo do log da desinstalação "%1" está num formato não reconhecido por esta versão do desinstalador. Não consegue desinstalar
UninstallUnknownEntry=Uma entrada desconhecida (%1) foi encontrada no log da desinstalação
ConfirmUninstall=Você tem certeza que você quer remover completamente o %1 e todos os seus componentes?
UninstallOnlyOnWin64=Esta instalação só pode ser desinstalada em Windows 64 bits.
OnlyAdminCanUninstall=Esta instalação só pode ser desinstalada por um usuário com privilégios administrativos.
UninstallStatusLabel=Por favor espere enquanto o %1 é removido do seu computador.
UninstalledAll=O %1 foi removido com sucesso do seu computador.
UninstalledMost=Desinstalação do %1 completa.%n%nAlguns elementos não puderam ser removidos. Estes podem ser removidos manualmente.
UninstalledAndNeedsRestart=Pra completar a desinstalação do %1, seu computador deve ser reiniciado.%n%nVocê gostaria de reiniciar agora?
UninstallDataCorrupted=O arquivo "%1" está corrompido. Não consegue desinstalar

; *** Uninstallation phase messages
ConfirmDeleteSharedFileTitle=Remover Arquivo Compartilhado?
ConfirmDeleteSharedFile2=O sistema indica que o seguinte arquivo compartilhado não está mais em uso por quaisquer programas. Você gostaria que a Desinstalação removesse este arquivo compartilhado?%n%nSe quaisquer programas ainda estão usando este arquivo e ele é removido, esses programas podem não funcionar apropriadamente. Se você não tiver certeza escolha Não. Deixar o arquivo no seu sistema não causará qualquer dano.
SharedFileNameLabel=Nome do arquivo:
SharedFileLocationLabel=Local:
WizardUninstalling=Status da Desinstalação
StatusUninstalling=Desinstalando o %1...

; *** Shutdown block reasons
ShutdownBlockReasonInstallingApp=Instalando o %1.
ShutdownBlockReasonUninstallingApp=Desinstalando o %1.

; The custom messages below aren't used by Setup itself, but if you make
; use of them in your scripts, you'll want to translate them.

[CustomMessages]

NameAndVersion=%1 versão %2
AdditionalIcons=Atalhos adicionais:
CreateDesktopIcon=Criar um atalho &na área de trabalho
CreateQuickLaunchIcon=Criar um atalho na &barra de inicialização rápida
ProgramOnTheWeb=%1 na Web
UninstallProgram=Desinstalar o %1
LaunchProgram=Iniciar o %1
AssocFileExtension=&Associar o %1 com a extensão do arquivo %2
AssocingFileExtension=Associando o %1 com a extensão do arquivo %2...
AutoStartProgramGroupDescription=Inicialização:
AutoStartProgram=Iniciar o %1 automaticamente
AddonHostProgramNotFound=O %1 não pôde ser localizado na pasta que você selecionou.%n%nVocê quer continuar de qualquer maneira?
