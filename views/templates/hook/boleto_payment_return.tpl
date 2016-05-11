{** * 2007-2015 PrestaShop * * NOTICE OF LICENSE * * This source file is
subject to the Open Software License (OSL 3.0) * that is bundled with
this package in the file LICENSE.txt. * It is also available through the
world-wide-web at this URL: * http://opensource.org/licenses/osl-3.0.php
* If you did not receive a copy of the license and are unable to *
obtain it through the world-wide-web, please send an email * to
license@prestashop.com so we can send you a copy immediately. * *
DISCLAIMER * * Do not edit or add to this file if you wish to upgrade
PrestaShop to newer * versions in the future. If you wish to customize
PrestaShop for your * needs please refer to http://www.prestashop.com
for more information. * * @author MercadoPago * @copyright Copyright
(c) MercadoPago [http://www.mercadopago.com] * @license
http://opensource.org/licenses/osl-3.0.php Open Software License (OSL
3.0) * International Registered Trademark & Property of MercadoPago *}
<div class="mp-module">
	<div class="return-div">
		<h4 id="id-confirmation-boleto">
			<strong> {l s='Thank you for your purchase! We are awaiting the payment.' mod='mercadopagobr'} <br> <br>
			</strong>
			<h5>
				{l s='Payment Id (MercadoPago): ' mod='mercadopagobr'}
				{$payment_id|escape:'htmlall':'UTF-8'}<br>
			</h5>
	</div>
	<br>
	<div class="row">
		{if $boleto_url != null}
		<iframe src="{$boleto_url|escape:'htmlall':'UTF-8'}"
			class="boleto-frame {$country|escape:'html':'UTF-8'}" id="boletoframe">
			<div class="lightbox" id="text">
				<div class="box">
					<div class="content">
						<div class="processing">
							<span>{l s='Processing...' mod='mercadopagobr'}</span>
						</div>
					</div>
				</div>
			</div>
		</iframe>

		{/if} <span class="footer-logo"></span>
		</h4>
	</div>
</div>

<script>
	while($("#plugin") == "undefined") {
		console.info("carregando");
	}
	/*while($("#plugin") == "undefined") {
		console.info("carregando");
	}
	console.info("finalizado");
	window.onload = init();
	function init(){
		 document.getElementById("boletoframe").addEventListener("load", function(){
			 console.log('load');
		}, complete());
		
	}
	
	function complete() {
		console.info("teste");
	}*/
</script>
