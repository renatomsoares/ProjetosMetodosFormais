MACHINE Forno

SETS INGREDIENTES ;
    ALIMENTO


ABSTRACT_VARIABLES receita_al_inR ,
    receita_in_qntR ,
    estoqueR ,
    potenciaR ,
    temporizacaoR ,
    cron ,
    trav ,
    pot ,
    index_in ,
    tempoDeUso ,
    qtdIng


INVARIANT

    receita_al_inR : ALIMENTO <-> POW ( INGREDIENTES ) &
    receita_in_qntR : POW ( INGREDIENTES ) <-> NAT1 &
    estoqueR : INGREDIENTES +-> 0 .. 10 &
    potenciaR : ALIMENTO +-> NAT &
    temporizacaoR : ALIMENTO +-> NAT &
    cron : NAT &
    pot : NAT &
    trav : NAT &
    index_in : 0 .. card ( dom ( estoqueR ) ) +-> INGREDIENTES &
    tempoDeUso : NAT &
    qtdIng : 0 .. card ( dom ( estoqueR ) )


INITIALISATION

    estoqueR := {} ||
    receita_al_inR := {} ||
    receita_in_qntR := {} ||
    temporizacaoR := {} ||
    potenciaR := {} ||
    cron := 0 || pot := 0 ||
    trav := 0 ||
    index_in := {} ||
    tempoDeUso := 0 ||
    qtdIng := 0

OPERATIONS


    ee <-- numIngredientesNoEstoque =
    ee := card ( dom ( estoqueR ) ) ;


    qq <-- qntIngredienteNoEstoque ( ii ) =
    PRE ii : INGREDIENTES & ii : dom ( estoqueR )
    THEN qq := estoqueR ( ii )
    END ;

    travarForno =
    PRE trav = 1
    THEN trav := 0
    END ;


    destravarForno =
    PRE trav = 0
    THEN trav := 1
    END ;


    inserirNovoIngredienteNoEstoque ( qq , ii ) =
    PRE ii : INGREDIENTES & qq : NAT & qq < 10 & qq > 0 & ii /: dom ( estoqueR )
    THEN IF ii /: dom ( estoqueR )
        THEN estoqueR := estoqueR \/ { ii |-> qq } || index_in := index_in \/ { card ( dom ( estoqueR ) ) |-> ii } END
    END ;


    incrementarIngredienteDoEstoque ( qq , ii ) =
    PRE ii : INGREDIENTES & qq : NAT & qq < 10 & qq > 0 & ii : dom ( estoqueR ) & estoqueR ( ii ) < 10
    THEN estoqueR := estoqueR <+ { ii |-> min ( { estoqueR ( ii ) + qq , 10 } ) }
    END ;


    decrementarIngredienteDoEstoque ( qq , ii ) =
    PRE ii : INGREDIENTES & qq : NAT & qq < 10 & qq > 0 & ii : dom ( estoqueR ) & estoqueR ( ii ) < 10
    THEN estoqueR := estoqueR <+ { ii |-> max ( { estoqueR ( ii ) - qq , 0 } ) }
    END ;


    atualizarReceitaAdicinandoIngrediente ( ii , aa ) =
    PRE ii : INGREDIENTES & aa : ALIMENTO & aa : dom ( temporizacaoR ) & aa : dom ( potenciaR )
    THEN
        receita_al_inR :=         receita_al_inR <+ { aa |-> ( receita_al_inR ( aa ) \/ { ii } ) }
    END ;


    cadastrarReceita ( ii , aa , tt , pp ) =
    PRE ii : INGREDIENTES & aa : ALIMENTO & tt : NAT1 & pp : NAT1 & aa /: dom ( temporizacaoR ) & aa /: dom ( potenciaR )
    THEN
        receita_al_inR := receita_al_inR \/ { aa |-> {} } ||
        temporizacaoR := temporizacaoR \/ { aa |-> tt } ||
        potenciaR := potenciaR \/ { aa |-> pp }
    END ;


    fazerAlimento ( aa ) =
    PRE aa : ALIMENTO & aa : dom ( receita_al_inR ) & trav = 1 & tempoDeUso < MAXINT

    THEN cron := 0 || trav := 0 || tempoDeUso := tempoDeUso + temporizacaoR ( aa ) ||

        ANY yy WHERE yy : receita_al_inR ( aa ) THEN
            IF estoqueR ( yy ) > 0 THEN
                estoqueR := estoqueR <+ { yy |-> max ( { estoqueR ( yy ) - 1 , 0 } ) }
            END
        END
    END


END
