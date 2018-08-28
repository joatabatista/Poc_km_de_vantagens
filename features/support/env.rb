require 'rspec'
require 'pry'
require 'appium_lib' #BIBLIOTECA DO APPIUM
require 'faker'
require 'cpf_faker'
require 'cucumber'

# configuração YAML
$lista_cadastro = YAML.load_file('./date/massa.yml')

#METODO DO APPIUM PARA INICIAR
def caps
    {
        caps: {
            deviceName: "emulator-5554", #QUAKQUER NOME DE DEVICES
            platformName: "Android", #SERA ANDROID OU IOS
            app: (File.join(File.dirname(__FILE__), "KMDEVANTAGENS_HOMOLOG.apk")), #NOME DO APK, ELA FICA NA PASTA SUPORTE
            appPackage:"br.com.ipiranga.kmv.homolog", #TEM QUE EXECUTAR UM COMANDO PARA PEGAR ESSA INFORMAÇÃO
            appActivity:"br.com.ipiranga.kmv.ui.activities.MainActivity", #CONTINUAÇÃO DO PASSO DE CIMA
            newCommandTimeout: "4600" #TIMEOUT
        }
    }
end

Appium::Driver.new(caps, true) #INICIAR DRIVE DO APPIUM
Appium.promote_appium_methods Object #METODOS DO APPIUM
