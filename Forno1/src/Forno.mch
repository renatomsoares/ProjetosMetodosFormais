MACHINE Forno

SETS

        INGREDIENTES ;
        ALIMENTO

ABSTRACT_VARIABLES

        //CONFIGURAÇÕES DA RECEITA
        receita_alimento_ingredientes ,
        receita_ingrediente_quantidade ,
        receita_alimento_potenciaAtualencia ,
        receita_alimento_temporizacao ,

        //ESTOQUE
        estoque_ingrediente_quantidade ,
        segundosTemp ,

        //UTILITÁRIOS
        trava ,
        potenciaAtual ,
        index_in ,
        tempoDeUso ,
        qntAlimentosProduzidos

INVARIANT

        receita_alimento_ingredientes : ALIMENTO <-> POW ( INGREDIENTES ) &
        receita_ingrediente_quantidade : POW ( INGREDIENTES ) <-> NAT1 &
        estoque_ingrediente_quantidade : INGREDIENTES +-> 0 .. 2000 &
        receita_alimento_potenciaAtualencia : ALIMENTO +-> 150 .. 260 &
        receita_alimento_temporizacao : ALIMENTO +-> 1 .. 7200 &
        segundosTemp : 0 .. 7200 &
        potenciaAtual : 150 .. 260 &
        trava : NAT &
        index_in : 0 .. card ( dom ( estoque_ingrediente_quantidade ) ) +-> INGREDIENTES &
        tempoDeUso : 0 .. 7200 &
        qntAlimentosProduzidos : NAT

INITIALISATION

        estoque_ingrediente_quantidade := {} ||
        receita_alimento_ingredientes := {} ||
        receita_ingrediente_quantidade := {} ||
        receita_alimento_temporizacao := {} ||
        receita_alimento_potenciaAtualencia := {} ||
        segundosTemp := 0 ||
        potenciaAtual := 150 ||
        trava := 0 ||
        index_in := {} ||
        tempoDeUso := 0 ||
        qntAlimentosProduzidos := 0

OPERATIONS

        ee <-- numIngredientesNoEstoque =
        ee := card ( dom ( estoque_ingrediente_quantidade ) ) ;


        qq <-- qntIngredienteNoEstoque ( ii ) =
            PRE ii : INGREDIENTES & ii : dom ( estoque_ingrediente_quantidade )
            THEN qq := estoque_ingrediente_quantidade ( ii )
            END ;


        decrementaTemp =
        PRE segundosTemp > 0
        THEN segundosTemp := segundosTemp - 1
        END ;


        travaarForno =
            PRE trava = 0
            THEN trava := 1
        END ;


        destravaarForno =
            PRE trava = 1 & segundosTemp = 0
            THEN trava := 0
        END ;


        inserirNovoIngredienteNoEstoque ( qq , ii ) =
            PRE ii : INGREDIENTES & qq : NAT & qq < 10 & qq > 0 & ii /: dom ( estoque_ingrediente_quantidade ) & trava = 0
            THEN IF ii /: dom ( estoque_ingrediente_quantidade )
                THEN estoque_ingrediente_quantidade := estoque_ingrediente_quantidade \/ { ii |-> qq } || index_in := index_in \/ { card ( dom ( estoque_ingrediente_quantidade ) ) |-> ii } END
        END ;


// FAZER REMOÇÃO DO INCREDIENTE NO ESTOQUE (REMOVER DEPÓSITO)


        incrementarIngredienteDoEstoque ( qq , ii ) =
            PRE ii : INGREDIENTES & qq : NAT & qq < 10 & qq > 0 & ii : dom ( estoque_ingrediente_quantidade ) & estoque_ingrediente_quantidade ( ii ) < 10 & trava = 0
            THEN estoque_ingrediente_quantidade := estoque_ingrediente_quantidade <+ { ii |-> min ( { estoque_ingrediente_quantidade ( ii ) + qq , 10 } ) }
        END ;



        decrementarIngredienteDoEstoque ( qq , ii ) =
            PRE ii : INGREDIENTES & qq : NAT & qq < 10 & qq > 0 & ii : dom ( estoque_ingrediente_quantidade ) & estoque_ingrediente_quantidade ( ii ) < 10 & trava = 0
            THEN estoque_ingrediente_quantidade := estoque_ingrediente_quantidade <+ { ii |-> max ( { estoque_ingrediente_quantidade ( ii ) - qq , 0 } ) }
        END ;


        atualizarReceitaAdicinandoIngrediente ( ii , aa ) =
            PRE ii : INGREDIENTES & aa : ALIMENTO & aa : dom ( receita_alimento_temporizacao ) & aa : dom ( receita_alimento_potenciaAtualencia ) & trava = 0
            THEN
                      receita_alimento_ingredientes :=         receita_alimento_ingredientes <+ { aa |-> ( receita_alimento_ingredientes ( aa ) \/ { ii } ) }
        END ;



//ATUALIZAR RECEITA REMOVENDO INGREDIENTE


        limparIngredientesReceita ( aa ) =
           PRE aa : ALIMENTO & aa : dom ( receita_alimento_temporizacao ) & aa : dom ( receita_alimento_potenciaAtualencia ) & card ( receita_alimento_ingredientes ( aa ) ) > 0 & trava = 0
        THEN
                receita_alimento_ingredientes := receita_alimento_ingredientes <+ { aa |-> {} }
        END ;



        cadastrarReceita ( ii , aa , tt , pp ) =
        PRE ii : INGREDIENTES & aa : ALIMENTO & tt : 1 .. 7200 & pp : 150 .. 260 & aa /: dom ( receita_alimento_temporizacao ) & aa /: dom ( receita_alimento_potenciaAtualencia ) & trava = 0
        THEN
                receita_alimento_ingredientes := receita_alimento_ingredientes \/ { aa |-> {} } ||
                receita_alimento_temporizacao := receita_alimento_temporizacao \/ { aa |-> tt } ||
                receita_alimento_potenciaAtualencia := receita_alimento_potenciaAtualencia \/ { aa |-> pp }
        END ;


        fazerAlimento ( aa ) =
        PRE aa : ALIMENTO & aa : dom ( receita_alimento_ingredientes ) & trava = 0 & tempoDeUso < MAXINT

        THEN        qntAlimentosProduzidos := qntAlimentosProduzidos + 1  ||
                segundosTemp := receita_alimento_temporizacao ( aa ) ||
                potenciaAtual := receita_alimento_potenciaAtualencia ( aa ) ||
                trava := 1 ||
                tempoDeUso := tempoDeUso + receita_alimento_temporizacao ( aa ) ||

                ANY yy WHERE yy : receita_alimento_ingredientes ( aa ) THEN
                        IF estoque_ingrediente_quantidade ( yy ) > 0 THEN
                                       estoque_ingrediente_quantidade := estoque_ingrediente_quantidade <+ { yy |-> max ( { estoque_ingrediente_quantidade ( yy ) - 1 , 0 } ) }
                        END
                END
        END


END
