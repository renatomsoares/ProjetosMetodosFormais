Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(Forno_i))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(Forno_i))==(Machine(Forno));
  Level(Implementation(Forno_i))==(2);
  Upper_Level(Implementation(Forno_i))==(Refinement(Forno_r))
END
&
THEORY LoadedStructureX IS
  Implementation(Forno_i)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(Forno_i))==(?)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(Forno_i))==(?);
  Inherited_List_Includes(Implementation(Forno_i))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(Forno_i))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(Forno_i))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(Forno_i))==(?);
  Context_List_Variables(Implementation(Forno_i))==(?);
  Abstract_List_Variables(Implementation(Forno_i))==(r_cronometro,qtd_receita,qtd_ing_estoque,qtd_alimento,r_in_index,existe,r_trava,r_estoque,r_ingredientes,r_receita,r_alimento,r_tempo,r_potencia,tempoUso,index_ingrediente,potencia,trava,cronometro,estoque_ingrediente_quantidade,temporizador_alimento_valor,potencia_alimento_valor,receita_ingrediente_quantidade,receita_alimento_ingrediente);
  Local_List_Variables(Implementation(Forno_i))==(?);
  List_Variables(Implementation(Forno_i))==(?);
  External_List_Variables(Implementation(Forno_i))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(Forno_i))==(?);
  Abstract_List_VisibleVariables(Implementation(Forno_i))==(?);
  External_List_VisibleVariables(Implementation(Forno_i))==(?);
  Expanded_List_VisibleVariables(Implementation(Forno_i))==(?);
  List_VisibleVariables(Implementation(Forno_i))==(r_cronometro,qtd_ing_estoque,qtd_alimento,qtd_receita,r_in_index,r_trava,r_estoque,r_ingredientes,r_receita,r_alimento,r_tempo,r_potencia);
  Internal_List_VisibleVariables(Implementation(Forno_i))==(r_cronometro,qtd_ing_estoque,qtd_alimento,qtd_receita,r_in_index,r_trava,r_estoque,r_ingredientes,r_receita,r_alimento,r_tempo,r_potencia)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(Forno_i))==(btrue);
  Expanded_List_Invariant(Implementation(Forno_i))==(btrue);
  Abstract_List_Invariant(Implementation(Forno_i))==(qtd_alimento: NAT & qtd_ing_estoque: NAT & qtd_receita: NAT & existe: INGREDIENTES --> NAT & r_in_index: INGREDIENTES --> NAT & r_trava: NAT & r_potencia: 0..15 --> NAT1 & r_potencia[0..15] = ran(potencia_alimento_valor) & r_tempo: 0..15 --> NAT1 & r_tempo[0..15] = ran(temporizador_alimento_valor) & r_estoque: 0..15 --> NAT & r_estoque[0..15] = ran(estoque_ingrediente_quantidade) & r_alimento: 0..15 --> NAT & r_ingredientes: 0..15 --> INGREDIENTES & r_receita: ALIMENTO --> NAT & r_cronometro: NAT & receita_alimento_ingrediente: ALIMENTO <-> POW(INGREDIENTES) & receita_ingrediente_quantidade: POW(INGREDIENTES) <-> NAT1 & estoque_ingrediente_quantidade: INGREDIENTES +-> 0..2000 & potencia_alimento_valor: ALIMENTO +-> 150..260 & temporizador_alimento_valor: ALIMENTO +-> 1..7200 & cronometro: 0..7200 & potencia: 0..260 & trava: NAT & index_ingrediente: 0..card(dom(estoque_ingrediente_quantidade)) +-> INGREDIENTES & tempoUso: 0..7200);
  Context_List_Invariant(Implementation(Forno_i))==(btrue);
  List_Invariant(Implementation(Forno_i))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Implementation(Forno_i))==(btrue);
  Abstract_List_Assertions(Implementation(Forno_i))==(btrue);
  Context_List_Assertions(Implementation(Forno_i))==(btrue);
  List_Assertions(Implementation(Forno_i))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Implementation(Forno_i))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Implementation(Forno_i))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(Forno_i))==((0: dom(r_potencia) & 0: INT | r_potencia:=r_potencia<+{0|->0});(0: dom(r_tempo) & 0: INT | r_tempo:=r_tempo<+{0|->0});(0: dom(r_estoque) & 0: INT | r_estoque:=r_estoque<+{0|->0});(0: dom(r_ingredientes) & 0: INT | r_ingredientes:=r_ingredientes<+{0|->0});(0: dom(r_receita) & 0: INT | r_receita:=r_receita<+{0|->0});(0: dom(r_alimento) & 0: INT | r_alimento:=r_alimento<+{0|->0});(0: INT | r_trava:=0);(0: dom(r_in_index) & 1: INT | r_in_index:=r_in_index<+{0|->1});(0: INT | qtd_receita:=0);(0: INT | qtd_alimento:=0);(0: INT | qtd_ing_estoque:=0);(0: INT | r_cronometro:=0));
  Context_List_Initialisation(Implementation(Forno_i))==(skip);
  List_Initialisation(Implementation(Forno_i))==(r_potencia(0):=0;r_tempo(0):=0;r_estoque(0):=0;r_ingredientes(0):=0;r_receita(0):=0;r_alimento(0):=0;r_trava:=0;r_in_index(0):=1;qtd_receita:=0;qtd_alimento:=0;qtd_ing_estoque:=0;r_cronometro:=0)
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(Forno_i))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(Forno_i))==(btrue);
  List_Context_Constraints(Implementation(Forno_i))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(Forno_i))==(numIngredientesNoEstoque,qntIngredienteNoEstoque,travarForno,destravarForno,decrementaTempo,inserirNovoIngredienteNoEstoque,incrementarIngredienteDoEstoque,decrementarIngredienteDoEstoque,atualizarReceitaAdicinandoIngrediente,cadastrarReceita,fazerAlimento);
  List_Operations(Implementation(Forno_i))==(numIngredientesNoEstoque,qntIngredienteNoEstoque,travarForno,destravarForno,decrementaTempo,inserirNovoIngredienteNoEstoque,incrementarIngredienteDoEstoque,decrementarIngredienteDoEstoque,atualizarReceitaAdicinandoIngrediente,cadastrarReceita,fazerAlimento)
END
&
THEORY ListInputX IS
  List_Input(Implementation(Forno_i),numIngredientesNoEstoque)==(?);
  List_Input(Implementation(Forno_i),qntIngredienteNoEstoque)==(ii);
  List_Input(Implementation(Forno_i),travarForno)==(?);
  List_Input(Implementation(Forno_i),destravarForno)==(?);
  List_Input(Implementation(Forno_i),decrementaTempo)==(?);
  List_Input(Implementation(Forno_i),inserirNovoIngredienteNoEstoque)==(qq,ii);
  List_Input(Implementation(Forno_i),incrementarIngredienteDoEstoque)==(qq,ii);
  List_Input(Implementation(Forno_i),decrementarIngredienteDoEstoque)==(qq,ii);
  List_Input(Implementation(Forno_i),atualizarReceitaAdicinandoIngrediente)==(ii,aa);
  List_Input(Implementation(Forno_i),cadastrarReceita)==(ii,aa,tt,pp);
  List_Input(Implementation(Forno_i),fazerAlimento)==(aa)
END
&
THEORY ListOutputX IS
  List_Output(Implementation(Forno_i),numIngredientesNoEstoque)==(ee);
  List_Output(Implementation(Forno_i),qntIngredienteNoEstoque)==(qq);
  List_Output(Implementation(Forno_i),travarForno)==(?);
  List_Output(Implementation(Forno_i),destravarForno)==(?);
  List_Output(Implementation(Forno_i),decrementaTempo)==(?);
  List_Output(Implementation(Forno_i),inserirNovoIngredienteNoEstoque)==(?);
  List_Output(Implementation(Forno_i),incrementarIngredienteDoEstoque)==(?);
  List_Output(Implementation(Forno_i),decrementarIngredienteDoEstoque)==(?);
  List_Output(Implementation(Forno_i),atualizarReceitaAdicinandoIngrediente)==(?);
  List_Output(Implementation(Forno_i),cadastrarReceita)==(?);
  List_Output(Implementation(Forno_i),fazerAlimento)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Implementation(Forno_i),numIngredientesNoEstoque)==(ee <-- numIngredientesNoEstoque);
  List_Header(Implementation(Forno_i),qntIngredienteNoEstoque)==(qq <-- qntIngredienteNoEstoque(ii));
  List_Header(Implementation(Forno_i),travarForno)==(travarForno);
  List_Header(Implementation(Forno_i),destravarForno)==(destravarForno);
  List_Header(Implementation(Forno_i),decrementaTempo)==(decrementaTempo);
  List_Header(Implementation(Forno_i),inserirNovoIngredienteNoEstoque)==(inserirNovoIngredienteNoEstoque(qq,ii));
  List_Header(Implementation(Forno_i),incrementarIngredienteDoEstoque)==(incrementarIngredienteDoEstoque(qq,ii));
  List_Header(Implementation(Forno_i),decrementarIngredienteDoEstoque)==(decrementarIngredienteDoEstoque(qq,ii));
  List_Header(Implementation(Forno_i),atualizarReceitaAdicinandoIngrediente)==(atualizarReceitaAdicinandoIngrediente(ii,aa));
  List_Header(Implementation(Forno_i),cadastrarReceita)==(cadastrarReceita(ii,aa,tt,pp));
  List_Header(Implementation(Forno_i),fazerAlimento)==(fazerAlimento(aa))
END
&
THEORY ListPreconditionX IS
  Own_Precondition(Implementation(Forno_i),numIngredientesNoEstoque)==(btrue);
  List_Precondition(Implementation(Forno_i),numIngredientesNoEstoque)==(btrue);
  Own_Precondition(Implementation(Forno_i),qntIngredienteNoEstoque)==(btrue);
  List_Precondition(Implementation(Forno_i),qntIngredienteNoEstoque)==(ii: INGREDIENTES & ii: dom(estoque_ingrediente_quantidade));
  Own_Precondition(Implementation(Forno_i),travarForno)==(btrue);
  List_Precondition(Implementation(Forno_i),travarForno)==(r_trava = 1 & trava = 0);
  Own_Precondition(Implementation(Forno_i),destravarForno)==(btrue);
  List_Precondition(Implementation(Forno_i),destravarForno)==(r_trava = 0 & trava = 1 & cronometro = 0);
  Own_Precondition(Implementation(Forno_i),decrementaTempo)==(btrue);
  List_Precondition(Implementation(Forno_i),decrementaTempo)==(r_cronometro>0 & cronometro>0);
  Own_Precondition(Implementation(Forno_i),inserirNovoIngredienteNoEstoque)==(btrue);
  List_Precondition(Implementation(Forno_i),inserirNovoIngredienteNoEstoque)==(ii: INGREDIENTES & qq: NAT & qq<2000 & qq>0 & ii/:dom(estoque_ingrediente_quantidade) & trava = 0);
  Own_Precondition(Implementation(Forno_i),incrementarIngredienteDoEstoque)==(btrue);
  List_Precondition(Implementation(Forno_i),incrementarIngredienteDoEstoque)==(ii: INGREDIENTES & qq: NAT & qq<2000 & qq>0 & ii: dom(estoque_ingrediente_quantidade) & estoque_ingrediente_quantidade(ii)<2000 & trava = 0);
  Own_Precondition(Implementation(Forno_i),decrementarIngredienteDoEstoque)==(btrue);
  List_Precondition(Implementation(Forno_i),decrementarIngredienteDoEstoque)==(ii: INGREDIENTES & qq: NAT & qq<2000 & qq>0 & ii: dom(estoque_ingrediente_quantidade) & trava = 0 & estoque_ingrediente_quantidade(ii)<2000);
  Own_Precondition(Implementation(Forno_i),atualizarReceitaAdicinandoIngrediente)==(btrue);
  List_Precondition(Implementation(Forno_i),atualizarReceitaAdicinandoIngrediente)==(ii: INGREDIENTES & aa: ALIMENTO & aa: dom(temporizador_alimento_valor) & aa: dom(potencia_alimento_valor) & trava = 0);
  Own_Precondition(Implementation(Forno_i),cadastrarReceita)==(btrue);
  List_Precondition(Implementation(Forno_i),cadastrarReceita)==(ii: INGREDIENTES & aa: ALIMENTO & tt: 1..7200 & pp: 150..260 & aa/:dom(temporizador_alimento_valor) & aa/:dom(potencia_alimento_valor) & trava = 0);
  Own_Precondition(Implementation(Forno_i),fazerAlimento)==(btrue);
  List_Precondition(Implementation(Forno_i),fazerAlimento)==(r_trava = 1 & aa: ALIMENTO & aa: dom(receita_alimento_ingrediente) & trava = 0)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Implementation(Forno_i),fazerAlimento)==(r_trava = 1 & aa: ALIMENTO & aa: dom(receita_alimento_ingrediente) & trava = 0 | @count.(count:=0;WHILE count<=qtd_alimento DO count = aa ==> (count: dom(r_ingredientes) & r_ingredientes(count): dom(r_in_index) & r_in_index(r_ingredientes(count)): dom(r_estoque) & r_estoque(r_in_index(r_ingredientes(count)))-1: INT & r_estoque(r_in_index(r_ingredientes(count))): INT & 1: INT | r_estoque:=r_estoque<+{r_in_index(r_ingredientes(count))|->r_estoque(r_in_index(r_ingredientes(count)))-1}) [] not(count = aa) ==> skip;(count+1: INT & count: INT & 1: INT | count:=count+1) INVARIANT count: NAT VARIANT qtd_alimento-count END));
  Expanded_List_Substitution(Implementation(Forno_i),cadastrarReceita)==(ii: INGREDIENTES & aa: ALIMENTO & tt: 1..7200 & pp: 150..260 & aa/:dom(temporizador_alimento_valor) & aa/:dom(potencia_alimento_valor) & trava = 0 | (aa: dom(r_receita) & qtd_receita+1: INT & qtd_receita: INT & 1: INT | r_receita:=r_receita<+{aa|->qtd_receita+1});(qtd_alimento+1: INT & qtd_alimento: INT & 1: INT & qtd_alimento+1: dom(r_alimento) & r_receita(aa): INT & aa: dom(r_receita) | r_alimento:=r_alimento<+{qtd_alimento+1|->r_receita(aa)});(qtd_alimento+1: INT & qtd_alimento: INT & 1: INT & qtd_alimento+1: dom(r_ingredientes) & ii: INT | r_ingredientes:=r_ingredientes<+{qtd_alimento+1|->ii});(qtd_alimento+1: INT & qtd_alimento: INT & 1: INT & qtd_alimento+1: dom(r_tempo) & tt: INT | r_tempo:=r_tempo<+{qtd_alimento+1|->tt});(qtd_alimento+1: INT & qtd_alimento: INT & 1: INT & qtd_alimento+1: dom(r_potencia) & pp: INT | r_potencia:=r_potencia<+{qtd_alimento+1|->pp});(qtd_receita+1: INT & qtd_receita: INT & 1: INT | qtd_receita:=qtd_receita+1);(qtd_alimento+1: INT & qtd_alimento: INT & 1: INT | qtd_alimento:=qtd_alimento+1));
  Expanded_List_Substitution(Implementation(Forno_i),atualizarReceitaAdicinandoIngrediente)==(ii: INGREDIENTES & aa: ALIMENTO & aa: dom(temporizador_alimento_valor) & aa: dom(potencia_alimento_valor) & trava = 0 | (qtd_alimento+1: INT & qtd_alimento: INT & 1: INT & qtd_alimento+1: dom(r_alimento) & r_receita(aa): INT & aa: dom(r_receita) | r_alimento:=r_alimento<+{qtd_alimento+1|->r_receita(aa)});(qtd_alimento+1: INT & qtd_alimento: INT & 1: INT & qtd_alimento+1: dom(r_ingredientes) & ii: INT | r_ingredientes:=r_ingredientes<+{qtd_alimento+1|->ii});(qtd_alimento+1: INT & qtd_alimento: INT & 1: INT | qtd_alimento:=qtd_alimento+1));
  Expanded_List_Substitution(Implementation(Forno_i),decrementarIngredienteDoEstoque)==(ii: INGREDIENTES & qq: NAT & qq<2000 & qq>0 & ii: dom(estoque_ingrediente_quantidade) & trava = 0 & estoque_ingrediente_quantidade(ii)<2000 | @xx.((ii: dom(r_in_index) & r_in_index(ii): dom(r_estoque) & r_estoque(r_in_index(ii))-qq: INT & r_estoque(r_in_index(ii)): INT & qq: INT | xx:=r_estoque(r_in_index(ii))-qq);(xx>0 ==> (ii: dom(r_in_index) & r_in_index(ii): dom(r_estoque) & r_estoque(r_in_index(ii))+qq: INT & r_estoque(r_in_index(ii)): INT & qq: INT | r_estoque:=r_estoque<+{r_in_index(ii)|->r_estoque(r_in_index(ii))+qq}) [] not(xx>0) ==> (ii: dom(r_in_index) & r_in_index(ii): dom(r_estoque) & 0: INT | r_estoque:=r_estoque<+{r_in_index(ii)|->0}))));
  Expanded_List_Substitution(Implementation(Forno_i),incrementarIngredienteDoEstoque)==(ii: INGREDIENTES & qq: NAT & qq<2000 & qq>0 & ii: dom(estoque_ingrediente_quantidade) & estoque_ingrediente_quantidade(ii)<2000 & trava = 0 | @xx.((ii: dom(r_in_index) & r_in_index(ii): dom(r_estoque) & r_estoque(r_in_index(ii))+qq: INT & r_estoque(r_in_index(ii)): INT & qq: INT | xx:=r_estoque(r_in_index(ii))+qq);(xx<10 ==> (ii: dom(r_in_index) & r_in_index(ii): dom(r_estoque) & r_estoque(r_in_index(ii))+qq: INT & r_estoque(r_in_index(ii)): INT & qq: INT | r_estoque:=r_estoque<+{r_in_index(ii)|->r_estoque(r_in_index(ii))+qq}) [] not(xx<10) ==> (ii: dom(r_in_index) & r_in_index(ii): dom(r_estoque) & 10: INT | r_estoque:=r_estoque<+{r_in_index(ii)|->10}))));
  Expanded_List_Substitution(Implementation(Forno_i),inserirNovoIngredienteNoEstoque)==(ii: INGREDIENTES & qq: NAT & qq<2000 & qq>0 & ii/:dom(estoque_ingrediente_quantidade) & trava = 0 | @(ingrediente,count,achou).(ingrediente:=0;count:=0;achou:=0;WHILE count<=qtd_ing_estoque DO count = ii ==> (1: INT | achou:=1) [] not(count = ii) ==> skip;(count+1: INT & count: INT & 1: INT | count:=count+1) INVARIANT ingrediente: INGREDIENTES & count: NAT VARIANT qtd_ing_estoque-count END;(achou = 0 ==> ((qtd_ing_estoque+1: INT & qtd_ing_estoque: INT & 1: INT & qtd_ing_estoque+1: dom(r_estoque) & qq: INT | r_estoque:=r_estoque<+{qtd_ing_estoque+1|->qq});(ii: dom(r_in_index) & qtd_ing_estoque+1: INT & qtd_ing_estoque: INT & 1: INT | r_in_index:=r_in_index<+{ii|->qtd_ing_estoque+1});(qtd_ing_estoque+1: INT & qtd_ing_estoque: INT & 1: INT | qtd_ing_estoque:=qtd_ing_estoque+1)) [] not(achou = 0) ==> skip)));
  Expanded_List_Substitution(Implementation(Forno_i),decrementaTempo)==(r_cronometro>0 & cronometro>0 & r_cronometro-1: INT & r_cronometro: INT & 1: INT | r_cronometro:=r_cronometro-1);
  Expanded_List_Substitution(Implementation(Forno_i),destravarForno)==(r_trava = 0 & trava = 1 & cronometro = 0 & 1: INT | r_trava:=1);
  Expanded_List_Substitution(Implementation(Forno_i),travarForno)==(r_trava = 1 & trava = 0 & 0: INT | r_trava:=0);
  Expanded_List_Substitution(Implementation(Forno_i),qntIngredienteNoEstoque)==(ii: INGREDIENTES & ii: dom(estoque_ingrediente_quantidade) | @(ingrediente,count).(ingrediente:=0;count:=0;WHILE ingrediente/=ii DO (r_ingredientes(r_in_index(ii)): INT & ii: dom(r_in_index) & r_in_index(ii): dom(r_ingredientes) | ingrediente:=r_ingredientes(r_in_index(ii)));(count+1: INT & count: INT & 1: INT | count:=count+1) INVARIANT ingrediente: INGREDIENTES & count: NAT VARIANT qtd_ing_estoque-count END;(r_estoque(count): INT & count: dom(r_estoque) | qq:=r_estoque(count))));
  Expanded_List_Substitution(Implementation(Forno_i),numIngredientesNoEstoque)==(btrue & qtd_ing_estoque: INT | ee:=qtd_ing_estoque);
  List_Substitution(Implementation(Forno_i),numIngredientesNoEstoque)==(ee:=qtd_ing_estoque);
  List_Substitution(Implementation(Forno_i),qntIngredienteNoEstoque)==(VAR ingrediente,count IN ingrediente:=0;count:=0;WHILE ingrediente/=ii DO ingrediente:=r_ingredientes(r_in_index(ii));count:=count+1 INVARIANT ingrediente: INGREDIENTES & count: NAT VARIANT qtd_ing_estoque-count END;qq:=r_estoque(count) END);
  List_Substitution(Implementation(Forno_i),travarForno)==(r_trava:=0);
  List_Substitution(Implementation(Forno_i),destravarForno)==(r_trava:=1);
  List_Substitution(Implementation(Forno_i),decrementaTempo)==(r_cronometro:=r_cronometro-1);
  List_Substitution(Implementation(Forno_i),inserirNovoIngredienteNoEstoque)==(VAR ingrediente,count,achou IN ingrediente:=0;count:=0;achou:=0;WHILE count<=qtd_ing_estoque DO IF count = ii THEN achou:=1 END;count:=count+1 INVARIANT ingrediente: INGREDIENTES & count: NAT VARIANT qtd_ing_estoque-count END;IF achou = 0 THEN r_estoque(qtd_ing_estoque+1):=qq;r_in_index(ii):=qtd_ing_estoque+1;qtd_ing_estoque:=qtd_ing_estoque+1 END END);
  List_Substitution(Implementation(Forno_i),incrementarIngredienteDoEstoque)==(VAR xx IN xx:=r_estoque(r_in_index(ii))+qq;IF xx<10 THEN r_estoque(r_in_index(ii)):=r_estoque(r_in_index(ii))+qq ELSE r_estoque(r_in_index(ii)):=10 END END);
  List_Substitution(Implementation(Forno_i),decrementarIngredienteDoEstoque)==(VAR xx IN xx:=r_estoque(r_in_index(ii))-qq;IF xx>0 THEN r_estoque(r_in_index(ii)):=r_estoque(r_in_index(ii))+qq ELSE r_estoque(r_in_index(ii)):=0 END END);
  List_Substitution(Implementation(Forno_i),atualizarReceitaAdicinandoIngrediente)==(r_alimento(qtd_alimento+1):=r_receita(aa);r_ingredientes(qtd_alimento+1):=ii;qtd_alimento:=qtd_alimento+1);
  List_Substitution(Implementation(Forno_i),cadastrarReceita)==(r_receita(aa):=qtd_receita+1;r_alimento(qtd_alimento+1):=r_receita(aa);r_ingredientes(qtd_alimento+1):=ii;r_tempo(qtd_alimento+1):=tt;r_potencia(qtd_alimento+1):=pp;qtd_receita:=qtd_receita+1;qtd_alimento:=qtd_alimento+1);
  List_Substitution(Implementation(Forno_i),fazerAlimento)==(VAR count IN count:=0;WHILE count<=qtd_alimento DO IF count = aa THEN r_estoque(r_in_index(r_ingredientes(count))):=r_estoque(r_in_index(r_ingredientes(count)))-1 END;count:=count+1 INVARIANT count: NAT VARIANT qtd_alimento-count END END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(Forno_i))==(?);
  Inherited_List_Constants(Implementation(Forno_i))==(?);
  List_Constants(Implementation(Forno_i))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Implementation(Forno_i),ALIMENTO)==(?);
  Context_List_Enumerated(Implementation(Forno_i))==(?);
  Context_List_Defered(Implementation(Forno_i))==(?);
  Context_List_Sets(Implementation(Forno_i))==(?);
  List_Own_Enumerated(Implementation(Forno_i))==(?);
  List_Valuable_Sets(Implementation(Forno_i))==(INGREDIENTES,ALIMENTO);
  Inherited_List_Enumerated(Implementation(Forno_i))==(?);
  Inherited_List_Defered(Implementation(Forno_i))==(INGREDIENTES,ALIMENTO);
  Inherited_List_Sets(Implementation(Forno_i))==(INGREDIENTES,ALIMENTO);
  List_Enumerated(Implementation(Forno_i))==(?);
  List_Defered(Implementation(Forno_i))==(?);
  List_Sets(Implementation(Forno_i))==(?);
  Set_Definition(Implementation(Forno_i),INGREDIENTES)==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(Forno_i))==(?);
  Expanded_List_HiddenConstants(Implementation(Forno_i))==(?);
  List_HiddenConstants(Implementation(Forno_i))==(?);
  External_List_HiddenConstants(Implementation(Forno_i))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(Forno_i))==(INGREDIENTES: FIN(INTEGER) & not(INGREDIENTES = {}) & ALIMENTO: FIN(INTEGER) & not(ALIMENTO = {}));
  Context_List_Properties(Implementation(Forno_i))==(btrue);
  Inherited_List_Properties(Implementation(Forno_i))==(btrue);
  List_Properties(Implementation(Forno_i))==(btrue)
END
&
THEORY ListValuesX IS
  Precond_Valued_Objects(Implementation(Forno_i))==(btrue);
  Values_Subs(Implementation(Forno_i))==(INGREDIENTES,ALIMENTO: 0..1890,0..1890);
  List_Values(Implementation(Forno_i))==(INGREDIENTES = 0..1890;ALIMENTO = 0..1890)
END
&
THEORY ListSeenInfoX END
&
THEORY ListIncludedOperationsX END
&
THEORY InheritedEnvX IS
  VisibleVariables(Implementation(Forno_i))==(Type(r_potencia) == Mvv(SetOf(btype(INTEGER,0,15)*btype(INTEGER,1,MAXINT)));Type(r_tempo) == Mvv(SetOf(btype(INTEGER,0,15)*btype(INTEGER,1,MAXINT)));Type(r_alimento) == Mvv(SetOf(btype(INTEGER,0,15)*btype(INTEGER,0,MAXINT)));Type(r_receita) == Mvv(SetOf(btype(INTEGER,"[ALIMENTO","]ALIMENTO")*btype(INTEGER,0,MAXINT)));Type(r_ingredientes) == Mvv(SetOf(btype(INTEGER,0,15)*btype(INTEGER,"[INGREDIENTES","]INGREDIENTES")));Type(r_estoque) == Mvv(SetOf(btype(INTEGER,0,15)*btype(INTEGER,0,MAXINT)));Type(r_trava) == Mvv(btype(INTEGER,?,?));Type(r_in_index) == Mvv(SetOf(btype(INTEGER,"[INGREDIENTES","]INGREDIENTES")*btype(INTEGER,0,MAXINT)));Type(qtd_receita) == Mvv(btype(INTEGER,?,?));Type(qtd_alimento) == Mvv(btype(INTEGER,?,?));Type(qtd_ing_estoque) == Mvv(btype(INTEGER,?,?));Type(r_cronometro) == Mvv(btype(INTEGER,?,?)));
  Operations(Implementation(Forno_i))==(Type(fazerAlimento) == Cst(No_type,atype(ALIMENTO,?,?));Type(cadastrarReceita) == Cst(No_type,atype(INGREDIENTES,?,?)*atype(ALIMENTO,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(atualizarReceitaAdicinandoIngrediente) == Cst(No_type,atype(INGREDIENTES,?,?)*atype(ALIMENTO,?,?));Type(decrementarIngredienteDoEstoque) == Cst(No_type,btype(INTEGER,?,?)*atype(INGREDIENTES,?,?));Type(incrementarIngredienteDoEstoque) == Cst(No_type,btype(INTEGER,?,?)*atype(INGREDIENTES,?,?));Type(inserirNovoIngredienteNoEstoque) == Cst(No_type,btype(INTEGER,?,?)*atype(INGREDIENTES,?,?));Type(decrementaTempo) == Cst(No_type,No_type);Type(destravarForno) == Cst(No_type,No_type);Type(travarForno) == Cst(No_type,No_type);Type(qntIngredienteNoEstoque) == Cst(btype(INTEGER,?,?),atype(INGREDIENTES,?,?));Type(numIngredientesNoEstoque) == Cst(btype(INTEGER,?,?),No_type))
END
&
THEORY ListVisibleStaticX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(Forno_i)) == (? | ? | ? | ? | numIngredientesNoEstoque,qntIngredienteNoEstoque,travarForno,destravarForno,decrementaTempo,inserirNovoIngredienteNoEstoque,incrementarIngredienteDoEstoque,decrementarIngredienteDoEstoque,atualizarReceitaAdicinandoIngrediente,cadastrarReceita,fazerAlimento | ? | ? | ? | Forno_i);
  List_Of_HiddenCst_Ids(Implementation(Forno_i)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(Forno_i)) == (?);
  List_Of_VisibleVar_Ids(Implementation(Forno_i)) == (r_cronometro,qtd_ing_estoque,qtd_alimento,qtd_receita,r_in_index,r_trava,r_estoque,r_ingredientes,r_receita,r_alimento,r_tempo,r_potencia | ?);
  List_Of_Ids_SeenBNU(Implementation(Forno_i)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Implementation(Forno_i)) == (Type(INGREDIENTES) == Cst(SetOf(btype(INTEGER,"[INGREDIENTES","]INGREDIENTES")));Type(ALIMENTO) == Cst(SetOf(btype(INTEGER,"[ALIMENTO","]ALIMENTO"))))
END
&
THEORY VisibleVariablesEnvX IS
  VisibleVariables(Implementation(Forno_i)) == (Type(r_cronometro) == Mvv(btype(INTEGER,?,?));Type(qtd_ing_estoque) == Mvv(btype(INTEGER,?,?));Type(qtd_alimento) == Mvv(btype(INTEGER,?,?));Type(qtd_receita) == Mvv(btype(INTEGER,?,?));Type(r_in_index) == Mvv(SetOf(btype(INTEGER,"[INGREDIENTES","]INGREDIENTES")*btype(INTEGER,0,MAXINT)));Type(r_trava) == Mvv(btype(INTEGER,?,?));Type(r_estoque) == Mvv(SetOf(btype(INTEGER,0,15)*btype(INTEGER,0,MAXINT)));Type(r_ingredientes) == Mvv(SetOf(btype(INTEGER,0,15)*btype(INTEGER,"[INGREDIENTES","]INGREDIENTES")));Type(r_receita) == Mvv(SetOf(btype(INTEGER,"[ALIMENTO","]ALIMENTO")*btype(INTEGER,0,MAXINT)));Type(r_alimento) == Mvv(SetOf(btype(INTEGER,0,15)*btype(INTEGER,0,MAXINT)));Type(r_tempo) == Mvv(SetOf(btype(INTEGER,0,15)*btype(INTEGER,1,MAXINT)));Type(r_potencia) == Mvv(SetOf(btype(INTEGER,0,15)*btype(INTEGER,1,MAXINT))))
END
&
THEORY VariablesLocEnvX IS
  Variables_Loc(Implementation(Forno_i),qntIngredienteNoEstoque, 1) == (Type(ingrediente) == Lvl(btype(INTEGER,?,?));Type(count) == Lvl(btype(INTEGER,?,?)));
  Variables_Loc(Implementation(Forno_i),inserirNovoIngredienteNoEstoque, 1) == (Type(ingrediente) == Lvl(btype(INTEGER,?,?));Type(count) == Lvl(btype(INTEGER,?,?));Type(achou) == Lvl(btype(INTEGER,?,?)));
  Variables_Loc(Implementation(Forno_i),incrementarIngredienteDoEstoque, 1) == (Type(xx) == Lvl(btype(INTEGER,?,?)));
  Variables_Loc(Implementation(Forno_i),decrementarIngredienteDoEstoque, 1) == (Type(xx) == Lvl(btype(INTEGER,?,?)));
  Variables_Loc(Implementation(Forno_i),fazerAlimento, 1) == (Type(count) == Lvl(btype(INTEGER,?,?)))
END
&
THEORY TCIntRdX IS
  predB0 == OK;
  extended_sees == KO;
  B0check_tab == KO;
  local_op == OK;
  abstract_constants_visible_in_values == KO;
  project_type == SOFTWARE_TYPE;
  event_b_deadlockfreeness == KO;
  variant_clause_mandatory == KO;
  event_b_coverage == KO;
  event_b_exclusivity == KO;
  genFeasibilityPO == KO
END
&
THEORY ListLocalOperationsX IS
  List_Local_Operations(Implementation(Forno_i))==(?)
END
&
THEORY ListLocalInputX END
&
THEORY ListLocalOutputX END
&
THEORY ListLocalHeaderX END
&
THEORY ListLocalPreconditionX END
&
THEORY ListLocalSubstitutionX END
&
THEORY TypingPredicateX IS
  TypingPredicate(Implementation(Forno_i))==(r_potencia: POW(INTEGER*INTEGER) & r_tempo: POW(INTEGER*INTEGER) & r_alimento: POW(INTEGER*INTEGER) & r_receita: POW(INTEGER*INTEGER) & r_ingredientes: POW(INTEGER*INTEGER) & r_estoque: POW(INTEGER*INTEGER) & r_trava: INTEGER & r_in_index: POW(INTEGER*INTEGER) & qtd_receita: INTEGER & qtd_alimento: INTEGER & qtd_ing_estoque: INTEGER & r_cronometro: INTEGER)
END
&
THEORY ImportedVariablesListX END
&
THEORY ListLocalOpInvariantX END
)
