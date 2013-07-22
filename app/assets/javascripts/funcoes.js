function carregarDados3() {
    alert('teste tres');
}

/*function carregaEndereco() {  
	alert("asdf");
   // antes de fazer a requisição, validamos  
   //if (!input.value.match(/\d{8}/)) return;  

   // com prototype ficaria mais ou menos assim:  
   // faz uma requisicao ajax pra action que busca por cep  
   new Ajax.Request("/cashflows/index" , {  
     method: 'get',  
     onSuccess: function(data) { // ao completar a requisicao  
       // data contém os dados retornados da busca.   
       // aqui vc pode pegar esses dados e colocá-los em outros inputs, exemplo:  
       // $('rua').value = data[1];  
		alert('rua');
     }});  

   // com jquery ficaria mais ou menos assim:  
   //$.getJSON("/cashflows/buscar_company" , function (data) {  
      // mesmo tratamento anterior, pega o resultado e coloca nos inputs  
   //});  
}*/

function carregaEndereco() {
    //if (!input.value.match(/\d{8}/) && !input.value.match(/\d{5}-\d{3}/)) return;
    $.getJSON("/companies",
    function(data) {

        /*$('#usuario_endereco').val(data[0] + " " + data[1]);  
            $('#usuario_cidade').val(data[4]);  
            $('#usuario_estado').val(data[3]);  */
    });
}

$(function() {
    $("#buscaCategoria").autocomplete({
        source: function(request, response) {
            $.ajax({
                url: "/categories.json",
                method: 'get',
                success: function(data) {
                    response($.map(data,
                    function(item) {
                        return {
                            label: item.nome,
                            value: item.nome,
							id: item.id
                        }
                    }));
                }
            });
        },
        minLength: 2,
        select: function(event, ui) {
            alert("Selected: " + ui.item.id);
			document.getElementById("category_id").value = ui.item.id;
						alert("Selected: " + document.getElementById("category_id").value);
        },
        open: function() {
            $(this).removeClass("ui-corner-all").addClass("ui-corner-top");
        },
        close: function() {
            $(this).removeClass("ui-corner-top").addClass("ui-corner-all");
        }

    });

    $("#buscaConta").autocomplete({
        source: function(request, response) {
            $.ajax({
                url: "/accounts.json",
                method: 'get',
                success: function(data) {
                    response($.map(data,
                    function(item) {
                        return {
                            label: item.nome,
                            value: item.nome,
							id: item.id
                        }
                    }));
                }
            });
        },
        minLength: 2,
        select: function(event, ui) {
  			alert("Selected: " + ui.item.id);
			document.getElementById("account_id").value = ui.item.id;
			alert("Selected: " + document.getElementById("account_id").value);
        },
        open: function() {
            $(this).removeClass("ui-corner-all").addClass("ui-corner-top");
        },
        close: function() {
            $(this).removeClass("ui-corner-top").addClass("ui-corner-all");
        }

    });

	$("#buscaUnidade").autocomplete({
        source: function(request, response) {
            $.ajax({
                url: "/units.json",
                method: 'get',
                success: function(data) {
                    response($.map(data,
                    function(item) {
                        return {
                            label: item.nome,
                            value: item.nome,
							id: item.id
                        }
                    }));
                }
            });
        },
        minLength: 2,
        select: function(event, ui) {
			document.getElementById("unidade_id").value = ui.item.id;
        },
        open: function() {
            $(this).removeClass("ui-corner-all").addClass("ui-corner-top");
        },
        close: function() {
            $(this).removeClass("ui-corner-top").addClass("ui-corner-all");
        }

    });


});
$(function() {
	$( "#cashflow_datalancamento" ).datepicker()
});
$(function() {
	$( "#cashflow_datavencimento" ).datepicker()
});
$(function() {
	$( "#cashflow_databaixa" ).datepicker()
});

$(function() {
	$("#cashflow_valor").priceFormat();
});
/*$(function() {
//alert("asdf");
    $( "#cashflow_valor" ).priceFormat({
    	prefix: 'R$ ',
	    centsSeparator: ',',
	    thousandsSeparator: '.'
    });

});*/
