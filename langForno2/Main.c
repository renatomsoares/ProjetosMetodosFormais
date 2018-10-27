#include <stdio.h>
#include <stdlib.h>
#include "Forno.h"

int main(int argc, char *argv[]) {
	
	//Inicializando Forno
	Forno__INITIALISATION();
	int userInput();
	int sel = 1;
	//Imprimindo os valores inicializados
	printf("%d", Forno__r_trava);

	 while(userInput){

	  sel = userInput();
	  
	  switch(sel){
	
	    case 1:
	    	Forno__INITIALISATION();
	    	imprimirContadoresForno();
	    break;
	
	    case 2: ;
	    
	    	int qtdNovoIngredienteEstoque;
	    	int novoIngrediente;
	    	
	    	getIngredientesPadrao();
	    	
			printf("Informe o ingrediente a ser adicionado <enter> e, em seguida, a sua quantidade <enter>: ");
		    scanf("%d ", &novoIngrediente);
		    scanf("%d", &qtdNovoIngredienteEstoque);	    	

	    	Forno__inserirNovoIngredienteNoEstoque(qtdNovoIngredienteEstoque, novoIngrediente);
	    	imprimirContadoresForno();
	    	
	    break;
	
	    case  3:
	    
	    break;
	
	    case 4:
	    
	    break;
	
	    case 0:
	    	return 0;
	    break;  
	
	   }
	
	}


	return 0;
}
