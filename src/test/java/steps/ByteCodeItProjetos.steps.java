
package steps;

import io.cucumber.java.Before;
import io.cucumber.java.pt.Dado;
import io.cucumber.java.pt.E;
import io.cucumber.java.pt.Entao;
import io.cucumber.java.pt.Quando;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import java.util.concurrent.TimeUnit;

    public class ByteCodeItProjetos {

        WebDriver robo;

        @Before
        public void projetoByteCode() {

            System.setProperty("webdriver.chrome.driver", "C:\\chromedriver.exe");
            robo = new ChromeDriver();
            robo.manage().window().maximize();
            robo.manage().timeouts().implicitlyWait(30, TimeUnit.SECONDS);

        }
        @Dado("que o usuario entra no {String} na tela de login")
        public void que_o_usuario_entra_no_https_www_saucedemo_com_na_tela_de_login(String site) {

            robo.get(site);

        }
        @Quando("digita {string} {string} e {string} {string} correto")
        public void digita_e_correto(String usuario, String senha) {

           robo.findElement(By.id("user-name")).sendKeys(usuario);
           robo.findElement(By.id("password")).sendKeys(senha);

        }
        @E("clicar no botao de login")
        public void clicar_no_botao_de_login() {

           robo.findElement(By.id("login-button")).click();

        }
        @Entao("login será valido com {string}")
        public void login_será_valido_com(String sucesso) {

            Assert.assertEquals(sucesso , robo.findElement(By.xpath("/html/body/div[1]/div/div/div[1]/div[2]/span")).getText());

          }

    }
    