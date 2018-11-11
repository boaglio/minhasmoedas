package com.boaglio.minhasmoedas.teste.it;

import org.junit.Assert;
import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

import com.boaglio.minhasmoedas.teste.core.SeleniumTest;
import com.boaglio.minhasmoedas.teste.core.SeleniumUtils;
import com.boaglio.minhasmoedas.teste.core.Site;

public class CambioHomeIT  extends SeleniumTest  {

	@Test
	public void testaTitle() {

		WebDriver driver = getDriver();
		driver.get(Site.host.value()+Site.cambio.value());

		Assert.assertTrue(driver.getPageSource().contains(
				Site.homeTitle.value()));

		try {
			Thread.sleep(2000);
		} catch (InterruptedException e) {
			e.printStackTrace();
		}

		Assert.assertTrue(driver.getPageSource().contains(Site.cambioValidation1.value()));
		Assert.assertTrue(driver.getPageSource().contains(Site.cambioValidation2.value()));

		SeleniumUtils.tiraScreenshot(this.getClass().getSimpleName(), driver);

		driver.quit();
	}
}