MACHINE
    Forno

SETS
    INGREDIENTES ;
    ALIMENTO

ABSTRACT_VARIABLES

    //CONFIGURAÇÕES DA RECEITA (ALIMENTO)
    receita_alimento_ingrediente , //receita_al_inR ,
    receita_ingrediente_quantidade , //receita_in_qntR ,
    potencia_alimento_valor , //potenciaR ,
    temporizador_alimento_valor , //temporizacaoR ,

    //ESTOQUE
    estoque_ingrediente_quantidade , //estoqueR ,

    //UTILITÁRIOS
    cronometro , //cron ,
    trava , //trav ,
    potencia , //pot ,
    index_ingrediente , //index_in ,
    tempoUso //tempoDeUso ,
    //quantidadeIngrediente//qtdIng


INVARIANT

    receita_alimento_ingrediente : ALIMENTO <-> POW ( INGREDIENTES ) &
    receita_ingrediente_quantidade : POW ( INGREDIENTES ) <-> NAT1 &
    //estoque_ingrediente_quantidade : INGREDIENTES +-> 0 .. 10 &
    estoque_ingrediente_quantidade : INGREDIENTES +-> 0 .. 2000 &
    //potencia_alimento_valor : ALIMENTO +-> NAT &
    potencia_alimento_valor : ALIMENTO +-> 150 .. 260 &
    //temporizador_alimento_valor : ALIMENTO +-> NAT &
    temporizador_alimento_valor : ALIMENTO +-> 1 .. 7200 &
    cronometro : 0 .. 7200 &
    //potencia : NAT &
    potencia : 0 .. 260 &
    trava : NAT &
    index_ingrediente : 0 .. card ( dom ( estoque_ingrediente_quantidade ) ) +-> INGREDIENTES &
    //tempoUso : NAT &
    tempoUso : 0 .. 7200
    //quantidadeIngrediente : 0..card(dom(estoque_ingrediente_quantidade))

INITIALISATION

    estoque_ingrediente_quantidade := {} ||
    receita_alimento_ingrediente := {} ||
    receita_ingrediente_quantidade := {} ||
    temporizador_alimento_valor := {} ||
    potencia_alimento_valor := {} ||
    cronometro := 0 ||
    potencia := 0 ||
    trava := 0 ||
    index_ingrediente := {} ||
    tempoUso := 0
    //quantidadeIngrediente := 0

OPERATIONS

    ee <-- numIngredientesNoEstoque =
    ee := card ( dom ( estoque_ingrediente_quantidade ) ) ;

    qq <-- qntIngredienteNoEstoque ( ii ) =
    PRE
        ii : INGREDIENTES &
        ii : dom ( estoque_ingrediente_quantidade )
    THEN qq := estoque_ingrediente_quantidade ( ii )
    END ;

    travarForno =
    PRE trava = 0
    THEN trava := 1
    END ;


    destravarForno =
    PRE trava = 1 & cronometro = 0
    THEN trava := 0
    END ;

   decrementaTempo =
        PRE cronometro > 0
        THEN cronometro := cronometro - 1
        END ;


    inserirNovoIngredienteNoEstoque ( qq , ii ) =
    PRE
        ii : INGREDIENTES & qq : NAT &
        qq < 2000 &
        qq > 0 &
        ii /: dom ( estoque_ingrediente_quantidade ) &
        trava = 0

    THEN IF ii /: dom ( estoque_ingrediente_quantidade )
        THEN estoque_ingrediente_quantidade := estoque_ingrediente_quantidade \/
              { ii |-> qq } || index_ingrediente := index_ingrediente \/
              { card ( dom ( estoque_ingrediente_quantidade ) ) |-> ii }
        END
    END ;


    incrementarIngredienteDoEstoque ( qq , ii ) =
    PRE
        ii : INGREDIENTES &
        qq : NAT &
        qq < 2000 &
        qq > 0 &
        ii : dom ( estoque_ingrediente_quantidade ) &
        estoque_ingrediente_quantidade ( ii ) < 2000 &
        trava = 0
    THEN estoque_ingrediente_quantidade := estoque_ingrediente_quantidade <+
                        { ii |-> min ( { estoque_ingrediente_quantidade ( ii ) + qq , 2000 } ) }
    END ;


    decrementarIngredienteDoEstoque ( qq , ii ) =
    PRE ii : INGREDIENTES &
        qq : NAT &
        qq < 2000 &
        qq > 0 &
        ii : dom ( estoque_ingrediente_quantidade ) &
        trava = 0 &
        estoque_ingrediente_quantidade ( ii ) < 2000
    THEN estoque_ingrediente_quantidade := estoque_ingrediente_quantidade <+
                        { ii |-> max ( { estoque_ingrediente_quantidade ( ii ) - qq , 0 } ) }
    END ;


    atualizarReceitaAdicinandoIngrediente ( ii , aa ) =
    PRE
        ii : INGREDIENTES &
        aa : ALIMENTO &
        aa : dom ( temporizador_alimento_valor ) &
        aa : dom ( potencia_alimento_valor ) &
        trava = 0
    THEN
        receita_alimento_ingrediente := receita_alimento_ingrediente <+
                    { aa |-> ( receita_alimento_ingrediente ( aa ) \/ { ii } ) }
    END ;


    cadastrarReceita ( ii , aa , tt , pp ) =
    PRE
        ii : INGREDIENTES &
        aa : ALIMENTO &
        tt : 1 .. 7200 &
        pp : 150 .. 260 &
        aa /: dom ( temporizador_alimento_valor ) &
        aa /: dom ( potencia_alimento_valor ) &
        trava = 0
    THEN
        receita_alimento_ingrediente := receita_alimento_ingrediente \/ { aa |-> {} } ||
        temporizador_alimento_valor := temporizador_alimento_valor \/ { aa |-> tt } ||
        potencia_alimento_valor := potencia_alimento_valor \/ { aa |-> pp }
    END ;


    fazerAlimento ( aa ) =
    PRE
        aa : ALIMENTO &
        aa : dom ( receita_alimento_ingrediente ) &
        trava = 0

    THEN
        trava := 1 ||
        cronometro := temporizador_alimento_valor ( aa ) ||
            ANY yy WHERE yy : receita_alimento_ingrediente ( aa ) THEN
                IF estoque_ingrediente_quantidade ( yy ) > 0 THEN
                    estoque_ingrediente_quantidade := estoque_ingrediente_quantidade <+
                    { yy |-> max ( { estoque_ingrediente_quantidade ( yy ) - 1 , 0 } ) }
                END
            END
    END
END
