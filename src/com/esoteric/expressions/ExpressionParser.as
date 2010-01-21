// $ANTLR 3.2 Sep 23, 2009 12:02:23 C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g 2010-01-21 22:19:00
package com.esoteric.expressions {
    import org.antlr.runtime.*;
        

    import org.antlr.runtime.tree.*;


    public class ExpressionParser extends Parser {
        public static const tokenNames:Array = [
            "<invalid>", "<EOR>", "<DOWN>", "<UP>", "StmtList", "InstrList", "FuncCall", "PropRef", "PropExp", "CondExp", "CreateArray", "IfStmt", "WhileStmt", "ForStmt", "FuncDef", "Return", "Local", "Identifier", "NumberLiteral", "StringLiteral", "LineComment", "MultilineComment", "Digit", "Exponent", "HexDigit", "EscapeSequence", "WhiteSpace", "Letter", "UnicodeEscapeChar", "'if'", "'('", "')'", "'else'", "'while'", "'{'", "'}'", "';'", "'='", "'*='", "'/='", "'%='", "'+='", "'-='", "'<<='", "'>>='", "'>>>='", "'&='", "'^='", "'|='", "'var'", "'?'", "':'", "'||'", "'or'", "'&&'", "'and'", "'|'", "'^'", "'&'", "'=='", "'!='", "'==='", "'!=='", "'<'", "'lt'", "'>'", "'gt'", "'<='", "'lte'", "'>='", "'gte'", "'<<'", "'>>'", "'>>>'", "'+'", "'-'", "'*'", "'/'", "'%'", "'~'", "'!'", "'true'", "'false'", "'null'", "'['", "']'", "'.'", "'function'", "','", "'return'"
        ];
        public static const T__68:int=68;
        public static const T__69:int=69;
        public static const T__66:int=66;
        public static const T__67:int=67;
        public static const StmtList:int=4;
        public static const T__29:int=29;
        public static const T__64:int=64;
        public static const T__65:int=65;
        public static const T__62:int=62;
        public static const T__63:int=63;
        public static const Exponent:int=23;
        public static const LineComment:int=20;
        public static const T__61:int=61;
        public static const EOF:int=-1;
        public static const T__60:int=60;
        public static const HexDigit:int=24;
        public static const PropExp:int=8;
        public static const Identifier:int=17;
        public static const T__55:int=55;
        public static const T__56:int=56;
        public static const T__57:int=57;
        public static const T__58:int=58;
        public static const T__51:int=51;
        public static const FuncDef:int=14;
        public static const T__52:int=52;
        public static const T__53:int=53;
        public static const T__54:int=54;
        public static const WhileStmt:int=12;
        public static const T__59:int=59;
        public static const IfStmt:int=11;
        public static const CondExp:int=9;
        public static const WhiteSpace:int=26;
        public static const Return:int=15;
        public static const T__50:int=50;
        public static const ForStmt:int=13;
        public static const CreateArray:int=10;
        public static const T__42:int=42;
        public static const T__43:int=43;
        public static const T__40:int=40;
        public static const T__41:int=41;
        public static const T__80:int=80;
        public static const T__46:int=46;
        public static const T__81:int=81;
        public static const T__47:int=47;
        public static const T__82:int=82;
        public static const T__44:int=44;
        public static const T__83:int=83;
        public static const T__45:int=45;
        public static const UnicodeEscapeChar:int=28;
        public static const NumberLiteral:int=18;
        public static const T__48:int=48;
        public static const T__49:int=49;
        public static const InstrList:int=5;
        public static const Digit:int=22;
        public static const T__85:int=85;
        public static const T__84:int=84;
        public static const T__87:int=87;
        public static const T__86:int=86;
        public static const T__89:int=89;
        public static const T__88:int=88;
        public static const StringLiteral:int=19;
        public static const T__30:int=30;
        public static const T__31:int=31;
        public static const Local:int=16;
        public static const T__32:int=32;
        public static const T__71:int=71;
        public static const T__33:int=33;
        public static const T__72:int=72;
        public static const T__34:int=34;
        public static const T__35:int=35;
        public static const T__70:int=70;
        public static const T__36:int=36;
        public static const T__37:int=37;
        public static const FuncCall:int=6;
        public static const T__38:int=38;
        public static const T__39:int=39;
        public static const PropRef:int=7;
        public static const T__76:int=76;
        public static const MultilineComment:int=21;
        public static const T__75:int=75;
        public static const T__74:int=74;
        public static const Letter:int=27;
        public static const EscapeSequence:int=25;
        public static const T__73:int=73;
        public static const T__79:int=79;
        public static const T__78:int=78;
        public static const T__77:int=77;

        // delegates
        // delegators


            public function ExpressionParser(input:TokenStream, state:RecognizerSharedState = null) {
                super(input, state);

                dfa5 = new DFA(this, 5,
                            "()* loopback of 83:3: ( ';' instr | ';' )*",
                            DFA5_eot, DFA5_eof, DFA5_min,
                            DFA5_max, DFA5_accept, DFA5_special,
                            DFA5_transition, DFA5_specialStateTransition);

                dfa7 = new DFA(this, 7,
                            "94:1: exp : ( assignExp | local | condExp );",
                            DFA7_eot, DFA7_eof, DFA7_min,
                            DFA7_max, DFA7_accept, DFA7_special,
                            DFA7_transition, DFA7_specialStateTransition);

                dfa19 = new DFA(this, 19,
                            "()* loopback of 204:3: ( '+' multExp | '-' multExp )*",
                            DFA19_eot, DFA19_eof, DFA19_min,
                            DFA19_max, DFA19_accept, DFA19_special,
                            DFA19_transition, DFA19_specialStateTransition);

                dfa25 = new DFA(this, 25,
                            "()* loopback of 240:3: ( '[' e= exp ']' -> ^( PropExp $reference $e) | '.' i= Identifier -> ^( PropRef $reference $i) | '(' (p= params )? ')' '[' e= exp ']' -> ^( PropExp ^( FuncCall $reference $p) $e) | '(' (p= params )? ')' '.' i= Identifier -> ^( PropRef ^( FuncCall $reference $p) $i) )*",
                            DFA25_eot, DFA25_eof, DFA25_min,
                            DFA25_max, DFA25_accept, DFA25_special,
                            DFA25_transition, DFA25_specialStateTransition);

                dfa26 = new DFA(this, 26,
                            "()* loopback of 255:3: ( '[' e= exp ']' -> ^( PropExp $referenceOrFuncCall $e) | '.' i= Identifier -> ^( PropRef $referenceOrFuncCall $i) | '(' p= params ')' -> ^( FuncCall $referenceOrFuncCall $p) | '(' ')' -> ^( FuncCall $referenceOrFuncCall) )*",
                            DFA26_eot, DFA26_eof, DFA26_min,
                            DFA26_max, DFA26_accept, DFA26_special,
                            DFA26_transition, DFA26_specialStateTransition);

                this.state.ruleMemo = new Array(112+1);
                 
            }
            
        protected var adaptor:TreeAdaptor = new CommonTreeAdaptor();

        override public function set treeAdaptor(adaptor:TreeAdaptor):void {
            this.adaptor = adaptor;
        }
        override public function get treeAdaptor():TreeAdaptor {
            return adaptor;
        }

        public override function get tokenNames():Array { return ExpressionParser.tokenNames; }
        public override function get grammarFileName():String { return "C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g"; }


        	private var _errorReporter:IErrorReporter;
        	
        	public function set errorReporter(reporter:IErrorReporter):void { _errorReporter = reporter; }
        	
        	override public function displayRecognitionError(tokenNames:Array, e:RecognitionException):void
        	{
        		var header:String = getErrorHeader(e);
        		var msg:String = getErrorMessage(e, tokenNames);
        		
        		_errorReporter.report(header, msg, e.line);
        	}


        // $ANTLR start main
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:49:1: main : ( stmtList EOF | EOF );
        public final function main():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var main_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var EOF2:Token=null;
            var EOF3:Token=null;
            var stmtList1:ParserRuleReturnScope = null;


            var EOF2_tree:CommonTree=null;
            var EOF3_tree:CommonTree=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 1) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:50:2: ( stmtList EOF | EOF )
                var alt1:int=2;
                var LA1_0:int = input.LA(1);

                if ( ((LA1_0>=17 && LA1_0<=19)||(LA1_0>=29 && LA1_0<=30)||LA1_0==33||LA1_0==49||(LA1_0>=74 && LA1_0<=75)||(LA1_0>=79 && LA1_0<=84)||LA1_0==87||LA1_0==89) ) {
                    alt1=1;
                }
                else if ( (LA1_0==-1) ) {
                    alt1=2;
                }
                else {
                    if (this.state.backtracking>0) {this.state.failed=true; return retval;}
                    throw new NoViableAltException("", 1, 0, input);

                }
                switch (alt1) {
                    case 1 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:50:4: stmtList EOF
                        {
                        root_0 = CommonTree(adaptor.nil());

                        pushFollow(FOLLOW_stmtList_in_main132);
                        stmtList1=stmtList();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) root_0 = CommonTree(adaptor.becomeRoot(stmtList1.tree, root_0));
                        EOF2=Token(matchStream(input,EOF,FOLLOW_EOF_in_main135)); if (this.state.failed) return retval;

                        }
                        break;
                    case 2 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:51:4: EOF
                        {
                        root_0 = CommonTree(adaptor.nil());

                        EOF3=Token(matchStream(input,EOF,FOLLOW_EOF_in_main141)); if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                        EOF3_tree = CommonTree(adaptor.create(EOF3));
                        adaptor.addChild(root_0, EOF3_tree);
                        }

                        }
                        break;

                }
                retval.stop = input.LT(-1);

                if ( this.state.backtracking==0 ) {

                retval.tree = CommonTree(adaptor.rulePostProcessing(root_0));
                adaptor.setTokenBoundaries(retval.tree, Token(retval.start), Token(retval.stop));
                }
            }
            catch (re:RecognitionException) {
                reportError(re);
                recoverStream(input,re);
                retval.tree = CommonTree(adaptor.errorNode(input, Token(retval.start), input.LT(-1), re));

            }
            finally {
                if ( this.state.backtracking>0 ) { memoize(input, 1, main_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end main

        // $ANTLR start stmtList
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:54:1: stmtList : stmt ( stmt )* -> ^( StmtList ( stmt )+ ) ;
        public final function stmtList():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var stmtList_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var stmt4:ParserRuleReturnScope = null;

            var stmt5:ParserRuleReturnScope = null;


            var stream_stmt:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule stmt");
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 2) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:55:2: ( stmt ( stmt )* -> ^( StmtList ( stmt )+ ) )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:55:4: stmt ( stmt )*
                {
                pushFollow(FOLLOW_stmt_in_stmtList153);
                stmt4=stmt();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) stream_stmt.add(stmt4.tree);
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:56:3: ( stmt )*
                loop2:
                do {
                    var alt2:int=2;
                    var LA2_0:int = input.LA(1);

                    if ( ((LA2_0>=17 && LA2_0<=19)||(LA2_0>=29 && LA2_0<=30)||LA2_0==33||LA2_0==49||(LA2_0>=74 && LA2_0<=75)||(LA2_0>=79 && LA2_0<=84)||LA2_0==87||LA2_0==89) ) {
                        alt2=1;
                    }


                    switch (alt2) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:57:4: stmt
                	    {
                	    pushFollow(FOLLOW_stmt_in_stmtList162);
                	    stmt5=stmt();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) stream_stmt.add(stmt5.tree);

                	    }
                	    break;

                	default :
                	    break loop2;
                    }
                } while (true);



                // AST REWRITE
                // elements: stmt
                // token labels: 
                // rule labels: retval
                // token list labels: 
                // rule list labels: 
                if ( this.state.backtracking==0 ) {
                retval.tree = root_0;
                var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                root_0 = CommonTree(adaptor.nil());
                // 58:10: -> ^( StmtList ( stmt )+ )
                {
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:58:13: ^( StmtList ( stmt )+ )
                    {
                    var root_1:CommonTree = CommonTree(adaptor.nil());
                    root_1 = CommonTree(adaptor.becomeRoot(CommonTree(adaptor.create(StmtList, "StmtList")), root_1));

                    if ( !(stream_stmt.hasNext) ) {
                        throw new RewriteEarlyExitException();
                    }
                    while ( stream_stmt.hasNext ) {
                        adaptor.addChild(root_1, stream_stmt.nextTree());

                    }
                    stream_stmt.reset();

                    adaptor.addChild(root_0, root_1);
                    }

                }

                retval.tree = root_0;}
                }

                retval.stop = input.LT(-1);

                if ( this.state.backtracking==0 ) {

                retval.tree = CommonTree(adaptor.rulePostProcessing(root_0));
                adaptor.setTokenBoundaries(retval.tree, Token(retval.start), Token(retval.stop));
                }
            }
            catch (re:RecognitionException) {
                reportError(re);
                recoverStream(input,re);
                retval.tree = CommonTree(adaptor.errorNode(input, Token(retval.start), input.LT(-1), re));

            }
            finally {
                if ( this.state.backtracking>0 ) { memoize(input, 2, stmtList_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end stmtList

        // $ANTLR start stmt
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:61:1: stmt : ( ifStmt | whileStmt | instrList );
        public final function stmt():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var stmt_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var ifStmt6:ParserRuleReturnScope = null;

            var whileStmt7:ParserRuleReturnScope = null;

            var instrList8:ParserRuleReturnScope = null;



            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 3) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:62:2: ( ifStmt | whileStmt | instrList )
                var alt3:int=3;
                switch ( input.LA(1) ) {
                case 29:
                    {
                    alt3=1;
                    }
                    break;
                case 33:
                    {
                    alt3=2;
                    }
                    break;
                case Identifier:
                case NumberLiteral:
                case StringLiteral:
                case 30:
                case 49:
                case 74:
                case 75:
                case 79:
                case 80:
                case 81:
                case 82:
                case 83:
                case 84:
                case 87:
                case 89:
                    {
                    alt3=3;
                    }
                    break;
                default:
                    if (this.state.backtracking>0) {this.state.failed=true; return retval;}
                    throw new NoViableAltException("", 3, 0, input);

                }

                switch (alt3) {
                    case 1 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:62:4: ifStmt
                        {
                        root_0 = CommonTree(adaptor.nil());

                        pushFollow(FOLLOW_ifStmt_in_stmt194);
                        ifStmt6=ifStmt();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) root_0 = CommonTree(adaptor.becomeRoot(ifStmt6.tree, root_0));

                        }
                        break;
                    case 2 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:63:4: whileStmt
                        {
                        root_0 = CommonTree(adaptor.nil());

                        pushFollow(FOLLOW_whileStmt_in_stmt200);
                        whileStmt7=whileStmt();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) root_0 = CommonTree(adaptor.becomeRoot(whileStmt7.tree, root_0));

                        }
                        break;
                    case 3 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:64:4: instrList
                        {
                        root_0 = CommonTree(adaptor.nil());

                        pushFollow(FOLLOW_instrList_in_stmt206);
                        instrList8=instrList();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) root_0 = CommonTree(adaptor.becomeRoot(instrList8.tree, root_0));

                        }
                        break;

                }
                retval.stop = input.LT(-1);

                if ( this.state.backtracking==0 ) {

                retval.tree = CommonTree(adaptor.rulePostProcessing(root_0));
                adaptor.setTokenBoundaries(retval.tree, Token(retval.start), Token(retval.stop));
                }
            }
            catch (re:RecognitionException) {
                reportError(re);
                recoverStream(input,re);
                retval.tree = CommonTree(adaptor.errorNode(input, Token(retval.start), input.LT(-1), re));

            }
            finally {
                if ( this.state.backtracking>0 ) { memoize(input, 3, stmt_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end stmt

        // $ANTLR start ifStmt
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:67:1: ifStmt : ( 'if' '(' exp ')' l= block 'else' r= block -> ^( IfStmt exp $l $r) | 'if' '(' exp ')' block 'else' ifStmt -> ^( IfStmt exp block ifStmt ) | 'if' '(' exp ')' block -> ^( IfStmt exp block ) );
        public final function ifStmt():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var ifStmt_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var string_literal9:Token=null;
            var char_literal10:Token=null;
            var char_literal12:Token=null;
            var string_literal13:Token=null;
            var string_literal14:Token=null;
            var char_literal15:Token=null;
            var char_literal17:Token=null;
            var string_literal19:Token=null;
            var string_literal21:Token=null;
            var char_literal22:Token=null;
            var char_literal24:Token=null;
            var l:ParserRuleReturnScope = null;

            var r:ParserRuleReturnScope = null;

            var exp11:ParserRuleReturnScope = null;

            var exp16:ParserRuleReturnScope = null;

            var block18:ParserRuleReturnScope = null;

            var ifStmt20:ParserRuleReturnScope = null;

            var exp23:ParserRuleReturnScope = null;

            var block25:ParserRuleReturnScope = null;


            var string_literal9_tree:CommonTree=null;
            var char_literal10_tree:CommonTree=null;
            var char_literal12_tree:CommonTree=null;
            var string_literal13_tree:CommonTree=null;
            var string_literal14_tree:CommonTree=null;
            var char_literal15_tree:CommonTree=null;
            var char_literal17_tree:CommonTree=null;
            var string_literal19_tree:CommonTree=null;
            var string_literal21_tree:CommonTree=null;
            var char_literal22_tree:CommonTree=null;
            var char_literal24_tree:CommonTree=null;
            var stream_30:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 30");
            var stream_32:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 32");
            var stream_31:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 31");
            var stream_29:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 29");
            var stream_exp:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule exp");
            var stream_block:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule block");
            var stream_ifStmt:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule ifStmt");
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 4) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:68:2: ( 'if' '(' exp ')' l= block 'else' r= block -> ^( IfStmt exp $l $r) | 'if' '(' exp ')' block 'else' ifStmt -> ^( IfStmt exp block ifStmt ) | 'if' '(' exp ')' block -> ^( IfStmt exp block ) )
                var alt4:int=3;
                var LA4_0:int = input.LA(1);

                if ( (LA4_0==29) ) {
                    var LA4_1:int = input.LA(2);

                    if ( (synpred5_Expression()) ) {
                        alt4=1;
                    }
                    else if ( (synpred6_Expression()) ) {
                        alt4=2;
                    }
                    else if ( (true) ) {
                        alt4=3;
                    }
                    else {
                        if (this.state.backtracking>0) {this.state.failed=true; return retval;}
                        throw new NoViableAltException("", 4, 1, input);

                    }
                }
                else {
                    if (this.state.backtracking>0) {this.state.failed=true; return retval;}
                    throw new NoViableAltException("", 4, 0, input);

                }
                switch (alt4) {
                    case 1 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:68:4: 'if' '(' exp ')' l= block 'else' r= block
                        {
                        string_literal9=Token(matchStream(input,29,FOLLOW_29_in_ifStmt219)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_29.add(string_literal9);

                        char_literal10=Token(matchStream(input,30,FOLLOW_30_in_ifStmt221)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_30.add(char_literal10);

                        pushFollow(FOLLOW_exp_in_ifStmt223);
                        exp11=exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_exp.add(exp11.tree);
                        char_literal12=Token(matchStream(input,31,FOLLOW_31_in_ifStmt225)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_31.add(char_literal12);

                        pushFollow(FOLLOW_block_in_ifStmt229);
                        l=block();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_block.add(l.tree);
                        string_literal13=Token(matchStream(input,32,FOLLOW_32_in_ifStmt231)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_32.add(string_literal13);

                        pushFollow(FOLLOW_block_in_ifStmt235);
                        r=block();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_block.add(r.tree);


                        // AST REWRITE
                        // elements: exp, l, r
                        // token labels: 
                        // rule labels: retval, r, l
                        // token list labels: 
                        // rule list labels: 
                        if ( this.state.backtracking==0 ) {
                        retval.tree = root_0;
                        var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);
                        var stream_r:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule r",r!=null?r.tree:null);
                        var stream_l:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule l",l!=null?l.tree:null);

                        root_0 = CommonTree(adaptor.nil());
                        // 68:44: -> ^( IfStmt exp $l $r)
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:68:47: ^( IfStmt exp $l $r)
                            {
                            var root_1:CommonTree = CommonTree(adaptor.nil());
                            root_1 = CommonTree(adaptor.becomeRoot(CommonTree(adaptor.create(IfStmt, "IfStmt")), root_1));

                            adaptor.addChild(root_1, stream_exp.nextTree());
                            adaptor.addChild(root_1, stream_l.nextTree());
                            adaptor.addChild(root_1, stream_r.nextTree());

                            adaptor.addChild(root_0, root_1);
                            }

                        }

                        retval.tree = root_0;}
                        }
                        break;
                    case 2 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:69:4: 'if' '(' exp ')' block 'else' ifStmt
                        {
                        string_literal14=Token(matchStream(input,29,FOLLOW_29_in_ifStmt254)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_29.add(string_literal14);

                        char_literal15=Token(matchStream(input,30,FOLLOW_30_in_ifStmt256)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_30.add(char_literal15);

                        pushFollow(FOLLOW_exp_in_ifStmt258);
                        exp16=exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_exp.add(exp16.tree);
                        char_literal17=Token(matchStream(input,31,FOLLOW_31_in_ifStmt260)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_31.add(char_literal17);

                        pushFollow(FOLLOW_block_in_ifStmt262);
                        block18=block();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_block.add(block18.tree);
                        string_literal19=Token(matchStream(input,32,FOLLOW_32_in_ifStmt264)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_32.add(string_literal19);

                        pushFollow(FOLLOW_ifStmt_in_ifStmt266);
                        ifStmt20=ifStmt();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_ifStmt.add(ifStmt20.tree);


                        // AST REWRITE
                        // elements: exp, block, ifStmt
                        // token labels: 
                        // rule labels: retval
                        // token list labels: 
                        // rule list labels: 
                        if ( this.state.backtracking==0 ) {
                        retval.tree = root_0;
                        var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                        root_0 = CommonTree(adaptor.nil());
                        // 69:41: -> ^( IfStmt exp block ifStmt )
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:69:44: ^( IfStmt exp block ifStmt )
                            {
                            var root_1:CommonTree = CommonTree(adaptor.nil());
                            root_1 = CommonTree(adaptor.becomeRoot(CommonTree(adaptor.create(IfStmt, "IfStmt")), root_1));

                            adaptor.addChild(root_1, stream_exp.nextTree());
                            adaptor.addChild(root_1, stream_block.nextTree());
                            adaptor.addChild(root_1, stream_ifStmt.nextTree());

                            adaptor.addChild(root_0, root_1);
                            }

                        }

                        retval.tree = root_0;}
                        }
                        break;
                    case 3 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:70:4: 'if' '(' exp ')' block
                        {
                        string_literal21=Token(matchStream(input,29,FOLLOW_29_in_ifStmt283)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_29.add(string_literal21);

                        char_literal22=Token(matchStream(input,30,FOLLOW_30_in_ifStmt285)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_30.add(char_literal22);

                        pushFollow(FOLLOW_exp_in_ifStmt287);
                        exp23=exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_exp.add(exp23.tree);
                        char_literal24=Token(matchStream(input,31,FOLLOW_31_in_ifStmt289)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_31.add(char_literal24);

                        pushFollow(FOLLOW_block_in_ifStmt291);
                        block25=block();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_block.add(block25.tree);


                        // AST REWRITE
                        // elements: block, exp
                        // token labels: 
                        // rule labels: retval
                        // token list labels: 
                        // rule list labels: 
                        if ( this.state.backtracking==0 ) {
                        retval.tree = root_0;
                        var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                        root_0 = CommonTree(adaptor.nil());
                        // 70:29: -> ^( IfStmt exp block )
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:70:32: ^( IfStmt exp block )
                            {
                            var root_1:CommonTree = CommonTree(adaptor.nil());
                            root_1 = CommonTree(adaptor.becomeRoot(CommonTree(adaptor.create(IfStmt, "IfStmt")), root_1));

                            adaptor.addChild(root_1, stream_exp.nextTree());
                            adaptor.addChild(root_1, stream_block.nextTree());

                            adaptor.addChild(root_0, root_1);
                            }

                        }

                        retval.tree = root_0;}
                        }
                        break;

                }
                retval.stop = input.LT(-1);

                if ( this.state.backtracking==0 ) {

                retval.tree = CommonTree(adaptor.rulePostProcessing(root_0));
                adaptor.setTokenBoundaries(retval.tree, Token(retval.start), Token(retval.stop));
                }
            }
            catch (re:RecognitionException) {
                reportError(re);
                recoverStream(input,re);
                retval.tree = CommonTree(adaptor.errorNode(input, Token(retval.start), input.LT(-1), re));

            }
            finally {
                if ( this.state.backtracking>0 ) { memoize(input, 4, ifStmt_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end ifStmt

        // $ANTLR start whileStmt
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:73:1: whileStmt : 'while' '(' exp ')' block -> ^( WhileStmt exp block ) ;
        public final function whileStmt():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var whileStmt_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var string_literal26:Token=null;
            var char_literal27:Token=null;
            var char_literal29:Token=null;
            var exp28:ParserRuleReturnScope = null;

            var block30:ParserRuleReturnScope = null;


            var string_literal26_tree:CommonTree=null;
            var char_literal27_tree:CommonTree=null;
            var char_literal29_tree:CommonTree=null;
            var stream_30:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 30");
            var stream_31:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 31");
            var stream_33:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 33");
            var stream_exp:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule exp");
            var stream_block:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule block");
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 5) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:74:2: ( 'while' '(' exp ')' block -> ^( WhileStmt exp block ) )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:74:4: 'while' '(' exp ')' block
                {
                string_literal26=Token(matchStream(input,33,FOLLOW_33_in_whileStmt315)); if (this.state.failed) return retval; 
                if ( this.state.backtracking==0 ) stream_33.add(string_literal26);

                char_literal27=Token(matchStream(input,30,FOLLOW_30_in_whileStmt317)); if (this.state.failed) return retval; 
                if ( this.state.backtracking==0 ) stream_30.add(char_literal27);

                pushFollow(FOLLOW_exp_in_whileStmt319);
                exp28=exp();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) stream_exp.add(exp28.tree);
                char_literal29=Token(matchStream(input,31,FOLLOW_31_in_whileStmt321)); if (this.state.failed) return retval; 
                if ( this.state.backtracking==0 ) stream_31.add(char_literal29);

                pushFollow(FOLLOW_block_in_whileStmt323);
                block30=block();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) stream_block.add(block30.tree);


                // AST REWRITE
                // elements: block, exp
                // token labels: 
                // rule labels: retval
                // token list labels: 
                // rule list labels: 
                if ( this.state.backtracking==0 ) {
                retval.tree = root_0;
                var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                root_0 = CommonTree(adaptor.nil());
                // 74:31: -> ^( WhileStmt exp block )
                {
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:74:34: ^( WhileStmt exp block )
                    {
                    var root_1:CommonTree = CommonTree(adaptor.nil());
                    root_1 = CommonTree(adaptor.becomeRoot(CommonTree(adaptor.create(WhileStmt, "WhileStmt")), root_1));

                    adaptor.addChild(root_1, stream_exp.nextTree());
                    adaptor.addChild(root_1, stream_block.nextTree());

                    adaptor.addChild(root_0, root_1);
                    }

                }

                retval.tree = root_0;}
                }

                retval.stop = input.LT(-1);

                if ( this.state.backtracking==0 ) {

                retval.tree = CommonTree(adaptor.rulePostProcessing(root_0));
                adaptor.setTokenBoundaries(retval.tree, Token(retval.start), Token(retval.stop));
                }
            }
            catch (re:RecognitionException) {
                reportError(re);
                recoverStream(input,re);
                retval.tree = CommonTree(adaptor.errorNode(input, Token(retval.start), input.LT(-1), re));

            }
            finally {
                if ( this.state.backtracking>0 ) { memoize(input, 5, whileStmt_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end whileStmt

        // $ANTLR start block
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:77:1: block : '{' stmtList '}' -> ^( stmtList ) ;
        public final function block():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var block_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var char_literal31:Token=null;
            var char_literal33:Token=null;
            var stmtList32:ParserRuleReturnScope = null;


            var char_literal31_tree:CommonTree=null;
            var char_literal33_tree:CommonTree=null;
            var stream_35:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 35");
            var stream_34:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 34");
            var stream_stmtList:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule stmtList");
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 6) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:78:2: ( '{' stmtList '}' -> ^( stmtList ) )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:78:4: '{' stmtList '}'
                {
                char_literal31=Token(matchStream(input,34,FOLLOW_34_in_block346)); if (this.state.failed) return retval; 
                if ( this.state.backtracking==0 ) stream_34.add(char_literal31);

                pushFollow(FOLLOW_stmtList_in_block348);
                stmtList32=stmtList();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) stream_stmtList.add(stmtList32.tree);
                char_literal33=Token(matchStream(input,35,FOLLOW_35_in_block350)); if (this.state.failed) return retval; 
                if ( this.state.backtracking==0 ) stream_35.add(char_literal33);



                // AST REWRITE
                // elements: stmtList
                // token labels: 
                // rule labels: retval
                // token list labels: 
                // rule list labels: 
                if ( this.state.backtracking==0 ) {
                retval.tree = root_0;
                var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                root_0 = CommonTree(adaptor.nil());
                // 78:23: -> ^( stmtList )
                {
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:78:26: ^( stmtList )
                    {
                    var root_1:CommonTree = CommonTree(adaptor.nil());
                    root_1 = CommonTree(adaptor.becomeRoot(stream_stmtList.nextNode(), root_1));

                    adaptor.addChild(root_0, root_1);
                    }

                }

                retval.tree = root_0;}
                }

                retval.stop = input.LT(-1);

                if ( this.state.backtracking==0 ) {

                retval.tree = CommonTree(adaptor.rulePostProcessing(root_0));
                adaptor.setTokenBoundaries(retval.tree, Token(retval.start), Token(retval.stop));
                }
            }
            catch (re:RecognitionException) {
                reportError(re);
                recoverStream(input,re);
                retval.tree = CommonTree(adaptor.errorNode(input, Token(retval.start), input.LT(-1), re));

            }
            finally {
                if ( this.state.backtracking>0 ) { memoize(input, 6, block_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end block

        // $ANTLR start instrList
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:81:1: instrList : instr ( ';' instr | ';' )* -> ^( InstrList ( instr )+ ) ;
        public final function instrList():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var instrList_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var char_literal35:Token=null;
            var char_literal37:Token=null;
            var instr34:ParserRuleReturnScope = null;

            var instr36:ParserRuleReturnScope = null;


            var char_literal35_tree:CommonTree=null;
            var char_literal37_tree:CommonTree=null;
            var stream_36:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 36");
            var stream_instr:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule instr");
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 7) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:82:2: ( instr ( ';' instr | ';' )* -> ^( InstrList ( instr )+ ) )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:82:4: instr ( ';' instr | ';' )*
                {
                pushFollow(FOLLOW_instr_in_instrList369);
                instr34=instr();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) stream_instr.add(instr34.tree);
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:83:3: ( ';' instr | ';' )*
                loop5:
                do {
                    var alt5:int=3;
                    alt5 = dfa5.predict(input);
                    switch (alt5) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:84:4: ';' instr
                	    {
                	    char_literal35=Token(matchStream(input,36,FOLLOW_36_in_instrList378)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_36.add(char_literal35);

                	    pushFollow(FOLLOW_instr_in_instrList380);
                	    instr36=instr();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) stream_instr.add(instr36.tree);

                	    }
                	    break;
                	case 2 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:85:5: ';'
                	    {
                	    char_literal37=Token(matchStream(input,36,FOLLOW_36_in_instrList386)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_36.add(char_literal37);


                	    }
                	    break;

                	default :
                	    break loop5;
                    }
                } while (true);



                // AST REWRITE
                // elements: instr
                // token labels: 
                // rule labels: retval
                // token list labels: 
                // rule list labels: 
                if ( this.state.backtracking==0 ) {
                retval.tree = root_0;
                var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                root_0 = CommonTree(adaptor.nil());
                // 86:10: -> ^( InstrList ( instr )+ )
                {
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:86:13: ^( InstrList ( instr )+ )
                    {
                    var root_1:CommonTree = CommonTree(adaptor.nil());
                    root_1 = CommonTree(adaptor.becomeRoot(CommonTree(adaptor.create(InstrList, "InstrList")), root_1));

                    if ( !(stream_instr.hasNext) ) {
                        throw new RewriteEarlyExitException();
                    }
                    while ( stream_instr.hasNext ) {
                        adaptor.addChild(root_1, stream_instr.nextTree());

                    }
                    stream_instr.reset();

                    adaptor.addChild(root_0, root_1);
                    }

                }

                retval.tree = root_0;}
                }

                retval.stop = input.LT(-1);

                if ( this.state.backtracking==0 ) {

                retval.tree = CommonTree(adaptor.rulePostProcessing(root_0));
                adaptor.setTokenBoundaries(retval.tree, Token(retval.start), Token(retval.stop));
                }
            }
            catch (re:RecognitionException) {
                reportError(re);
                recoverStream(input,re);
                retval.tree = CommonTree(adaptor.errorNode(input, Token(retval.start), input.LT(-1), re));

            }
            finally {
                if ( this.state.backtracking>0 ) { memoize(input, 7, instrList_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end instrList

        // $ANTLR start instr
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:89:1: instr : ( exp | ret );
        public final function instr():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var instr_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var exp38:ParserRuleReturnScope = null;

            var ret39:ParserRuleReturnScope = null;



            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 8) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:90:2: ( exp | ret )
                var alt6:int=2;
                var LA6_0:int = input.LA(1);

                if ( ((LA6_0>=17 && LA6_0<=19)||LA6_0==30||LA6_0==49||(LA6_0>=74 && LA6_0<=75)||(LA6_0>=79 && LA6_0<=84)||LA6_0==87) ) {
                    alt6=1;
                }
                else if ( (LA6_0==89) ) {
                    alt6=2;
                }
                else {
                    if (this.state.backtracking>0) {this.state.failed=true; return retval;}
                    throw new NoViableAltException("", 6, 0, input);

                }
                switch (alt6) {
                    case 1 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:90:4: exp
                        {
                        root_0 = CommonTree(adaptor.nil());

                        pushFollow(FOLLOW_exp_in_instr416);
                        exp38=exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) adaptor.addChild(root_0, exp38.tree);

                        }
                        break;
                    case 2 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:91:4: ret
                        {
                        root_0 = CommonTree(adaptor.nil());

                        pushFollow(FOLLOW_ret_in_instr421);
                        ret39=ret();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) adaptor.addChild(root_0, ret39.tree);

                        }
                        break;

                }
                retval.stop = input.LT(-1);

                if ( this.state.backtracking==0 ) {

                retval.tree = CommonTree(adaptor.rulePostProcessing(root_0));
                adaptor.setTokenBoundaries(retval.tree, Token(retval.start), Token(retval.stop));
                }
            }
            catch (re:RecognitionException) {
                reportError(re);
                recoverStream(input,re);
                retval.tree = CommonTree(adaptor.errorNode(input, Token(retval.start), input.LT(-1), re));

            }
            finally {
                if ( this.state.backtracking>0 ) { memoize(input, 8, instr_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end instr

        // $ANTLR start exp
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:94:1: exp : ( assignExp | local | condExp );
        public final function exp():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var exp_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var assignExp40:ParserRuleReturnScope = null;

            var local41:ParserRuleReturnScope = null;

            var condExp42:ParserRuleReturnScope = null;



            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 9) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:95:2: ( assignExp | local | condExp )
                var alt7:int=3;
                alt7 = dfa7.predict(input);
                switch (alt7) {
                    case 1 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:95:4: assignExp
                        {
                        root_0 = CommonTree(adaptor.nil());

                        pushFollow(FOLLOW_assignExp_in_exp434);
                        assignExp40=assignExp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) root_0 = CommonTree(adaptor.becomeRoot(assignExp40.tree, root_0));

                        }
                        break;
                    case 2 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:96:4: local
                        {
                        root_0 = CommonTree(adaptor.nil());

                        pushFollow(FOLLOW_local_in_exp440);
                        local41=local();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) root_0 = CommonTree(adaptor.becomeRoot(local41.tree, root_0));

                        }
                        break;
                    case 3 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:97:4: condExp
                        {
                        root_0 = CommonTree(adaptor.nil());

                        pushFollow(FOLLOW_condExp_in_exp446);
                        condExp42=condExp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) root_0 = CommonTree(adaptor.becomeRoot(condExp42.tree, root_0));

                        }
                        break;

                }
                retval.stop = input.LT(-1);

                if ( this.state.backtracking==0 ) {

                retval.tree = CommonTree(adaptor.rulePostProcessing(root_0));
                adaptor.setTokenBoundaries(retval.tree, Token(retval.start), Token(retval.stop));
                }
            }
            catch (re:RecognitionException) {
                reportError(re);
                recoverStream(input,re);
                retval.tree = CommonTree(adaptor.errorNode(input, Token(retval.start), input.LT(-1), re));

            }
            finally {
                if ( this.state.backtracking>0 ) { memoize(input, 9, exp_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end exp

        // $ANTLR start assignExp
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:100:1: assignExp : reference ( '=' exp -> ^( '=' exp reference ) | '*=' exp -> ^( '*=' exp reference ) | '/=' exp -> ^( '/=' exp reference ) | '%=' exp -> ^( '%=' exp reference ) | '+=' exp -> ^( '+=' exp reference ) | '-=' exp -> ^( '-=' exp reference ) | '<<=' exp -> ^( '<<=' exp reference ) | '>>=' exp -> ^( '>>=' exp reference ) | '>>>=' exp -> ^( '>>>=' exp reference ) | '&=' exp -> ^( '&=' exp reference ) | '^=' exp -> ^( '^=' exp reference ) | '|=' exp -> ^( '|=' exp reference ) ) ;
        public final function assignExp():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var assignExp_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var char_literal44:Token=null;
            var string_literal46:Token=null;
            var string_literal48:Token=null;
            var string_literal50:Token=null;
            var string_literal52:Token=null;
            var string_literal54:Token=null;
            var string_literal56:Token=null;
            var string_literal58:Token=null;
            var string_literal60:Token=null;
            var string_literal62:Token=null;
            var string_literal64:Token=null;
            var string_literal66:Token=null;
            var reference43:ParserRuleReturnScope = null;

            var exp45:ParserRuleReturnScope = null;

            var exp47:ParserRuleReturnScope = null;

            var exp49:ParserRuleReturnScope = null;

            var exp51:ParserRuleReturnScope = null;

            var exp53:ParserRuleReturnScope = null;

            var exp55:ParserRuleReturnScope = null;

            var exp57:ParserRuleReturnScope = null;

            var exp59:ParserRuleReturnScope = null;

            var exp61:ParserRuleReturnScope = null;

            var exp63:ParserRuleReturnScope = null;

            var exp65:ParserRuleReturnScope = null;

            var exp67:ParserRuleReturnScope = null;


            var char_literal44_tree:CommonTree=null;
            var string_literal46_tree:CommonTree=null;
            var string_literal48_tree:CommonTree=null;
            var string_literal50_tree:CommonTree=null;
            var string_literal52_tree:CommonTree=null;
            var string_literal54_tree:CommonTree=null;
            var string_literal56_tree:CommonTree=null;
            var string_literal58_tree:CommonTree=null;
            var string_literal60_tree:CommonTree=null;
            var string_literal62_tree:CommonTree=null;
            var string_literal64_tree:CommonTree=null;
            var string_literal66_tree:CommonTree=null;
            var stream_48:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 48");
            var stream_45:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 45");
            var stream_43:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 43");
            var stream_44:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 44");
            var stream_42:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 42");
            var stream_41:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 41");
            var stream_47:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 47");
            var stream_40:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 40");
            var stream_46:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 46");
            var stream_39:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 39");
            var stream_37:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 37");
            var stream_38:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 38");
            var stream_exp:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule exp");
            var stream_reference:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule reference");
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 10) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:101:2: ( reference ( '=' exp -> ^( '=' exp reference ) | '*=' exp -> ^( '*=' exp reference ) | '/=' exp -> ^( '/=' exp reference ) | '%=' exp -> ^( '%=' exp reference ) | '+=' exp -> ^( '+=' exp reference ) | '-=' exp -> ^( '-=' exp reference ) | '<<=' exp -> ^( '<<=' exp reference ) | '>>=' exp -> ^( '>>=' exp reference ) | '>>>=' exp -> ^( '>>>=' exp reference ) | '&=' exp -> ^( '&=' exp reference ) | '^=' exp -> ^( '^=' exp reference ) | '|=' exp -> ^( '|=' exp reference ) ) )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:101:4: reference ( '=' exp -> ^( '=' exp reference ) | '*=' exp -> ^( '*=' exp reference ) | '/=' exp -> ^( '/=' exp reference ) | '%=' exp -> ^( '%=' exp reference ) | '+=' exp -> ^( '+=' exp reference ) | '-=' exp -> ^( '-=' exp reference ) | '<<=' exp -> ^( '<<=' exp reference ) | '>>=' exp -> ^( '>>=' exp reference ) | '>>>=' exp -> ^( '>>>=' exp reference ) | '&=' exp -> ^( '&=' exp reference ) | '^=' exp -> ^( '^=' exp reference ) | '|=' exp -> ^( '|=' exp reference ) )
                {
                pushFollow(FOLLOW_reference_in_assignExp459);
                reference43=reference();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) stream_reference.add(reference43.tree);
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:102:3: ( '=' exp -> ^( '=' exp reference ) | '*=' exp -> ^( '*=' exp reference ) | '/=' exp -> ^( '/=' exp reference ) | '%=' exp -> ^( '%=' exp reference ) | '+=' exp -> ^( '+=' exp reference ) | '-=' exp -> ^( '-=' exp reference ) | '<<=' exp -> ^( '<<=' exp reference ) | '>>=' exp -> ^( '>>=' exp reference ) | '>>>=' exp -> ^( '>>>=' exp reference ) | '&=' exp -> ^( '&=' exp reference ) | '^=' exp -> ^( '^=' exp reference ) | '|=' exp -> ^( '|=' exp reference ) )
                var alt8:int=12;
                switch ( input.LA(1) ) {
                case 37:
                    {
                    alt8=1;
                    }
                    break;
                case 38:
                    {
                    alt8=2;
                    }
                    break;
                case 39:
                    {
                    alt8=3;
                    }
                    break;
                case 40:
                    {
                    alt8=4;
                    }
                    break;
                case 41:
                    {
                    alt8=5;
                    }
                    break;
                case 42:
                    {
                    alt8=6;
                    }
                    break;
                case 43:
                    {
                    alt8=7;
                    }
                    break;
                case 44:
                    {
                    alt8=8;
                    }
                    break;
                case 45:
                    {
                    alt8=9;
                    }
                    break;
                case 46:
                    {
                    alt8=10;
                    }
                    break;
                case 47:
                    {
                    alt8=11;
                    }
                    break;
                case 48:
                    {
                    alt8=12;
                    }
                    break;
                default:
                    if (this.state.backtracking>0) {this.state.failed=true; return retval;}
                    throw new NoViableAltException("", 8, 0, input);

                }

                switch (alt8) {
                    case 1 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:103:4: '=' exp
                        {
                        char_literal44=Token(matchStream(input,37,FOLLOW_37_in_assignExp468)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_37.add(char_literal44);

                        pushFollow(FOLLOW_exp_in_assignExp470);
                        exp45=exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_exp.add(exp45.tree);


                        // AST REWRITE
                        // elements: 37, exp, reference
                        // token labels: 
                        // rule labels: retval
                        // token list labels: 
                        // rule list labels: 
                        if ( this.state.backtracking==0 ) {
                        retval.tree = root_0;
                        var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                        root_0 = CommonTree(adaptor.nil());
                        // 103:15: -> ^( '=' exp reference )
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:103:18: ^( '=' exp reference )
                            {
                            var root_1:CommonTree = CommonTree(adaptor.nil());
                            root_1 = CommonTree(adaptor.becomeRoot(stream_37.nextNode(), root_1));

                            adaptor.addChild(root_1, stream_exp.nextTree());
                            adaptor.addChild(root_1, stream_reference.nextTree());

                            adaptor.addChild(root_0, root_1);
                            }

                        }

                        retval.tree = root_0;}
                        }
                        break;
                    case 2 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:104:5: '*=' exp
                        {
                        string_literal46=Token(matchStream(input,38,FOLLOW_38_in_assignExp489)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_38.add(string_literal46);

                        pushFollow(FOLLOW_exp_in_assignExp491);
                        exp47=exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_exp.add(exp47.tree);


                        // AST REWRITE
                        // elements: exp, reference, 38
                        // token labels: 
                        // rule labels: retval
                        // token list labels: 
                        // rule list labels: 
                        if ( this.state.backtracking==0 ) {
                        retval.tree = root_0;
                        var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                        root_0 = CommonTree(adaptor.nil());
                        // 104:16: -> ^( '*=' exp reference )
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:104:19: ^( '*=' exp reference )
                            {
                            var root_1:CommonTree = CommonTree(adaptor.nil());
                            root_1 = CommonTree(adaptor.becomeRoot(stream_38.nextNode(), root_1));

                            adaptor.addChild(root_1, stream_exp.nextTree());
                            adaptor.addChild(root_1, stream_reference.nextTree());

                            adaptor.addChild(root_0, root_1);
                            }

                        }

                        retval.tree = root_0;}
                        }
                        break;
                    case 3 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:105:5: '/=' exp
                        {
                        string_literal48=Token(matchStream(input,39,FOLLOW_39_in_assignExp509)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_39.add(string_literal48);

                        pushFollow(FOLLOW_exp_in_assignExp511);
                        exp49=exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_exp.add(exp49.tree);


                        // AST REWRITE
                        // elements: exp, reference, 39
                        // token labels: 
                        // rule labels: retval
                        // token list labels: 
                        // rule list labels: 
                        if ( this.state.backtracking==0 ) {
                        retval.tree = root_0;
                        var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                        root_0 = CommonTree(adaptor.nil());
                        // 105:16: -> ^( '/=' exp reference )
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:105:19: ^( '/=' exp reference )
                            {
                            var root_1:CommonTree = CommonTree(adaptor.nil());
                            root_1 = CommonTree(adaptor.becomeRoot(stream_39.nextNode(), root_1));

                            adaptor.addChild(root_1, stream_exp.nextTree());
                            adaptor.addChild(root_1, stream_reference.nextTree());

                            adaptor.addChild(root_0, root_1);
                            }

                        }

                        retval.tree = root_0;}
                        }
                        break;
                    case 4 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:106:5: '%=' exp
                        {
                        string_literal50=Token(matchStream(input,40,FOLLOW_40_in_assignExp529)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_40.add(string_literal50);

                        pushFollow(FOLLOW_exp_in_assignExp531);
                        exp51=exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_exp.add(exp51.tree);


                        // AST REWRITE
                        // elements: reference, exp, 40
                        // token labels: 
                        // rule labels: retval
                        // token list labels: 
                        // rule list labels: 
                        if ( this.state.backtracking==0 ) {
                        retval.tree = root_0;
                        var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                        root_0 = CommonTree(adaptor.nil());
                        // 106:16: -> ^( '%=' exp reference )
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:106:19: ^( '%=' exp reference )
                            {
                            var root_1:CommonTree = CommonTree(adaptor.nil());
                            root_1 = CommonTree(adaptor.becomeRoot(stream_40.nextNode(), root_1));

                            adaptor.addChild(root_1, stream_exp.nextTree());
                            adaptor.addChild(root_1, stream_reference.nextTree());

                            adaptor.addChild(root_0, root_1);
                            }

                        }

                        retval.tree = root_0;}
                        }
                        break;
                    case 5 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:107:5: '+=' exp
                        {
                        string_literal52=Token(matchStream(input,41,FOLLOW_41_in_assignExp549)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_41.add(string_literal52);

                        pushFollow(FOLLOW_exp_in_assignExp551);
                        exp53=exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_exp.add(exp53.tree);


                        // AST REWRITE
                        // elements: 41, reference, exp
                        // token labels: 
                        // rule labels: retval
                        // token list labels: 
                        // rule list labels: 
                        if ( this.state.backtracking==0 ) {
                        retval.tree = root_0;
                        var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                        root_0 = CommonTree(adaptor.nil());
                        // 107:16: -> ^( '+=' exp reference )
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:107:19: ^( '+=' exp reference )
                            {
                            var root_1:CommonTree = CommonTree(adaptor.nil());
                            root_1 = CommonTree(adaptor.becomeRoot(stream_41.nextNode(), root_1));

                            adaptor.addChild(root_1, stream_exp.nextTree());
                            adaptor.addChild(root_1, stream_reference.nextTree());

                            adaptor.addChild(root_0, root_1);
                            }

                        }

                        retval.tree = root_0;}
                        }
                        break;
                    case 6 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:108:5: '-=' exp
                        {
                        string_literal54=Token(matchStream(input,42,FOLLOW_42_in_assignExp569)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_42.add(string_literal54);

                        pushFollow(FOLLOW_exp_in_assignExp571);
                        exp55=exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_exp.add(exp55.tree);


                        // AST REWRITE
                        // elements: reference, exp, 42
                        // token labels: 
                        // rule labels: retval
                        // token list labels: 
                        // rule list labels: 
                        if ( this.state.backtracking==0 ) {
                        retval.tree = root_0;
                        var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                        root_0 = CommonTree(adaptor.nil());
                        // 108:16: -> ^( '-=' exp reference )
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:108:19: ^( '-=' exp reference )
                            {
                            var root_1:CommonTree = CommonTree(adaptor.nil());
                            root_1 = CommonTree(adaptor.becomeRoot(stream_42.nextNode(), root_1));

                            adaptor.addChild(root_1, stream_exp.nextTree());
                            adaptor.addChild(root_1, stream_reference.nextTree());

                            adaptor.addChild(root_0, root_1);
                            }

                        }

                        retval.tree = root_0;}
                        }
                        break;
                    case 7 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:109:5: '<<=' exp
                        {
                        string_literal56=Token(matchStream(input,43,FOLLOW_43_in_assignExp589)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_43.add(string_literal56);

                        pushFollow(FOLLOW_exp_in_assignExp591);
                        exp57=exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_exp.add(exp57.tree);


                        // AST REWRITE
                        // elements: exp, 43, reference
                        // token labels: 
                        // rule labels: retval
                        // token list labels: 
                        // rule list labels: 
                        if ( this.state.backtracking==0 ) {
                        retval.tree = root_0;
                        var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                        root_0 = CommonTree(adaptor.nil());
                        // 109:17: -> ^( '<<=' exp reference )
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:109:20: ^( '<<=' exp reference )
                            {
                            var root_1:CommonTree = CommonTree(adaptor.nil());
                            root_1 = CommonTree(adaptor.becomeRoot(stream_43.nextNode(), root_1));

                            adaptor.addChild(root_1, stream_exp.nextTree());
                            adaptor.addChild(root_1, stream_reference.nextTree());

                            adaptor.addChild(root_0, root_1);
                            }

                        }

                        retval.tree = root_0;}
                        }
                        break;
                    case 8 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:110:5: '>>=' exp
                        {
                        string_literal58=Token(matchStream(input,44,FOLLOW_44_in_assignExp609)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_44.add(string_literal58);

                        pushFollow(FOLLOW_exp_in_assignExp611);
                        exp59=exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_exp.add(exp59.tree);


                        // AST REWRITE
                        // elements: exp, 44, reference
                        // token labels: 
                        // rule labels: retval
                        // token list labels: 
                        // rule list labels: 
                        if ( this.state.backtracking==0 ) {
                        retval.tree = root_0;
                        var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                        root_0 = CommonTree(adaptor.nil());
                        // 110:17: -> ^( '>>=' exp reference )
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:110:20: ^( '>>=' exp reference )
                            {
                            var root_1:CommonTree = CommonTree(adaptor.nil());
                            root_1 = CommonTree(adaptor.becomeRoot(stream_44.nextNode(), root_1));

                            adaptor.addChild(root_1, stream_exp.nextTree());
                            adaptor.addChild(root_1, stream_reference.nextTree());

                            adaptor.addChild(root_0, root_1);
                            }

                        }

                        retval.tree = root_0;}
                        }
                        break;
                    case 9 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:111:5: '>>>=' exp
                        {
                        string_literal60=Token(matchStream(input,45,FOLLOW_45_in_assignExp629)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_45.add(string_literal60);

                        pushFollow(FOLLOW_exp_in_assignExp631);
                        exp61=exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_exp.add(exp61.tree);


                        // AST REWRITE
                        // elements: 45, reference, exp
                        // token labels: 
                        // rule labels: retval
                        // token list labels: 
                        // rule list labels: 
                        if ( this.state.backtracking==0 ) {
                        retval.tree = root_0;
                        var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                        root_0 = CommonTree(adaptor.nil());
                        // 111:18: -> ^( '>>>=' exp reference )
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:111:21: ^( '>>>=' exp reference )
                            {
                            var root_1:CommonTree = CommonTree(adaptor.nil());
                            root_1 = CommonTree(adaptor.becomeRoot(stream_45.nextNode(), root_1));

                            adaptor.addChild(root_1, stream_exp.nextTree());
                            adaptor.addChild(root_1, stream_reference.nextTree());

                            adaptor.addChild(root_0, root_1);
                            }

                        }

                        retval.tree = root_0;}
                        }
                        break;
                    case 10 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:112:5: '&=' exp
                        {
                        string_literal62=Token(matchStream(input,46,FOLLOW_46_in_assignExp649)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_46.add(string_literal62);

                        pushFollow(FOLLOW_exp_in_assignExp651);
                        exp63=exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_exp.add(exp63.tree);


                        // AST REWRITE
                        // elements: reference, exp, 46
                        // token labels: 
                        // rule labels: retval
                        // token list labels: 
                        // rule list labels: 
                        if ( this.state.backtracking==0 ) {
                        retval.tree = root_0;
                        var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                        root_0 = CommonTree(adaptor.nil());
                        // 112:16: -> ^( '&=' exp reference )
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:112:19: ^( '&=' exp reference )
                            {
                            var root_1:CommonTree = CommonTree(adaptor.nil());
                            root_1 = CommonTree(adaptor.becomeRoot(stream_46.nextNode(), root_1));

                            adaptor.addChild(root_1, stream_exp.nextTree());
                            adaptor.addChild(root_1, stream_reference.nextTree());

                            adaptor.addChild(root_0, root_1);
                            }

                        }

                        retval.tree = root_0;}
                        }
                        break;
                    case 11 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:113:5: '^=' exp
                        {
                        string_literal64=Token(matchStream(input,47,FOLLOW_47_in_assignExp669)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_47.add(string_literal64);

                        pushFollow(FOLLOW_exp_in_assignExp671);
                        exp65=exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_exp.add(exp65.tree);


                        // AST REWRITE
                        // elements: reference, 47, exp
                        // token labels: 
                        // rule labels: retval
                        // token list labels: 
                        // rule list labels: 
                        if ( this.state.backtracking==0 ) {
                        retval.tree = root_0;
                        var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                        root_0 = CommonTree(adaptor.nil());
                        // 113:16: -> ^( '^=' exp reference )
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:113:19: ^( '^=' exp reference )
                            {
                            var root_1:CommonTree = CommonTree(adaptor.nil());
                            root_1 = CommonTree(adaptor.becomeRoot(stream_47.nextNode(), root_1));

                            adaptor.addChild(root_1, stream_exp.nextTree());
                            adaptor.addChild(root_1, stream_reference.nextTree());

                            adaptor.addChild(root_0, root_1);
                            }

                        }

                        retval.tree = root_0;}
                        }
                        break;
                    case 12 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:114:5: '|=' exp
                        {
                        string_literal66=Token(matchStream(input,48,FOLLOW_48_in_assignExp689)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_48.add(string_literal66);

                        pushFollow(FOLLOW_exp_in_assignExp691);
                        exp67=exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_exp.add(exp67.tree);


                        // AST REWRITE
                        // elements: reference, 48, exp
                        // token labels: 
                        // rule labels: retval
                        // token list labels: 
                        // rule list labels: 
                        if ( this.state.backtracking==0 ) {
                        retval.tree = root_0;
                        var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                        root_0 = CommonTree(adaptor.nil());
                        // 114:16: -> ^( '|=' exp reference )
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:114:19: ^( '|=' exp reference )
                            {
                            var root_1:CommonTree = CommonTree(adaptor.nil());
                            root_1 = CommonTree(adaptor.becomeRoot(stream_48.nextNode(), root_1));

                            adaptor.addChild(root_1, stream_exp.nextTree());
                            adaptor.addChild(root_1, stream_reference.nextTree());

                            adaptor.addChild(root_0, root_1);
                            }

                        }

                        retval.tree = root_0;}
                        }
                        break;

                }


                }

                retval.stop = input.LT(-1);

                if ( this.state.backtracking==0 ) {

                retval.tree = CommonTree(adaptor.rulePostProcessing(root_0));
                adaptor.setTokenBoundaries(retval.tree, Token(retval.start), Token(retval.stop));
                }
            }
            catch (re:RecognitionException) {
                reportError(re);
                recoverStream(input,re);
                retval.tree = CommonTree(adaptor.errorNode(input, Token(retval.start), input.LT(-1), re));

            }
            finally {
                if ( this.state.backtracking>0 ) { memoize(input, 10, assignExp_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end assignExp

        // $ANTLR start local
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:118:1: local : ( 'var' i= Identifier -> ^( Local $i) | 'var' i= Identifier '=' exp -> ^( Local exp $i) );
        public final function local():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var local_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var i:Token=null;
            var string_literal68:Token=null;
            var string_literal69:Token=null;
            var char_literal70:Token=null;
            var exp71:ParserRuleReturnScope = null;


            var i_tree:CommonTree=null;
            var string_literal68_tree:CommonTree=null;
            var string_literal69_tree:CommonTree=null;
            var char_literal70_tree:CommonTree=null;
            var stream_49:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 49");
            var stream_Identifier:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token Identifier");
            var stream_37:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 37");
            var stream_exp:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule exp");
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 11) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:118:7: ( 'var' i= Identifier -> ^( Local $i) | 'var' i= Identifier '=' exp -> ^( Local exp $i) )
                var alt9:int=2;
                var LA9_0:int = input.LA(1);

                if ( (LA9_0==49) ) {
                    var LA9_1:int = input.LA(2);

                    if ( (LA9_1==17) ) {
                        var LA9_2:int = input.LA(3);

                        if ( (LA9_2==37) ) {
                            alt9=2;
                        }
                        else if ( (LA9_2==-1||(LA9_2>=17 && LA9_2<=19)||(LA9_2>=29 && LA9_2<=31)||LA9_2==33||(LA9_2>=35 && LA9_2<=36)||(LA9_2>=49 && LA9_2<=51)||(LA9_2>=74 && LA9_2<=75)||(LA9_2>=79 && LA9_2<=85)||(LA9_2>=87 && LA9_2<=89)) ) {
                            alt9=1;
                        }
                        else {
                            if (this.state.backtracking>0) {this.state.failed=true; return retval;}
                            throw new NoViableAltException("", 9, 2, input);

                        }
                    }
                    else {
                        if (this.state.backtracking>0) {this.state.failed=true; return retval;}
                        throw new NoViableAltException("", 9, 1, input);

                    }
                }
                else {
                    if (this.state.backtracking>0) {this.state.failed=true; return retval;}
                    throw new NoViableAltException("", 9, 0, input);

                }
                switch (alt9) {
                    case 1 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:118:9: 'var' i= Identifier
                        {
                        string_literal68=Token(matchStream(input,49,FOLLOW_49_in_local719)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_49.add(string_literal68);

                        i=Token(matchStream(input,Identifier,FOLLOW_Identifier_in_local723)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_Identifier.add(i);



                        // AST REWRITE
                        // elements: i
                        // token labels: i
                        // rule labels: retval
                        // token list labels: 
                        // rule list labels: 
                        if ( this.state.backtracking==0 ) {
                        retval.tree = root_0;
                        var stream_i:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token i",i);
                        var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                        root_0 = CommonTree(adaptor.nil());
                        // 118:30: -> ^( Local $i)
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:118:33: ^( Local $i)
                            {
                            var root_1:CommonTree = CommonTree(adaptor.nil());
                            root_1 = CommonTree(adaptor.becomeRoot(CommonTree(adaptor.create(Local, "Local")), root_1));

                            adaptor.addChild(root_1, stream_i.nextNode());

                            adaptor.addChild(root_0, root_1);
                            }

                        }

                        retval.tree = root_0;}
                        }
                        break;
                    case 2 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:119:4: 'var' i= Identifier '=' exp
                        {
                        string_literal69=Token(matchStream(input,49,FOLLOW_49_in_local739)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_49.add(string_literal69);

                        i=Token(matchStream(input,Identifier,FOLLOW_Identifier_in_local743)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_Identifier.add(i);

                        char_literal70=Token(matchStream(input,37,FOLLOW_37_in_local745)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_37.add(char_literal70);

                        pushFollow(FOLLOW_exp_in_local747);
                        exp71=exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_exp.add(exp71.tree);


                        // AST REWRITE
                        // elements: exp, i
                        // token labels: i
                        // rule labels: retval
                        // token list labels: 
                        // rule list labels: 
                        if ( this.state.backtracking==0 ) {
                        retval.tree = root_0;
                        var stream_i:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token i",i);
                        var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                        root_0 = CommonTree(adaptor.nil());
                        // 119:32: -> ^( Local exp $i)
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:119:35: ^( Local exp $i)
                            {
                            var root_1:CommonTree = CommonTree(adaptor.nil());
                            root_1 = CommonTree(adaptor.becomeRoot(CommonTree(adaptor.create(Local, "Local")), root_1));

                            adaptor.addChild(root_1, stream_exp.nextTree());
                            adaptor.addChild(root_1, stream_i.nextNode());

                            adaptor.addChild(root_0, root_1);
                            }

                        }

                        retval.tree = root_0;}
                        }
                        break;

                }
                retval.stop = input.LT(-1);

                if ( this.state.backtracking==0 ) {

                retval.tree = CommonTree(adaptor.rulePostProcessing(root_0));
                adaptor.setTokenBoundaries(retval.tree, Token(retval.start), Token(retval.stop));
                }
            }
            catch (re:RecognitionException) {
                reportError(re);
                recoverStream(input,re);
                retval.tree = CommonTree(adaptor.errorNode(input, Token(retval.start), input.LT(-1), re));

            }
            finally {
                if ( this.state.backtracking>0 ) { memoize(input, 11, local_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end local

        // $ANTLR start condExp
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:122:1: condExp : (l= logicalOr -> $l) ( '?' e1= exp ':' e2= exp -> ^( CondExp $condExp $e1 $e2) )* ;
        public final function condExp():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var condExp_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var char_literal72:Token=null;
            var char_literal73:Token=null;
            var l:ParserRuleReturnScope = null;

            var e1:ParserRuleReturnScope = null;

            var e2:ParserRuleReturnScope = null;


            var char_literal72_tree:CommonTree=null;
            var char_literal73_tree:CommonTree=null;
            var stream_51:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 51");
            var stream_50:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 50");
            var stream_exp:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule exp");
            var stream_logicalOr:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule logicalOr");
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 12) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:123:2: ( (l= logicalOr -> $l) ( '?' e1= exp ':' e2= exp -> ^( CondExp $condExp $e1 $e2) )* )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:123:4: (l= logicalOr -> $l) ( '?' e1= exp ':' e2= exp -> ^( CondExp $condExp $e1 $e2) )*
                {
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:123:4: (l= logicalOr -> $l)
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:123:5: l= logicalOr
                {
                pushFollow(FOLLOW_logicalOr_in_condExp774);
                l=logicalOr();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) stream_logicalOr.add(l.tree);


                // AST REWRITE
                // elements: l
                // token labels: 
                // rule labels: retval, l
                // token list labels: 
                // rule list labels: 
                if ( this.state.backtracking==0 ) {
                retval.tree = root_0;
                var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);
                var stream_l:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule l",l!=null?l.tree:null);

                root_0 = CommonTree(adaptor.nil());
                // 123:20: -> $l
                {
                    adaptor.addChild(root_0, stream_l.nextTree());

                }

                retval.tree = root_0;}
                }

                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:124:3: ( '?' e1= exp ':' e2= exp -> ^( CondExp $condExp $e1 $e2) )*
                loop10:
                do {
                    var alt10:int=2;
                    var LA10_0:int = input.LA(1);

                    if ( (LA10_0==50) ) {
                        var LA10_2:int = input.LA(2);

                        if ( (synpred24_Expression()) ) {
                            alt10=1;
                        }


                    }


                    switch (alt10) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:125:4: '?' e1= exp ':' e2= exp
                	    {
                	    char_literal72=Token(matchStream(input,50,FOLLOW_50_in_condExp792)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_50.add(char_literal72);

                	    pushFollow(FOLLOW_exp_in_condExp799);
                	    e1=exp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) stream_exp.add(e1.tree);
                	    char_literal73=Token(matchStream(input,51,FOLLOW_51_in_condExp804)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_51.add(char_literal73);

                	    pushFollow(FOLLOW_exp_in_condExp811);
                	    e2=exp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) stream_exp.add(e2.tree);


                	    // AST REWRITE
                	    // elements: e2, e1, condExp
                	    // token labels: 
                	    // rule labels: retval, e1, e2
                	    // token list labels: 
                	    // rule list labels: 
                	    if ( this.state.backtracking==0 ) {
                	    retval.tree = root_0;
                	    var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);
                	    var stream_e1:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule e1",e1!=null?e1.tree:null);
                	    var stream_e2:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule e2",e2!=null?e2.tree:null);

                	    root_0 = CommonTree(adaptor.nil());
                	    // 128:14: -> ^( CondExp $condExp $e1 $e2)
                	    {
                	        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:128:17: ^( CondExp $condExp $e1 $e2)
                	        {
                	        var root_1:CommonTree = CommonTree(adaptor.nil());
                	        root_1 = CommonTree(adaptor.becomeRoot(CommonTree(adaptor.create(CondExp, "CondExp")), root_1));

                	        adaptor.addChild(root_1, stream_retval.nextTree());
                	        adaptor.addChild(root_1, stream_e1.nextTree());
                	        adaptor.addChild(root_1, stream_e2.nextTree());

                	        adaptor.addChild(root_0, root_1);
                	        }

                	    }

                	    retval.tree = root_0;}
                	    }
                	    break;

                	default :
                	    break loop10;
                    }
                } while (true);


                }

                retval.stop = input.LT(-1);

                if ( this.state.backtracking==0 ) {

                retval.tree = CommonTree(adaptor.rulePostProcessing(root_0));
                adaptor.setTokenBoundaries(retval.tree, Token(retval.start), Token(retval.stop));
                }
            }
            catch (re:RecognitionException) {
                reportError(re);
                recoverStream(input,re);
                retval.tree = CommonTree(adaptor.errorNode(input, Token(retval.start), input.LT(-1), re));

            }
            finally {
                if ( this.state.backtracking>0 ) { memoize(input, 12, condExp_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end condExp

        // $ANTLR start logicalOr
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:132:1: logicalOr : logicalAnd ( '||' logicalAnd | 'or' logicalAnd )* ;
        public final function logicalOr():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var logicalOr_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var string_literal75:Token=null;
            var string_literal77:Token=null;
            var logicalAnd74:ParserRuleReturnScope = null;

            var logicalAnd76:ParserRuleReturnScope = null;

            var logicalAnd78:ParserRuleReturnScope = null;


            var string_literal75_tree:CommonTree=null;
            var string_literal77_tree:CommonTree=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 13) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:133:2: ( logicalAnd ( '||' logicalAnd | 'or' logicalAnd )* )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:133:4: logicalAnd ( '||' logicalAnd | 'or' logicalAnd )*
                {
                root_0 = CommonTree(adaptor.nil());

                pushFollow(FOLLOW_logicalAnd_in_logicalOr845);
                logicalAnd74=logicalAnd();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) adaptor.addChild(root_0, logicalAnd74.tree);
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:134:3: ( '||' logicalAnd | 'or' logicalAnd )*
                loop11:
                do {
                    var alt11:int=3;
                    var LA11_0:int = input.LA(1);

                    if ( (LA11_0==52) ) {
                        alt11=1;
                    }
                    else if ( (LA11_0==53) ) {
                        alt11=2;
                    }


                    switch (alt11) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:135:4: '||' logicalAnd
                	    {
                	    string_literal75=Token(matchStream(input,52,FOLLOW_52_in_logicalOr854)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    string_literal75_tree = CommonTree(adaptor.create(string_literal75));
                	    root_0 = CommonTree(adaptor.becomeRoot(string_literal75_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_logicalAnd_in_logicalOr857);
                	    logicalAnd76=logicalAnd();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, logicalAnd76.tree);

                	    }
                	    break;
                	case 2 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:136:5: 'or' logicalAnd
                	    {
                	    string_literal77=Token(matchStream(input,53,FOLLOW_53_in_logicalOr863)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    string_literal77_tree = CommonTree(adaptor.create(string_literal77));
                	    root_0 = CommonTree(adaptor.becomeRoot(string_literal77_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_logicalAnd_in_logicalOr866);
                	    logicalAnd78=logicalAnd();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, logicalAnd78.tree);

                	    }
                	    break;

                	default :
                	    break loop11;
                    }
                } while (true);


                }

                retval.stop = input.LT(-1);

                if ( this.state.backtracking==0 ) {

                retval.tree = CommonTree(adaptor.rulePostProcessing(root_0));
                adaptor.setTokenBoundaries(retval.tree, Token(retval.start), Token(retval.stop));
                }
            }
            catch (re:RecognitionException) {
                reportError(re);
                recoverStream(input,re);
                retval.tree = CommonTree(adaptor.errorNode(input, Token(retval.start), input.LT(-1), re));

            }
            finally {
                if ( this.state.backtracking>0 ) { memoize(input, 13, logicalOr_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end logicalOr

        // $ANTLR start logicalAnd
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:140:1: logicalAnd : bitwiseOr ( '&&' bitwiseOr | 'and' bitwiseOr )* ;
        public final function logicalAnd():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var logicalAnd_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var string_literal80:Token=null;
            var string_literal82:Token=null;
            var bitwiseOr79:ParserRuleReturnScope = null;

            var bitwiseOr81:ParserRuleReturnScope = null;

            var bitwiseOr83:ParserRuleReturnScope = null;


            var string_literal80_tree:CommonTree=null;
            var string_literal82_tree:CommonTree=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 14) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:141:2: ( bitwiseOr ( '&&' bitwiseOr | 'and' bitwiseOr )* )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:141:4: bitwiseOr ( '&&' bitwiseOr | 'and' bitwiseOr )*
                {
                root_0 = CommonTree(adaptor.nil());

                pushFollow(FOLLOW_bitwiseOr_in_logicalAnd883);
                bitwiseOr79=bitwiseOr();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) adaptor.addChild(root_0, bitwiseOr79.tree);
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:142:3: ( '&&' bitwiseOr | 'and' bitwiseOr )*
                loop12:
                do {
                    var alt12:int=3;
                    var LA12_0:int = input.LA(1);

                    if ( (LA12_0==54) ) {
                        alt12=1;
                    }
                    else if ( (LA12_0==55) ) {
                        alt12=2;
                    }


                    switch (alt12) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:143:4: '&&' bitwiseOr
                	    {
                	    string_literal80=Token(matchStream(input,54,FOLLOW_54_in_logicalAnd892)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    string_literal80_tree = CommonTree(adaptor.create(string_literal80));
                	    root_0 = CommonTree(adaptor.becomeRoot(string_literal80_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_bitwiseOr_in_logicalAnd895);
                	    bitwiseOr81=bitwiseOr();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, bitwiseOr81.tree);

                	    }
                	    break;
                	case 2 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:144:5: 'and' bitwiseOr
                	    {
                	    string_literal82=Token(matchStream(input,55,FOLLOW_55_in_logicalAnd901)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    string_literal82_tree = CommonTree(adaptor.create(string_literal82));
                	    root_0 = CommonTree(adaptor.becomeRoot(string_literal82_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_bitwiseOr_in_logicalAnd904);
                	    bitwiseOr83=bitwiseOr();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, bitwiseOr83.tree);

                	    }
                	    break;

                	default :
                	    break loop12;
                    }
                } while (true);


                }

                retval.stop = input.LT(-1);

                if ( this.state.backtracking==0 ) {

                retval.tree = CommonTree(adaptor.rulePostProcessing(root_0));
                adaptor.setTokenBoundaries(retval.tree, Token(retval.start), Token(retval.stop));
                }
            }
            catch (re:RecognitionException) {
                reportError(re);
                recoverStream(input,re);
                retval.tree = CommonTree(adaptor.errorNode(input, Token(retval.start), input.LT(-1), re));

            }
            finally {
                if ( this.state.backtracking>0 ) { memoize(input, 14, logicalAnd_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end logicalAnd

        // $ANTLR start bitwiseOr
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:148:1: bitwiseOr : bitwiseXor ( '|' bitwiseXor )* ;
        public final function bitwiseOr():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var bitwiseOr_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var char_literal85:Token=null;
            var bitwiseXor84:ParserRuleReturnScope = null;

            var bitwiseXor86:ParserRuleReturnScope = null;


            var char_literal85_tree:CommonTree=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 15) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:149:2: ( bitwiseXor ( '|' bitwiseXor )* )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:149:4: bitwiseXor ( '|' bitwiseXor )*
                {
                root_0 = CommonTree(adaptor.nil());

                pushFollow(FOLLOW_bitwiseXor_in_bitwiseOr920);
                bitwiseXor84=bitwiseXor();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) adaptor.addChild(root_0, bitwiseXor84.tree);
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:150:3: ( '|' bitwiseXor )*
                loop13:
                do {
                    var alt13:int=2;
                    var LA13_0:int = input.LA(1);

                    if ( (LA13_0==56) ) {
                        alt13=1;
                    }


                    switch (alt13) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:151:4: '|' bitwiseXor
                	    {
                	    char_literal85=Token(matchStream(input,56,FOLLOW_56_in_bitwiseOr929)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    char_literal85_tree = CommonTree(adaptor.create(char_literal85));
                	    root_0 = CommonTree(adaptor.becomeRoot(char_literal85_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_bitwiseXor_in_bitwiseOr932);
                	    bitwiseXor86=bitwiseXor();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, bitwiseXor86.tree);

                	    }
                	    break;

                	default :
                	    break loop13;
                    }
                } while (true);


                }

                retval.stop = input.LT(-1);

                if ( this.state.backtracking==0 ) {

                retval.tree = CommonTree(adaptor.rulePostProcessing(root_0));
                adaptor.setTokenBoundaries(retval.tree, Token(retval.start), Token(retval.stop));
                }
            }
            catch (re:RecognitionException) {
                reportError(re);
                recoverStream(input,re);
                retval.tree = CommonTree(adaptor.errorNode(input, Token(retval.start), input.LT(-1), re));

            }
            finally {
                if ( this.state.backtracking>0 ) { memoize(input, 15, bitwiseOr_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end bitwiseOr

        // $ANTLR start bitwiseXor
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:155:1: bitwiseXor : bitwiseAnd ( '^' bitwiseAnd )? ;
        public final function bitwiseXor():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var bitwiseXor_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var char_literal88:Token=null;
            var bitwiseAnd87:ParserRuleReturnScope = null;

            var bitwiseAnd89:ParserRuleReturnScope = null;


            var char_literal88_tree:CommonTree=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 16) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:156:2: ( bitwiseAnd ( '^' bitwiseAnd )? )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:156:4: bitwiseAnd ( '^' bitwiseAnd )?
                {
                root_0 = CommonTree(adaptor.nil());

                pushFollow(FOLLOW_bitwiseAnd_in_bitwiseXor948);
                bitwiseAnd87=bitwiseAnd();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) adaptor.addChild(root_0, bitwiseAnd87.tree);
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:157:3: ( '^' bitwiseAnd )?
                var alt14:int=2;
                var LA14_0:int = input.LA(1);

                if ( (LA14_0==57) ) {
                    alt14=1;
                }
                switch (alt14) {
                    case 1 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:158:4: '^' bitwiseAnd
                        {
                        char_literal88=Token(matchStream(input,57,FOLLOW_57_in_bitwiseXor957)); if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                        char_literal88_tree = CommonTree(adaptor.create(char_literal88));
                        root_0 = CommonTree(adaptor.becomeRoot(char_literal88_tree, root_0));
                        }
                        pushFollow(FOLLOW_bitwiseAnd_in_bitwiseXor960);
                        bitwiseAnd89=bitwiseAnd();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) adaptor.addChild(root_0, bitwiseAnd89.tree);

                        }
                        break;

                }


                }

                retval.stop = input.LT(-1);

                if ( this.state.backtracking==0 ) {

                retval.tree = CommonTree(adaptor.rulePostProcessing(root_0));
                adaptor.setTokenBoundaries(retval.tree, Token(retval.start), Token(retval.stop));
                }
            }
            catch (re:RecognitionException) {
                reportError(re);
                recoverStream(input,re);
                retval.tree = CommonTree(adaptor.errorNode(input, Token(retval.start), input.LT(-1), re));

            }
            finally {
                if ( this.state.backtracking>0 ) { memoize(input, 16, bitwiseXor_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end bitwiseXor

        // $ANTLR start bitwiseAnd
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:162:1: bitwiseAnd : equalExp ( '&' equalExp )* ;
        public final function bitwiseAnd():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var bitwiseAnd_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var char_literal91:Token=null;
            var equalExp90:ParserRuleReturnScope = null;

            var equalExp92:ParserRuleReturnScope = null;


            var char_literal91_tree:CommonTree=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 17) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:163:2: ( equalExp ( '&' equalExp )* )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:163:4: equalExp ( '&' equalExp )*
                {
                root_0 = CommonTree(adaptor.nil());

                pushFollow(FOLLOW_equalExp_in_bitwiseAnd976);
                equalExp90=equalExp();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) adaptor.addChild(root_0, equalExp90.tree);
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:164:3: ( '&' equalExp )*
                loop15:
                do {
                    var alt15:int=2;
                    var LA15_0:int = input.LA(1);

                    if ( (LA15_0==58) ) {
                        alt15=1;
                    }


                    switch (alt15) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:165:4: '&' equalExp
                	    {
                	    char_literal91=Token(matchStream(input,58,FOLLOW_58_in_bitwiseAnd985)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    char_literal91_tree = CommonTree(adaptor.create(char_literal91));
                	    root_0 = CommonTree(adaptor.becomeRoot(char_literal91_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_equalExp_in_bitwiseAnd988);
                	    equalExp92=equalExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, equalExp92.tree);

                	    }
                	    break;

                	default :
                	    break loop15;
                    }
                } while (true);


                }

                retval.stop = input.LT(-1);

                if ( this.state.backtracking==0 ) {

                retval.tree = CommonTree(adaptor.rulePostProcessing(root_0));
                adaptor.setTokenBoundaries(retval.tree, Token(retval.start), Token(retval.stop));
                }
            }
            catch (re:RecognitionException) {
                reportError(re);
                recoverStream(input,re);
                retval.tree = CommonTree(adaptor.errorNode(input, Token(retval.start), input.LT(-1), re));

            }
            finally {
                if ( this.state.backtracking>0 ) { memoize(input, 17, bitwiseAnd_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end bitwiseAnd

        // $ANTLR start equalExp
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:169:1: equalExp : relExp ( '==' relExp | '!=' relExp | '===' relExp | '!==' relExp )* ;
        public final function equalExp():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var equalExp_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var string_literal94:Token=null;
            var string_literal96:Token=null;
            var string_literal98:Token=null;
            var string_literal100:Token=null;
            var relExp93:ParserRuleReturnScope = null;

            var relExp95:ParserRuleReturnScope = null;

            var relExp97:ParserRuleReturnScope = null;

            var relExp99:ParserRuleReturnScope = null;

            var relExp101:ParserRuleReturnScope = null;


            var string_literal94_tree:CommonTree=null;
            var string_literal96_tree:CommonTree=null;
            var string_literal98_tree:CommonTree=null;
            var string_literal100_tree:CommonTree=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 18) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:170:2: ( relExp ( '==' relExp | '!=' relExp | '===' relExp | '!==' relExp )* )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:170:4: relExp ( '==' relExp | '!=' relExp | '===' relExp | '!==' relExp )*
                {
                root_0 = CommonTree(adaptor.nil());

                pushFollow(FOLLOW_relExp_in_equalExp1004);
                relExp93=relExp();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) adaptor.addChild(root_0, relExp93.tree);
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:171:3: ( '==' relExp | '!=' relExp | '===' relExp | '!==' relExp )*
                loop16:
                do {
                    var alt16:int=5;
                    switch ( input.LA(1) ) {
                    case 59:
                        {
                        alt16=1;
                        }
                        break;
                    case 60:
                        {
                        alt16=2;
                        }
                        break;
                    case 61:
                        {
                        alt16=3;
                        }
                        break;
                    case 62:
                        {
                        alt16=4;
                        }
                        break;

                    }

                    switch (alt16) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:172:4: '==' relExp
                	    {
                	    string_literal94=Token(matchStream(input,59,FOLLOW_59_in_equalExp1013)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    string_literal94_tree = CommonTree(adaptor.create(string_literal94));
                	    root_0 = CommonTree(adaptor.becomeRoot(string_literal94_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_relExp_in_equalExp1016);
                	    relExp95=relExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, relExp95.tree);

                	    }
                	    break;
                	case 2 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:173:5: '!=' relExp
                	    {
                	    string_literal96=Token(matchStream(input,60,FOLLOW_60_in_equalExp1022)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    string_literal96_tree = CommonTree(adaptor.create(string_literal96));
                	    root_0 = CommonTree(adaptor.becomeRoot(string_literal96_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_relExp_in_equalExp1025);
                	    relExp97=relExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, relExp97.tree);

                	    }
                	    break;
                	case 3 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:174:5: '===' relExp
                	    {
                	    string_literal98=Token(matchStream(input,61,FOLLOW_61_in_equalExp1031)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    string_literal98_tree = CommonTree(adaptor.create(string_literal98));
                	    root_0 = CommonTree(adaptor.becomeRoot(string_literal98_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_relExp_in_equalExp1034);
                	    relExp99=relExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, relExp99.tree);

                	    }
                	    break;
                	case 4 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:175:5: '!==' relExp
                	    {
                	    string_literal100=Token(matchStream(input,62,FOLLOW_62_in_equalExp1040)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    string_literal100_tree = CommonTree(adaptor.create(string_literal100));
                	    root_0 = CommonTree(adaptor.becomeRoot(string_literal100_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_relExp_in_equalExp1043);
                	    relExp101=relExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, relExp101.tree);

                	    }
                	    break;

                	default :
                	    break loop16;
                    }
                } while (true);


                }

                retval.stop = input.LT(-1);

                if ( this.state.backtracking==0 ) {

                retval.tree = CommonTree(adaptor.rulePostProcessing(root_0));
                adaptor.setTokenBoundaries(retval.tree, Token(retval.start), Token(retval.stop));
                }
            }
            catch (re:RecognitionException) {
                reportError(re);
                recoverStream(input,re);
                retval.tree = CommonTree(adaptor.errorNode(input, Token(retval.start), input.LT(-1), re));

            }
            finally {
                if ( this.state.backtracking>0 ) { memoize(input, 18, equalExp_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end equalExp

        // $ANTLR start relExp
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:179:1: relExp : shiftExp ( '<' shiftExp | 'lt' shiftExp | '>' shiftExp | 'gt' shiftExp | '<=' shiftExp | 'lte' shiftExp | '>=' shiftExp | 'gte' shiftExp )* ;
        public final function relExp():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var relExp_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var char_literal103:Token=null;
            var string_literal105:Token=null;
            var char_literal107:Token=null;
            var string_literal109:Token=null;
            var string_literal111:Token=null;
            var string_literal113:Token=null;
            var string_literal115:Token=null;
            var string_literal117:Token=null;
            var shiftExp102:ParserRuleReturnScope = null;

            var shiftExp104:ParserRuleReturnScope = null;

            var shiftExp106:ParserRuleReturnScope = null;

            var shiftExp108:ParserRuleReturnScope = null;

            var shiftExp110:ParserRuleReturnScope = null;

            var shiftExp112:ParserRuleReturnScope = null;

            var shiftExp114:ParserRuleReturnScope = null;

            var shiftExp116:ParserRuleReturnScope = null;

            var shiftExp118:ParserRuleReturnScope = null;


            var char_literal103_tree:CommonTree=null;
            var string_literal105_tree:CommonTree=null;
            var char_literal107_tree:CommonTree=null;
            var string_literal109_tree:CommonTree=null;
            var string_literal111_tree:CommonTree=null;
            var string_literal113_tree:CommonTree=null;
            var string_literal115_tree:CommonTree=null;
            var string_literal117_tree:CommonTree=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 19) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:180:2: ( shiftExp ( '<' shiftExp | 'lt' shiftExp | '>' shiftExp | 'gt' shiftExp | '<=' shiftExp | 'lte' shiftExp | '>=' shiftExp | 'gte' shiftExp )* )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:180:4: shiftExp ( '<' shiftExp | 'lt' shiftExp | '>' shiftExp | 'gt' shiftExp | '<=' shiftExp | 'lte' shiftExp | '>=' shiftExp | 'gte' shiftExp )*
                {
                root_0 = CommonTree(adaptor.nil());

                pushFollow(FOLLOW_shiftExp_in_relExp1060);
                shiftExp102=shiftExp();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) adaptor.addChild(root_0, shiftExp102.tree);
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:181:3: ( '<' shiftExp | 'lt' shiftExp | '>' shiftExp | 'gt' shiftExp | '<=' shiftExp | 'lte' shiftExp | '>=' shiftExp | 'gte' shiftExp )*
                loop17:
                do {
                    var alt17:int=9;
                    switch ( input.LA(1) ) {
                    case 63:
                        {
                        alt17=1;
                        }
                        break;
                    case 64:
                        {
                        alt17=2;
                        }
                        break;
                    case 65:
                        {
                        alt17=3;
                        }
                        break;
                    case 66:
                        {
                        alt17=4;
                        }
                        break;
                    case 67:
                        {
                        alt17=5;
                        }
                        break;
                    case 68:
                        {
                        alt17=6;
                        }
                        break;
                    case 69:
                        {
                        alt17=7;
                        }
                        break;
                    case 70:
                        {
                        alt17=8;
                        }
                        break;

                    }

                    switch (alt17) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:182:4: '<' shiftExp
                	    {
                	    char_literal103=Token(matchStream(input,63,FOLLOW_63_in_relExp1069)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    char_literal103_tree = CommonTree(adaptor.create(char_literal103));
                	    root_0 = CommonTree(adaptor.becomeRoot(char_literal103_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_shiftExp_in_relExp1072);
                	    shiftExp104=shiftExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, shiftExp104.tree);

                	    }
                	    break;
                	case 2 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:183:5: 'lt' shiftExp
                	    {
                	    string_literal105=Token(matchStream(input,64,FOLLOW_64_in_relExp1078)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    string_literal105_tree = CommonTree(adaptor.create(string_literal105));
                	    root_0 = CommonTree(adaptor.becomeRoot(string_literal105_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_shiftExp_in_relExp1081);
                	    shiftExp106=shiftExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, shiftExp106.tree);

                	    }
                	    break;
                	case 3 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:184:5: '>' shiftExp
                	    {
                	    char_literal107=Token(matchStream(input,65,FOLLOW_65_in_relExp1087)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    char_literal107_tree = CommonTree(adaptor.create(char_literal107));
                	    root_0 = CommonTree(adaptor.becomeRoot(char_literal107_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_shiftExp_in_relExp1090);
                	    shiftExp108=shiftExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, shiftExp108.tree);

                	    }
                	    break;
                	case 4 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:185:5: 'gt' shiftExp
                	    {
                	    string_literal109=Token(matchStream(input,66,FOLLOW_66_in_relExp1096)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    string_literal109_tree = CommonTree(adaptor.create(string_literal109));
                	    root_0 = CommonTree(adaptor.becomeRoot(string_literal109_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_shiftExp_in_relExp1099);
                	    shiftExp110=shiftExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, shiftExp110.tree);

                	    }
                	    break;
                	case 5 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:186:5: '<=' shiftExp
                	    {
                	    string_literal111=Token(matchStream(input,67,FOLLOW_67_in_relExp1105)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    string_literal111_tree = CommonTree(adaptor.create(string_literal111));
                	    root_0 = CommonTree(adaptor.becomeRoot(string_literal111_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_shiftExp_in_relExp1108);
                	    shiftExp112=shiftExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, shiftExp112.tree);

                	    }
                	    break;
                	case 6 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:187:5: 'lte' shiftExp
                	    {
                	    string_literal113=Token(matchStream(input,68,FOLLOW_68_in_relExp1114)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    string_literal113_tree = CommonTree(adaptor.create(string_literal113));
                	    root_0 = CommonTree(adaptor.becomeRoot(string_literal113_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_shiftExp_in_relExp1117);
                	    shiftExp114=shiftExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, shiftExp114.tree);

                	    }
                	    break;
                	case 7 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:188:5: '>=' shiftExp
                	    {
                	    string_literal115=Token(matchStream(input,69,FOLLOW_69_in_relExp1123)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    string_literal115_tree = CommonTree(adaptor.create(string_literal115));
                	    root_0 = CommonTree(adaptor.becomeRoot(string_literal115_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_shiftExp_in_relExp1126);
                	    shiftExp116=shiftExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, shiftExp116.tree);

                	    }
                	    break;
                	case 8 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:189:5: 'gte' shiftExp
                	    {
                	    string_literal117=Token(matchStream(input,70,FOLLOW_70_in_relExp1132)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    string_literal117_tree = CommonTree(adaptor.create(string_literal117));
                	    root_0 = CommonTree(adaptor.becomeRoot(string_literal117_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_shiftExp_in_relExp1135);
                	    shiftExp118=shiftExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, shiftExp118.tree);

                	    }
                	    break;

                	default :
                	    break loop17;
                    }
                } while (true);


                }

                retval.stop = input.LT(-1);

                if ( this.state.backtracking==0 ) {

                retval.tree = CommonTree(adaptor.rulePostProcessing(root_0));
                adaptor.setTokenBoundaries(retval.tree, Token(retval.start), Token(retval.stop));
                }
            }
            catch (re:RecognitionException) {
                reportError(re);
                recoverStream(input,re);
                retval.tree = CommonTree(adaptor.errorNode(input, Token(retval.start), input.LT(-1), re));

            }
            finally {
                if ( this.state.backtracking>0 ) { memoize(input, 19, relExp_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end relExp

        // $ANTLR start shiftExp
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:193:1: shiftExp : addExp ( '<<' addExp | '>>' addExp | '>>>' addExp )* ;
        public final function shiftExp():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var shiftExp_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var string_literal120:Token=null;
            var string_literal122:Token=null;
            var string_literal124:Token=null;
            var addExp119:ParserRuleReturnScope = null;

            var addExp121:ParserRuleReturnScope = null;

            var addExp123:ParserRuleReturnScope = null;

            var addExp125:ParserRuleReturnScope = null;


            var string_literal120_tree:CommonTree=null;
            var string_literal122_tree:CommonTree=null;
            var string_literal124_tree:CommonTree=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 20) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:194:2: ( addExp ( '<<' addExp | '>>' addExp | '>>>' addExp )* )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:194:4: addExp ( '<<' addExp | '>>' addExp | '>>>' addExp )*
                {
                root_0 = CommonTree(adaptor.nil());

                pushFollow(FOLLOW_addExp_in_shiftExp1151);
                addExp119=addExp();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) adaptor.addChild(root_0, addExp119.tree);
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:195:3: ( '<<' addExp | '>>' addExp | '>>>' addExp )*
                loop18:
                do {
                    var alt18:int=4;
                    switch ( input.LA(1) ) {
                    case 71:
                        {
                        alt18=1;
                        }
                        break;
                    case 72:
                        {
                        alt18=2;
                        }
                        break;
                    case 73:
                        {
                        alt18=3;
                        }
                        break;

                    }

                    switch (alt18) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:196:4: '<<' addExp
                	    {
                	    string_literal120=Token(matchStream(input,71,FOLLOW_71_in_shiftExp1160)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    string_literal120_tree = CommonTree(adaptor.create(string_literal120));
                	    root_0 = CommonTree(adaptor.becomeRoot(string_literal120_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_addExp_in_shiftExp1163);
                	    addExp121=addExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, addExp121.tree);

                	    }
                	    break;
                	case 2 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:197:5: '>>' addExp
                	    {
                	    string_literal122=Token(matchStream(input,72,FOLLOW_72_in_shiftExp1169)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    string_literal122_tree = CommonTree(adaptor.create(string_literal122));
                	    root_0 = CommonTree(adaptor.becomeRoot(string_literal122_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_addExp_in_shiftExp1172);
                	    addExp123=addExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, addExp123.tree);

                	    }
                	    break;
                	case 3 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:198:5: '>>>' addExp
                	    {
                	    string_literal124=Token(matchStream(input,73,FOLLOW_73_in_shiftExp1178)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    string_literal124_tree = CommonTree(adaptor.create(string_literal124));
                	    root_0 = CommonTree(adaptor.becomeRoot(string_literal124_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_addExp_in_shiftExp1181);
                	    addExp125=addExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, addExp125.tree);

                	    }
                	    break;

                	default :
                	    break loop18;
                    }
                } while (true);


                }

                retval.stop = input.LT(-1);

                if ( this.state.backtracking==0 ) {

                retval.tree = CommonTree(adaptor.rulePostProcessing(root_0));
                adaptor.setTokenBoundaries(retval.tree, Token(retval.start), Token(retval.stop));
                }
            }
            catch (re:RecognitionException) {
                reportError(re);
                recoverStream(input,re);
                retval.tree = CommonTree(adaptor.errorNode(input, Token(retval.start), input.LT(-1), re));

            }
            finally {
                if ( this.state.backtracking>0 ) { memoize(input, 20, shiftExp_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end shiftExp

        // $ANTLR start addExp
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:202:1: addExp : multExp ( '+' multExp | '-' multExp )* ;
        public final function addExp():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var addExp_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var char_literal127:Token=null;
            var char_literal129:Token=null;
            var multExp126:ParserRuleReturnScope = null;

            var multExp128:ParserRuleReturnScope = null;

            var multExp130:ParserRuleReturnScope = null;


            var char_literal127_tree:CommonTree=null;
            var char_literal129_tree:CommonTree=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 21) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:203:2: ( multExp ( '+' multExp | '-' multExp )* )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:203:4: multExp ( '+' multExp | '-' multExp )*
                {
                root_0 = CommonTree(adaptor.nil());

                pushFollow(FOLLOW_multExp_in_addExp1197);
                multExp126=multExp();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) adaptor.addChild(root_0, multExp126.tree);
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:204:3: ( '+' multExp | '-' multExp )*
                loop19:
                do {
                    var alt19:int=3;
                    alt19 = dfa19.predict(input);
                    switch (alt19) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:205:4: '+' multExp
                	    {
                	    char_literal127=Token(matchStream(input,74,FOLLOW_74_in_addExp1206)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    char_literal127_tree = CommonTree(adaptor.create(char_literal127));
                	    root_0 = CommonTree(adaptor.becomeRoot(char_literal127_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_multExp_in_addExp1209);
                	    multExp128=multExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, multExp128.tree);

                	    }
                	    break;
                	case 2 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:206:5: '-' multExp
                	    {
                	    char_literal129=Token(matchStream(input,75,FOLLOW_75_in_addExp1215)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    char_literal129_tree = CommonTree(adaptor.create(char_literal129));
                	    root_0 = CommonTree(adaptor.becomeRoot(char_literal129_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_multExp_in_addExp1218);
                	    multExp130=multExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, multExp130.tree);

                	    }
                	    break;

                	default :
                	    break loop19;
                    }
                } while (true);


                }

                retval.stop = input.LT(-1);

                if ( this.state.backtracking==0 ) {

                retval.tree = CommonTree(adaptor.rulePostProcessing(root_0));
                adaptor.setTokenBoundaries(retval.tree, Token(retval.start), Token(retval.stop));
                }
            }
            catch (re:RecognitionException) {
                reportError(re);
                recoverStream(input,re);
                retval.tree = CommonTree(adaptor.errorNode(input, Token(retval.start), input.LT(-1), re));

            }
            finally {
                if ( this.state.backtracking>0 ) { memoize(input, 21, addExp_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end addExp

        // $ANTLR start multExp
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:210:1: multExp : unaryExp ( '*' unaryExp | '/' unaryExp | '%' unaryExp )* ;
        public final function multExp():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var multExp_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var char_literal132:Token=null;
            var char_literal134:Token=null;
            var char_literal136:Token=null;
            var unaryExp131:ParserRuleReturnScope = null;

            var unaryExp133:ParserRuleReturnScope = null;

            var unaryExp135:ParserRuleReturnScope = null;

            var unaryExp137:ParserRuleReturnScope = null;


            var char_literal132_tree:CommonTree=null;
            var char_literal134_tree:CommonTree=null;
            var char_literal136_tree:CommonTree=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 22) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:211:2: ( unaryExp ( '*' unaryExp | '/' unaryExp | '%' unaryExp )* )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:211:5: unaryExp ( '*' unaryExp | '/' unaryExp | '%' unaryExp )*
                {
                root_0 = CommonTree(adaptor.nil());

                pushFollow(FOLLOW_unaryExp_in_multExp1236);
                unaryExp131=unaryExp();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) adaptor.addChild(root_0, unaryExp131.tree);
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:212:3: ( '*' unaryExp | '/' unaryExp | '%' unaryExp )*
                loop20:
                do {
                    var alt20:int=4;
                    switch ( input.LA(1) ) {
                    case 76:
                        {
                        alt20=1;
                        }
                        break;
                    case 77:
                        {
                        alt20=2;
                        }
                        break;
                    case 78:
                        {
                        alt20=3;
                        }
                        break;

                    }

                    switch (alt20) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:213:4: '*' unaryExp
                	    {
                	    char_literal132=Token(matchStream(input,76,FOLLOW_76_in_multExp1245)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    char_literal132_tree = CommonTree(adaptor.create(char_literal132));
                	    root_0 = CommonTree(adaptor.becomeRoot(char_literal132_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_unaryExp_in_multExp1248);
                	    unaryExp133=unaryExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, unaryExp133.tree);

                	    }
                	    break;
                	case 2 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:214:5: '/' unaryExp
                	    {
                	    char_literal134=Token(matchStream(input,77,FOLLOW_77_in_multExp1254)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    char_literal134_tree = CommonTree(adaptor.create(char_literal134));
                	    root_0 = CommonTree(adaptor.becomeRoot(char_literal134_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_unaryExp_in_multExp1257);
                	    unaryExp135=unaryExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, unaryExp135.tree);

                	    }
                	    break;
                	case 3 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:215:5: '%' unaryExp
                	    {
                	    char_literal136=Token(matchStream(input,78,FOLLOW_78_in_multExp1263)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    char_literal136_tree = CommonTree(adaptor.create(char_literal136));
                	    root_0 = CommonTree(adaptor.becomeRoot(char_literal136_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_unaryExp_in_multExp1266);
                	    unaryExp137=unaryExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, unaryExp137.tree);

                	    }
                	    break;

                	default :
                	    break loop20;
                    }
                } while (true);


                }

                retval.stop = input.LT(-1);

                if ( this.state.backtracking==0 ) {

                retval.tree = CommonTree(adaptor.rulePostProcessing(root_0));
                adaptor.setTokenBoundaries(retval.tree, Token(retval.start), Token(retval.stop));
                }
            }
            catch (re:RecognitionException) {
                reportError(re);
                recoverStream(input,re);
                retval.tree = CommonTree(adaptor.errorNode(input, Token(retval.start), input.LT(-1), re));

            }
            finally {
                if ( this.state.backtracking>0 ) { memoize(input, 22, multExp_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end multExp

        // $ANTLR start unaryExp
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:219:1: unaryExp : ( '+' atom | '-' atom | '~' atom | '!' atom | atom );
        public final function unaryExp():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var unaryExp_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var char_literal138:Token=null;
            var char_literal140:Token=null;
            var char_literal142:Token=null;
            var char_literal144:Token=null;
            var atom139:ParserRuleReturnScope = null;

            var atom141:ParserRuleReturnScope = null;

            var atom143:ParserRuleReturnScope = null;

            var atom145:ParserRuleReturnScope = null;

            var atom146:ParserRuleReturnScope = null;


            var char_literal138_tree:CommonTree=null;
            var char_literal140_tree:CommonTree=null;
            var char_literal142_tree:CommonTree=null;
            var char_literal144_tree:CommonTree=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 23) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:220:2: ( '+' atom | '-' atom | '~' atom | '!' atom | atom )
                var alt21:int=5;
                switch ( input.LA(1) ) {
                case 74:
                    {
                    alt21=1;
                    }
                    break;
                case 75:
                    {
                    alt21=2;
                    }
                    break;
                case 79:
                    {
                    alt21=3;
                    }
                    break;
                case 80:
                    {
                    alt21=4;
                    }
                    break;
                case Identifier:
                case NumberLiteral:
                case StringLiteral:
                case 30:
                case 81:
                case 82:
                case 83:
                case 84:
                case 87:
                    {
                    alt21=5;
                    }
                    break;
                default:
                    if (this.state.backtracking>0) {this.state.failed=true; return retval;}
                    throw new NoViableAltException("", 21, 0, input);

                }

                switch (alt21) {
                    case 1 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:220:4: '+' atom
                        {
                        root_0 = CommonTree(adaptor.nil());

                        char_literal138=Token(matchStream(input,74,FOLLOW_74_in_unaryExp1285)); if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                        char_literal138_tree = CommonTree(adaptor.create(char_literal138));
                        root_0 = CommonTree(adaptor.becomeRoot(char_literal138_tree, root_0));
                        }
                        pushFollow(FOLLOW_atom_in_unaryExp1288);
                        atom139=atom();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) adaptor.addChild(root_0, atom139.tree);

                        }
                        break;
                    case 2 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:221:4: '-' atom
                        {
                        root_0 = CommonTree(adaptor.nil());

                        char_literal140=Token(matchStream(input,75,FOLLOW_75_in_unaryExp1293)); if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                        char_literal140_tree = CommonTree(adaptor.create(char_literal140));
                        root_0 = CommonTree(adaptor.becomeRoot(char_literal140_tree, root_0));
                        }
                        pushFollow(FOLLOW_atom_in_unaryExp1296);
                        atom141=atom();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) adaptor.addChild(root_0, atom141.tree);

                        }
                        break;
                    case 3 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:222:4: '~' atom
                        {
                        root_0 = CommonTree(adaptor.nil());

                        char_literal142=Token(matchStream(input,79,FOLLOW_79_in_unaryExp1301)); if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                        char_literal142_tree = CommonTree(adaptor.create(char_literal142));
                        root_0 = CommonTree(adaptor.becomeRoot(char_literal142_tree, root_0));
                        }
                        pushFollow(FOLLOW_atom_in_unaryExp1304);
                        atom143=atom();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) adaptor.addChild(root_0, atom143.tree);

                        }
                        break;
                    case 4 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:223:4: '!' atom
                        {
                        root_0 = CommonTree(adaptor.nil());

                        char_literal144=Token(matchStream(input,80,FOLLOW_80_in_unaryExp1309)); if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                        char_literal144_tree = CommonTree(adaptor.create(char_literal144));
                        root_0 = CommonTree(adaptor.becomeRoot(char_literal144_tree, root_0));
                        }
                        pushFollow(FOLLOW_atom_in_unaryExp1312);
                        atom145=atom();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) adaptor.addChild(root_0, atom145.tree);

                        }
                        break;
                    case 5 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:224:5: atom
                        {
                        root_0 = CommonTree(adaptor.nil());

                        pushFollow(FOLLOW_atom_in_unaryExp1318);
                        atom146=atom();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) adaptor.addChild(root_0, atom146.tree);

                        }
                        break;

                }
                retval.stop = input.LT(-1);

                if ( this.state.backtracking==0 ) {

                retval.tree = CommonTree(adaptor.rulePostProcessing(root_0));
                adaptor.setTokenBoundaries(retval.tree, Token(retval.start), Token(retval.stop));
                }
            }
            catch (re:RecognitionException) {
                reportError(re);
                recoverStream(input,re);
                retval.tree = CommonTree(adaptor.errorNode(input, Token(retval.start), input.LT(-1), re));

            }
            finally {
                if ( this.state.backtracking>0 ) { memoize(input, 23, unaryExp_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end unaryExp

        // $ANTLR start atom
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:227:1: atom : ( NumberLiteral | StringLiteral | 'true' | 'false' | 'null' | referenceOrFuncCall | funcDef | '(' exp ')' );
        public final function atom():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var atom_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var NumberLiteral147:Token=null;
            var StringLiteral148:Token=null;
            var string_literal149:Token=null;
            var string_literal150:Token=null;
            var string_literal151:Token=null;
            var char_literal154:Token=null;
            var char_literal156:Token=null;
            var referenceOrFuncCall152:ParserRuleReturnScope = null;

            var funcDef153:ParserRuleReturnScope = null;

            var exp155:ParserRuleReturnScope = null;


            var NumberLiteral147_tree:CommonTree=null;
            var StringLiteral148_tree:CommonTree=null;
            var string_literal149_tree:CommonTree=null;
            var string_literal150_tree:CommonTree=null;
            var string_literal151_tree:CommonTree=null;
            var char_literal154_tree:CommonTree=null;
            var char_literal156_tree:CommonTree=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 24) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:228:2: ( NumberLiteral | StringLiteral | 'true' | 'false' | 'null' | referenceOrFuncCall | funcDef | '(' exp ')' )
                var alt22:int=8;
                switch ( input.LA(1) ) {
                case NumberLiteral:
                    {
                    alt22=1;
                    }
                    break;
                case StringLiteral:
                    {
                    alt22=2;
                    }
                    break;
                case 81:
                    {
                    alt22=3;
                    }
                    break;
                case 82:
                    {
                    alt22=4;
                    }
                    break;
                case 83:
                    {
                    alt22=5;
                    }
                    break;
                case Identifier:
                case 84:
                    {
                    alt22=6;
                    }
                    break;
                case 87:
                    {
                    alt22=7;
                    }
                    break;
                case 30:
                    {
                    alt22=8;
                    }
                    break;
                default:
                    if (this.state.backtracking>0) {this.state.failed=true; return retval;}
                    throw new NoViableAltException("", 22, 0, input);

                }

                switch (alt22) {
                    case 1 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:228:4: NumberLiteral
                        {
                        root_0 = CommonTree(adaptor.nil());

                        NumberLiteral147=Token(matchStream(input,NumberLiteral,FOLLOW_NumberLiteral_in_atom1330)); if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                        NumberLiteral147_tree = CommonTree(adaptor.create(NumberLiteral147));
                        adaptor.addChild(root_0, NumberLiteral147_tree);
                        }

                        }
                        break;
                    case 2 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:229:4: StringLiteral
                        {
                        root_0 = CommonTree(adaptor.nil());

                        StringLiteral148=Token(matchStream(input,StringLiteral,FOLLOW_StringLiteral_in_atom1335)); if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                        StringLiteral148_tree = CommonTree(adaptor.create(StringLiteral148));
                        adaptor.addChild(root_0, StringLiteral148_tree);
                        }

                        }
                        break;
                    case 3 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:230:4: 'true'
                        {
                        root_0 = CommonTree(adaptor.nil());

                        string_literal149=Token(matchStream(input,81,FOLLOW_81_in_atom1340)); if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                        string_literal149_tree = CommonTree(adaptor.create(string_literal149));
                        adaptor.addChild(root_0, string_literal149_tree);
                        }

                        }
                        break;
                    case 4 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:231:4: 'false'
                        {
                        root_0 = CommonTree(adaptor.nil());

                        string_literal150=Token(matchStream(input,82,FOLLOW_82_in_atom1345)); if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                        string_literal150_tree = CommonTree(adaptor.create(string_literal150));
                        adaptor.addChild(root_0, string_literal150_tree);
                        }

                        }
                        break;
                    case 5 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:232:4: 'null'
                        {
                        root_0 = CommonTree(adaptor.nil());

                        string_literal151=Token(matchStream(input,83,FOLLOW_83_in_atom1350)); if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                        string_literal151_tree = CommonTree(adaptor.create(string_literal151));
                        adaptor.addChild(root_0, string_literal151_tree);
                        }

                        }
                        break;
                    case 6 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:233:4: referenceOrFuncCall
                        {
                        root_0 = CommonTree(adaptor.nil());

                        pushFollow(FOLLOW_referenceOrFuncCall_in_atom1355);
                        referenceOrFuncCall152=referenceOrFuncCall();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) adaptor.addChild(root_0, referenceOrFuncCall152.tree);

                        }
                        break;
                    case 7 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:234:4: funcDef
                        {
                        root_0 = CommonTree(adaptor.nil());

                        pushFollow(FOLLOW_funcDef_in_atom1360);
                        funcDef153=funcDef();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) adaptor.addChild(root_0, funcDef153.tree);

                        }
                        break;
                    case 8 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:235:4: '(' exp ')'
                        {
                        root_0 = CommonTree(adaptor.nil());

                        char_literal154=Token(matchStream(input,30,FOLLOW_30_in_atom1365)); if (this.state.failed) return retval;
                        pushFollow(FOLLOW_exp_in_atom1368);
                        exp155=exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) adaptor.addChild(root_0, exp155.tree);
                        char_literal156=Token(matchStream(input,31,FOLLOW_31_in_atom1370)); if (this.state.failed) return retval;

                        }
                        break;

                }
                retval.stop = input.LT(-1);

                if ( this.state.backtracking==0 ) {

                retval.tree = CommonTree(adaptor.rulePostProcessing(root_0));
                adaptor.setTokenBoundaries(retval.tree, Token(retval.start), Token(retval.stop));
                }
            }
            catch (re:RecognitionException) {
                reportError(re);
                recoverStream(input,re);
                retval.tree = CommonTree(adaptor.errorNode(input, Token(retval.start), input.LT(-1), re));

            }
            finally {
                if ( this.state.backtracking>0 ) { memoize(input, 24, atom_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end atom

        // $ANTLR start reference
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:238:1: reference : (l= object -> $l) ( '[' e= exp ']' -> ^( PropExp $reference $e) | '.' i= Identifier -> ^( PropRef $reference $i) | '(' (p= params )? ')' '[' e= exp ']' -> ^( PropExp ^( FuncCall $reference $p) $e) | '(' (p= params )? ')' '.' i= Identifier -> ^( PropRef ^( FuncCall $reference $p) $i) )* ;
        public final function reference():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var reference_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var i:Token=null;
            var char_literal157:Token=null;
            var char_literal158:Token=null;
            var char_literal159:Token=null;
            var char_literal160:Token=null;
            var char_literal161:Token=null;
            var char_literal162:Token=null;
            var char_literal163:Token=null;
            var char_literal164:Token=null;
            var char_literal165:Token=null;
            var char_literal166:Token=null;
            var l:ParserRuleReturnScope = null;

            var e:ParserRuleReturnScope = null;

            var p:ParserRuleReturnScope = null;


            var i_tree:CommonTree=null;
            var char_literal157_tree:CommonTree=null;
            var char_literal158_tree:CommonTree=null;
            var char_literal159_tree:CommonTree=null;
            var char_literal160_tree:CommonTree=null;
            var char_literal161_tree:CommonTree=null;
            var char_literal162_tree:CommonTree=null;
            var char_literal163_tree:CommonTree=null;
            var char_literal164_tree:CommonTree=null;
            var char_literal165_tree:CommonTree=null;
            var char_literal166_tree:CommonTree=null;
            var stream_30:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 30");
            var stream_31:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 31");
            var stream_Identifier:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token Identifier");
            var stream_86:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 86");
            var stream_84:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 84");
            var stream_85:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 85");
            var stream_exp:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule exp");
            var stream_object:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule object");
            var stream_params:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule params");
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 25) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:239:2: ( (l= object -> $l) ( '[' e= exp ']' -> ^( PropExp $reference $e) | '.' i= Identifier -> ^( PropRef $reference $i) | '(' (p= params )? ')' '[' e= exp ']' -> ^( PropExp ^( FuncCall $reference $p) $e) | '(' (p= params )? ')' '.' i= Identifier -> ^( PropRef ^( FuncCall $reference $p) $i) )* )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:239:4: (l= object -> $l) ( '[' e= exp ']' -> ^( PropExp $reference $e) | '.' i= Identifier -> ^( PropRef $reference $i) | '(' (p= params )? ')' '[' e= exp ']' -> ^( PropExp ^( FuncCall $reference $p) $e) | '(' (p= params )? ')' '.' i= Identifier -> ^( PropRef ^( FuncCall $reference $p) $i) )*
                {
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:239:4: (l= object -> $l)
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:239:5: l= object
                {
                pushFollow(FOLLOW_object_in_reference1385);
                l=object();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) stream_object.add(l.tree);


                // AST REWRITE
                // elements: l
                // token labels: 
                // rule labels: retval, l
                // token list labels: 
                // rule list labels: 
                if ( this.state.backtracking==0 ) {
                retval.tree = root_0;
                var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);
                var stream_l:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule l",l!=null?l.tree:null);

                root_0 = CommonTree(adaptor.nil());
                // 239:18: -> $l
                {
                    adaptor.addChild(root_0, stream_l.nextTree());

                }

                retval.tree = root_0;}
                }

                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:240:3: ( '[' e= exp ']' -> ^( PropExp $reference $e) | '.' i= Identifier -> ^( PropRef $reference $i) | '(' (p= params )? ')' '[' e= exp ']' -> ^( PropExp ^( FuncCall $reference $p) $e) | '(' (p= params )? ')' '.' i= Identifier -> ^( PropRef ^( FuncCall $reference $p) $i) )*
                loop25:
                do {
                    var alt25:int=5;
                    alt25 = dfa25.predict(input);
                    switch (alt25) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:241:4: '[' e= exp ']'
                	    {
                	    char_literal157=Token(matchStream(input,84,FOLLOW_84_in_reference1404)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_84.add(char_literal157);

                	    pushFollow(FOLLOW_exp_in_reference1408);
                	    e=exp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) stream_exp.add(e.tree);
                	    char_literal158=Token(matchStream(input,85,FOLLOW_85_in_reference1410)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_85.add(char_literal158);



                	    // AST REWRITE
                	    // elements: e, reference
                	    // token labels: 
                	    // rule labels: retval, e
                	    // token list labels: 
                	    // rule list labels: 
                	    if ( this.state.backtracking==0 ) {
                	    retval.tree = root_0;
                	    var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);
                	    var stream_e:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule e",e!=null?e.tree:null);

                	    root_0 = CommonTree(adaptor.nil());
                	    // 241:20: -> ^( PropExp $reference $e)
                	    {
                	        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:241:23: ^( PropExp $reference $e)
                	        {
                	        var root_1:CommonTree = CommonTree(adaptor.nil());
                	        root_1 = CommonTree(adaptor.becomeRoot(CommonTree(adaptor.create(PropExp, "PropExp")), root_1));

                	        adaptor.addChild(root_1, stream_retval.nextTree());
                	        adaptor.addChild(root_1, stream_e.nextTree());

                	        adaptor.addChild(root_0, root_1);
                	        }

                	    }

                	    retval.tree = root_0;}
                	    }
                	    break;
                	case 2 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:243:5: '.' i= Identifier
                	    {
                	    char_literal159=Token(matchStream(input,86,FOLLOW_86_in_reference1434)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_86.add(char_literal159);

                	    i=Token(matchStream(input,Identifier,FOLLOW_Identifier_in_reference1438)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_Identifier.add(i);



                	    // AST REWRITE
                	    // elements: reference, i
                	    // token labels: i
                	    // rule labels: retval
                	    // token list labels: 
                	    // rule list labels: 
                	    if ( this.state.backtracking==0 ) {
                	    retval.tree = root_0;
                	    var stream_i:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token i",i);
                	    var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                	    root_0 = CommonTree(adaptor.nil());
                	    // 243:23: -> ^( PropRef $reference $i)
                	    {
                	        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:243:26: ^( PropRef $reference $i)
                	        {
                	        var root_1:CommonTree = CommonTree(adaptor.nil());
                	        root_1 = CommonTree(adaptor.becomeRoot(CommonTree(adaptor.create(PropRef, "PropRef")), root_1));

                	        adaptor.addChild(root_1, stream_retval.nextTree());
                	        adaptor.addChild(root_1, stream_i.nextNode());

                	        adaptor.addChild(root_0, root_1);
                	        }

                	    }

                	    retval.tree = root_0;}
                	    }
                	    break;
                	case 3 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:245:5: '(' (p= params )? ')' '[' e= exp ']'
                	    {
                	    char_literal160=Token(matchStream(input,30,FOLLOW_30_in_reference1460)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_30.add(char_literal160);

                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:245:10: (p= params )?
                	    var alt23:int=2;
                	    var LA23_0:int = input.LA(1);

                	    if ( ((LA23_0>=17 && LA23_0<=19)||LA23_0==30||LA23_0==49||(LA23_0>=74 && LA23_0<=75)||(LA23_0>=79 && LA23_0<=84)||LA23_0==87) ) {
                	        alt23=1;
                	    }
                	    switch (alt23) {
                	        case 1 :
                	            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:0:0: p= params
                	            {
                	            pushFollow(FOLLOW_params_in_reference1464);
                	            p=params();

                	            state._fsp = state._fsp - 1;
                	            if (this.state.failed) return retval;
                	            if ( this.state.backtracking==0 ) stream_params.add(p.tree);

                	            }
                	            break;

                	    }

                	    char_literal161=Token(matchStream(input,31,FOLLOW_31_in_reference1467)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_31.add(char_literal161);

                	    char_literal162=Token(matchStream(input,84,FOLLOW_84_in_reference1472)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_84.add(char_literal162);

                	    pushFollow(FOLLOW_exp_in_reference1476);
                	    e=exp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) stream_exp.add(e.tree);
                	    char_literal163=Token(matchStream(input,85,FOLLOW_85_in_reference1478)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_85.add(char_literal163);



                	    // AST REWRITE
                	    // elements: reference, p, e
                	    // token labels: 
                	    // rule labels: retval, e, p
                	    // token list labels: 
                	    // rule list labels: 
                	    if ( this.state.backtracking==0 ) {
                	    retval.tree = root_0;
                	    var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);
                	    var stream_e:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule e",e!=null?e.tree:null);
                	    var stream_p:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule p",p!=null?p.tree:null);

                	    root_0 = CommonTree(adaptor.nil());
                	    // 246:20: -> ^( PropExp ^( FuncCall $reference $p) $e)
                	    {
                	        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:246:23: ^( PropExp ^( FuncCall $reference $p) $e)
                	        {
                	        var root_1:CommonTree = CommonTree(adaptor.nil());
                	        root_1 = CommonTree(adaptor.becomeRoot(CommonTree(adaptor.create(PropExp, "PropExp")), root_1));

                	        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:246:33: ^( FuncCall $reference $p)
                	        {
                	        var root_2:CommonTree = CommonTree(adaptor.nil());
                	        root_2 = CommonTree(adaptor.becomeRoot(CommonTree(adaptor.create(FuncCall, "FuncCall")), root_2));

                	        adaptor.addChild(root_2, stream_retval.nextTree());
                	        adaptor.addChild(root_2, stream_p.nextTree());

                	        adaptor.addChild(root_1, root_2);
                	        }
                	        adaptor.addChild(root_1, stream_e.nextTree());

                	        adaptor.addChild(root_0, root_1);
                	        }

                	    }

                	    retval.tree = root_0;}
                	    }
                	    break;
                	case 4 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:248:5: '(' (p= params )? ')' '.' i= Identifier
                	    {
                	    char_literal164=Token(matchStream(input,30,FOLLOW_30_in_reference1509)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_30.add(char_literal164);

                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:248:10: (p= params )?
                	    var alt24:int=2;
                	    var LA24_0:int = input.LA(1);

                	    if ( ((LA24_0>=17 && LA24_0<=19)||LA24_0==30||LA24_0==49||(LA24_0>=74 && LA24_0<=75)||(LA24_0>=79 && LA24_0<=84)||LA24_0==87) ) {
                	        alt24=1;
                	    }
                	    switch (alt24) {
                	        case 1 :
                	            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:0:0: p= params
                	            {
                	            pushFollow(FOLLOW_params_in_reference1513);
                	            p=params();

                	            state._fsp = state._fsp - 1;
                	            if (this.state.failed) return retval;
                	            if ( this.state.backtracking==0 ) stream_params.add(p.tree);

                	            }
                	            break;

                	    }

                	    char_literal165=Token(matchStream(input,31,FOLLOW_31_in_reference1516)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_31.add(char_literal165);

                	    char_literal166=Token(matchStream(input,86,FOLLOW_86_in_reference1521)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_86.add(char_literal166);

                	    i=Token(matchStream(input,Identifier,FOLLOW_Identifier_in_reference1525)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_Identifier.add(i);



                	    // AST REWRITE
                	    // elements: reference, i, p
                	    // token labels: i
                	    // rule labels: retval, p
                	    // token list labels: 
                	    // rule list labels: 
                	    if ( this.state.backtracking==0 ) {
                	    retval.tree = root_0;
                	    var stream_i:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token i",i);
                	    var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);
                	    var stream_p:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule p",p!=null?p.tree:null);

                	    root_0 = CommonTree(adaptor.nil());
                	    // 249:22: -> ^( PropRef ^( FuncCall $reference $p) $i)
                	    {
                	        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:249:25: ^( PropRef ^( FuncCall $reference $p) $i)
                	        {
                	        var root_1:CommonTree = CommonTree(adaptor.nil());
                	        root_1 = CommonTree(adaptor.becomeRoot(CommonTree(adaptor.create(PropRef, "PropRef")), root_1));

                	        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:249:35: ^( FuncCall $reference $p)
                	        {
                	        var root_2:CommonTree = CommonTree(adaptor.nil());
                	        root_2 = CommonTree(adaptor.becomeRoot(CommonTree(adaptor.create(FuncCall, "FuncCall")), root_2));

                	        adaptor.addChild(root_2, stream_retval.nextTree());
                	        adaptor.addChild(root_2, stream_p.nextTree());

                	        adaptor.addChild(root_1, root_2);
                	        }
                	        adaptor.addChild(root_1, stream_i.nextNode());

                	        adaptor.addChild(root_0, root_1);
                	        }

                	    }

                	    retval.tree = root_0;}
                	    }
                	    break;

                	default :
                	    break loop25;
                    }
                } while (true);


                }

                retval.stop = input.LT(-1);

                if ( this.state.backtracking==0 ) {

                retval.tree = CommonTree(adaptor.rulePostProcessing(root_0));
                adaptor.setTokenBoundaries(retval.tree, Token(retval.start), Token(retval.stop));
                }
            }
            catch (re:RecognitionException) {
                reportError(re);
                recoverStream(input,re);
                retval.tree = CommonTree(adaptor.errorNode(input, Token(retval.start), input.LT(-1), re));

            }
            finally {
                if ( this.state.backtracking>0 ) { memoize(input, 25, reference_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end reference

        // $ANTLR start referenceOrFuncCall
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:253:1: referenceOrFuncCall : (l= object -> $l) ( '[' e= exp ']' -> ^( PropExp $referenceOrFuncCall $e) | '.' i= Identifier -> ^( PropRef $referenceOrFuncCall $i) | '(' p= params ')' -> ^( FuncCall $referenceOrFuncCall $p) | '(' ')' -> ^( FuncCall $referenceOrFuncCall) )* ;
        public final function referenceOrFuncCall():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var referenceOrFuncCall_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var i:Token=null;
            var char_literal167:Token=null;
            var char_literal168:Token=null;
            var char_literal169:Token=null;
            var char_literal170:Token=null;
            var char_literal171:Token=null;
            var char_literal172:Token=null;
            var char_literal173:Token=null;
            var l:ParserRuleReturnScope = null;

            var e:ParserRuleReturnScope = null;

            var p:ParserRuleReturnScope = null;


            var i_tree:CommonTree=null;
            var char_literal167_tree:CommonTree=null;
            var char_literal168_tree:CommonTree=null;
            var char_literal169_tree:CommonTree=null;
            var char_literal170_tree:CommonTree=null;
            var char_literal171_tree:CommonTree=null;
            var char_literal172_tree:CommonTree=null;
            var char_literal173_tree:CommonTree=null;
            var stream_30:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 30");
            var stream_31:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 31");
            var stream_Identifier:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token Identifier");
            var stream_86:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 86");
            var stream_84:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 84");
            var stream_85:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 85");
            var stream_exp:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule exp");
            var stream_object:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule object");
            var stream_params:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule params");
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 26) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:254:2: ( (l= object -> $l) ( '[' e= exp ']' -> ^( PropExp $referenceOrFuncCall $e) | '.' i= Identifier -> ^( PropRef $referenceOrFuncCall $i) | '(' p= params ')' -> ^( FuncCall $referenceOrFuncCall $p) | '(' ')' -> ^( FuncCall $referenceOrFuncCall) )* )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:254:4: (l= object -> $l) ( '[' e= exp ']' -> ^( PropExp $referenceOrFuncCall $e) | '.' i= Identifier -> ^( PropRef $referenceOrFuncCall $i) | '(' p= params ')' -> ^( FuncCall $referenceOrFuncCall $p) | '(' ')' -> ^( FuncCall $referenceOrFuncCall) )*
                {
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:254:4: (l= object -> $l)
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:254:5: l= object
                {
                pushFollow(FOLLOW_object_in_referenceOrFuncCall1565);
                l=object();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) stream_object.add(l.tree);


                // AST REWRITE
                // elements: l
                // token labels: 
                // rule labels: retval, l
                // token list labels: 
                // rule list labels: 
                if ( this.state.backtracking==0 ) {
                retval.tree = root_0;
                var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);
                var stream_l:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule l",l!=null?l.tree:null);

                root_0 = CommonTree(adaptor.nil());
                // 254:18: -> $l
                {
                    adaptor.addChild(root_0, stream_l.nextTree());

                }

                retval.tree = root_0;}
                }

                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:255:3: ( '[' e= exp ']' -> ^( PropExp $referenceOrFuncCall $e) | '.' i= Identifier -> ^( PropRef $referenceOrFuncCall $i) | '(' p= params ')' -> ^( FuncCall $referenceOrFuncCall $p) | '(' ')' -> ^( FuncCall $referenceOrFuncCall) )*
                loop26:
                do {
                    var alt26:int=5;
                    alt26 = dfa26.predict(input);
                    switch (alt26) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:256:4: '[' e= exp ']'
                	    {
                	    char_literal167=Token(matchStream(input,84,FOLLOW_84_in_referenceOrFuncCall1584)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_84.add(char_literal167);

                	    pushFollow(FOLLOW_exp_in_referenceOrFuncCall1588);
                	    e=exp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) stream_exp.add(e.tree);
                	    char_literal168=Token(matchStream(input,85,FOLLOW_85_in_referenceOrFuncCall1590)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_85.add(char_literal168);



                	    // AST REWRITE
                	    // elements: referenceOrFuncCall, e
                	    // token labels: 
                	    // rule labels: retval, e
                	    // token list labels: 
                	    // rule list labels: 
                	    if ( this.state.backtracking==0 ) {
                	    retval.tree = root_0;
                	    var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);
                	    var stream_e:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule e",e!=null?e.tree:null);

                	    root_0 = CommonTree(adaptor.nil());
                	    // 256:20: -> ^( PropExp $referenceOrFuncCall $e)
                	    {
                	        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:256:23: ^( PropExp $referenceOrFuncCall $e)
                	        {
                	        var root_1:CommonTree = CommonTree(adaptor.nil());
                	        root_1 = CommonTree(adaptor.becomeRoot(CommonTree(adaptor.create(PropExp, "PropExp")), root_1));

                	        adaptor.addChild(root_1, stream_retval.nextTree());
                	        adaptor.addChild(root_1, stream_e.nextTree());

                	        adaptor.addChild(root_0, root_1);
                	        }

                	    }

                	    retval.tree = root_0;}
                	    }
                	    break;
                	case 2 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:257:5: '.' i= Identifier
                	    {
                	    char_literal169=Token(matchStream(input,86,FOLLOW_86_in_referenceOrFuncCall1610)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_86.add(char_literal169);

                	    i=Token(matchStream(input,Identifier,FOLLOW_Identifier_in_referenceOrFuncCall1614)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_Identifier.add(i);



                	    // AST REWRITE
                	    // elements: i, referenceOrFuncCall
                	    // token labels: i
                	    // rule labels: retval
                	    // token list labels: 
                	    // rule list labels: 
                	    if ( this.state.backtracking==0 ) {
                	    retval.tree = root_0;
                	    var stream_i:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token i",i);
                	    var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                	    root_0 = CommonTree(adaptor.nil());
                	    // 257:23: -> ^( PropRef $referenceOrFuncCall $i)
                	    {
                	        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:257:26: ^( PropRef $referenceOrFuncCall $i)
                	        {
                	        var root_1:CommonTree = CommonTree(adaptor.nil());
                	        root_1 = CommonTree(adaptor.becomeRoot(CommonTree(adaptor.create(PropRef, "PropRef")), root_1));

                	        adaptor.addChild(root_1, stream_retval.nextTree());
                	        adaptor.addChild(root_1, stream_i.nextNode());

                	        adaptor.addChild(root_0, root_1);
                	        }

                	    }

                	    retval.tree = root_0;}
                	    }
                	    break;
                	case 3 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:258:5: '(' p= params ')'
                	    {
                	    char_literal170=Token(matchStream(input,30,FOLLOW_30_in_referenceOrFuncCall1633)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_30.add(char_literal170);

                	    pushFollow(FOLLOW_params_in_referenceOrFuncCall1637);
                	    p=params();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) stream_params.add(p.tree);
                	    char_literal171=Token(matchStream(input,31,FOLLOW_31_in_referenceOrFuncCall1639)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_31.add(char_literal171);



                	    // AST REWRITE
                	    // elements: referenceOrFuncCall, p
                	    // token labels: 
                	    // rule labels: retval, p
                	    // token list labels: 
                	    // rule list labels: 
                	    if ( this.state.backtracking==0 ) {
                	    retval.tree = root_0;
                	    var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);
                	    var stream_p:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule p",p!=null?p.tree:null);

                	    root_0 = CommonTree(adaptor.nil());
                	    // 258:23: -> ^( FuncCall $referenceOrFuncCall $p)
                	    {
                	        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:258:26: ^( FuncCall $referenceOrFuncCall $p)
                	        {
                	        var root_1:CommonTree = CommonTree(adaptor.nil());
                	        root_1 = CommonTree(adaptor.becomeRoot(CommonTree(adaptor.create(FuncCall, "FuncCall")), root_1));

                	        adaptor.addChild(root_1, stream_retval.nextTree());
                	        adaptor.addChild(root_1, stream_p.nextTree());

                	        adaptor.addChild(root_0, root_1);
                	        }

                	    }

                	    retval.tree = root_0;}
                	    }
                	    break;
                	case 4 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:259:5: '(' ')'
                	    {
                	    char_literal172=Token(matchStream(input,30,FOLLOW_30_in_referenceOrFuncCall1658)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_30.add(char_literal172);

                	    char_literal173=Token(matchStream(input,31,FOLLOW_31_in_referenceOrFuncCall1660)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_31.add(char_literal173);



                	    // AST REWRITE
                	    // elements: referenceOrFuncCall
                	    // token labels: 
                	    // rule labels: retval
                	    // token list labels: 
                	    // rule list labels: 
                	    if ( this.state.backtracking==0 ) {
                	    retval.tree = root_0;
                	    var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                	    root_0 = CommonTree(adaptor.nil());
                	    // 259:16: -> ^( FuncCall $referenceOrFuncCall)
                	    {
                	        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:259:19: ^( FuncCall $referenceOrFuncCall)
                	        {
                	        var root_1:CommonTree = CommonTree(adaptor.nil());
                	        root_1 = CommonTree(adaptor.becomeRoot(CommonTree(adaptor.create(FuncCall, "FuncCall")), root_1));

                	        adaptor.addChild(root_1, stream_retval.nextTree());

                	        adaptor.addChild(root_0, root_1);
                	        }

                	    }

                	    retval.tree = root_0;}
                	    }
                	    break;

                	default :
                	    break loop26;
                    }
                } while (true);


                }

                retval.stop = input.LT(-1);

                if ( this.state.backtracking==0 ) {

                retval.tree = CommonTree(adaptor.rulePostProcessing(root_0));
                adaptor.setTokenBoundaries(retval.tree, Token(retval.start), Token(retval.stop));
                }
            }
            catch (re:RecognitionException) {
                reportError(re);
                recoverStream(input,re);
                retval.tree = CommonTree(adaptor.errorNode(input, Token(retval.start), input.LT(-1), re));

            }
            finally {
                if ( this.state.backtracking>0 ) { memoize(input, 26, referenceOrFuncCall_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end referenceOrFuncCall

        // $ANTLR start funcDef
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:263:1: funcDef : 'function' ( '(' a= args ')' b= block -> ^( FuncDef $a $b) | '(' ')' b= block -> ^( FuncDef $b) ) ;
        public final function funcDef():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var funcDef_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var string_literal174:Token=null;
            var char_literal175:Token=null;
            var char_literal176:Token=null;
            var char_literal177:Token=null;
            var char_literal178:Token=null;
            var a:ParserRuleReturnScope = null;

            var b:ParserRuleReturnScope = null;


            var string_literal174_tree:CommonTree=null;
            var char_literal175_tree:CommonTree=null;
            var char_literal176_tree:CommonTree=null;
            var char_literal177_tree:CommonTree=null;
            var char_literal178_tree:CommonTree=null;
            var stream_30:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 30");
            var stream_31:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 31");
            var stream_87:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 87");
            var stream_args:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule args");
            var stream_block:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule block");
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 27) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:264:2: ( 'function' ( '(' a= args ')' b= block -> ^( FuncDef $a $b) | '(' ')' b= block -> ^( FuncDef $b) ) )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:264:4: 'function' ( '(' a= args ')' b= block -> ^( FuncDef $a $b) | '(' ')' b= block -> ^( FuncDef $b) )
                {
                string_literal174=Token(matchStream(input,87,FOLLOW_87_in_funcDef1689)); if (this.state.failed) return retval; 
                if ( this.state.backtracking==0 ) stream_87.add(string_literal174);

                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:265:3: ( '(' a= args ')' b= block -> ^( FuncDef $a $b) | '(' ')' b= block -> ^( FuncDef $b) )
                var alt27:int=2;
                var LA27_0:int = input.LA(1);

                if ( (LA27_0==30) ) {
                    var LA27_1:int = input.LA(2);

                    if ( (LA27_1==31) ) {
                        alt27=2;
                    }
                    else if ( (LA27_1==17) ) {
                        alt27=1;
                    }
                    else {
                        if (this.state.backtracking>0) {this.state.failed=true; return retval;}
                        throw new NoViableAltException("", 27, 1, input);

                    }
                }
                else {
                    if (this.state.backtracking>0) {this.state.failed=true; return retval;}
                    throw new NoViableAltException("", 27, 0, input);

                }
                switch (alt27) {
                    case 1 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:266:4: '(' a= args ')' b= block
                        {
                        char_literal175=Token(matchStream(input,30,FOLLOW_30_in_funcDef1698)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_30.add(char_literal175);

                        pushFollow(FOLLOW_args_in_funcDef1702);
                        a=args();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_args.add(a.tree);
                        char_literal176=Token(matchStream(input,31,FOLLOW_31_in_funcDef1704)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_31.add(char_literal176);

                        pushFollow(FOLLOW_block_in_funcDef1708);
                        b=block();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_block.add(b.tree);


                        // AST REWRITE
                        // elements: b, a
                        // token labels: 
                        // rule labels: retval, b, a
                        // token list labels: 
                        // rule list labels: 
                        if ( this.state.backtracking==0 ) {
                        retval.tree = root_0;
                        var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);
                        var stream_b:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule b",b!=null?b.tree:null);
                        var stream_a:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule a",a!=null?a.tree:null);

                        root_0 = CommonTree(adaptor.nil());
                        // 266:28: -> ^( FuncDef $a $b)
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:266:31: ^( FuncDef $a $b)
                            {
                            var root_1:CommonTree = CommonTree(adaptor.nil());
                            root_1 = CommonTree(adaptor.becomeRoot(CommonTree(adaptor.create(FuncDef, "FuncDef")), root_1));

                            adaptor.addChild(root_1, stream_a.nextTree());
                            adaptor.addChild(root_1, stream_b.nextTree());

                            adaptor.addChild(root_0, root_1);
                            }

                        }

                        retval.tree = root_0;}
                        }
                        break;
                    case 2 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:267:5: '(' ')' b= block
                        {
                        char_literal177=Token(matchStream(input,30,FOLLOW_30_in_funcDef1728)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_30.add(char_literal177);

                        char_literal178=Token(matchStream(input,31,FOLLOW_31_in_funcDef1730)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_31.add(char_literal178);

                        pushFollow(FOLLOW_block_in_funcDef1734);
                        b=block();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_block.add(b.tree);


                        // AST REWRITE
                        // elements: b
                        // token labels: 
                        // rule labels: retval, b
                        // token list labels: 
                        // rule list labels: 
                        if ( this.state.backtracking==0 ) {
                        retval.tree = root_0;
                        var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);
                        var stream_b:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule b",b!=null?b.tree:null);

                        root_0 = CommonTree(adaptor.nil());
                        // 267:23: -> ^( FuncDef $b)
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:267:26: ^( FuncDef $b)
                            {
                            var root_1:CommonTree = CommonTree(adaptor.nil());
                            root_1 = CommonTree(adaptor.becomeRoot(CommonTree(adaptor.create(FuncDef, "FuncDef")), root_1));

                            adaptor.addChild(root_1, stream_b.nextTree());

                            adaptor.addChild(root_0, root_1);
                            }

                        }

                        retval.tree = root_0;}
                        }
                        break;

                }


                }

                retval.stop = input.LT(-1);

                if ( this.state.backtracking==0 ) {

                retval.tree = CommonTree(adaptor.rulePostProcessing(root_0));
                adaptor.setTokenBoundaries(retval.tree, Token(retval.start), Token(retval.stop));
                }
            }
            catch (re:RecognitionException) {
                reportError(re);
                recoverStream(input,re);
                retval.tree = CommonTree(adaptor.errorNode(input, Token(retval.start), input.LT(-1), re));

            }
            finally {
                if ( this.state.backtracking>0 ) { memoize(input, 27, funcDef_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end funcDef

        // $ANTLR start args
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:271:1: args : Identifier ( ',' Identifier )* ;
        public final function args():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var args_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var Identifier179:Token=null;
            var char_literal180:Token=null;
            var Identifier181:Token=null;

            var Identifier179_tree:CommonTree=null;
            var char_literal180_tree:CommonTree=null;
            var Identifier181_tree:CommonTree=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 28) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:272:2: ( Identifier ( ',' Identifier )* )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:272:4: Identifier ( ',' Identifier )*
                {
                root_0 = CommonTree(adaptor.nil());

                Identifier179=Token(matchStream(input,Identifier,FOLLOW_Identifier_in_args1761)); if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) {
                Identifier179_tree = CommonTree(adaptor.create(Identifier179));
                adaptor.addChild(root_0, Identifier179_tree);
                }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:273:3: ( ',' Identifier )*
                loop28:
                do {
                    var alt28:int=2;
                    var LA28_0:int = input.LA(1);

                    if ( (LA28_0==88) ) {
                        alt28=1;
                    }


                    switch (alt28) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:274:4: ',' Identifier
                	    {
                	    char_literal180=Token(matchStream(input,88,FOLLOW_88_in_args1770)); if (this.state.failed) return retval;
                	    Identifier181=Token(matchStream(input,Identifier,FOLLOW_Identifier_in_args1776)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    Identifier181_tree = CommonTree(adaptor.create(Identifier181));
                	    adaptor.addChild(root_0, Identifier181_tree);
                	    }

                	    }
                	    break;

                	default :
                	    break loop28;
                    }
                } while (true);


                }

                retval.stop = input.LT(-1);

                if ( this.state.backtracking==0 ) {

                retval.tree = CommonTree(adaptor.rulePostProcessing(root_0));
                adaptor.setTokenBoundaries(retval.tree, Token(retval.start), Token(retval.stop));
                }
            }
            catch (re:RecognitionException) {
                reportError(re);
                recoverStream(input,re);
                retval.tree = CommonTree(adaptor.errorNode(input, Token(retval.start), input.LT(-1), re));

            }
            finally {
                if ( this.state.backtracking>0 ) { memoize(input, 28, args_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end args

        // $ANTLR start object
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:279:1: object : ( Identifier | array );
        public final function object():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var object_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var Identifier182:Token=null;
            var array183:ParserRuleReturnScope = null;


            var Identifier182_tree:CommonTree=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 29) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:280:2: ( Identifier | array )
                var alt29:int=2;
                var LA29_0:int = input.LA(1);

                if ( (LA29_0==17) ) {
                    alt29=1;
                }
                else if ( (LA29_0==84) ) {
                    alt29=2;
                }
                else {
                    if (this.state.backtracking>0) {this.state.failed=true; return retval;}
                    throw new NoViableAltException("", 29, 0, input);

                }
                switch (alt29) {
                    case 1 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:280:4: Identifier
                        {
                        root_0 = CommonTree(adaptor.nil());

                        Identifier182=Token(matchStream(input,Identifier,FOLLOW_Identifier_in_object1793)); if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                        Identifier182_tree = CommonTree(adaptor.create(Identifier182));
                        adaptor.addChild(root_0, Identifier182_tree);
                        }

                        }
                        break;
                    case 2 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:281:4: array
                        {
                        root_0 = CommonTree(adaptor.nil());

                        pushFollow(FOLLOW_array_in_object1798);
                        array183=array();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) adaptor.addChild(root_0, array183.tree);

                        }
                        break;

                }
                retval.stop = input.LT(-1);

                if ( this.state.backtracking==0 ) {

                retval.tree = CommonTree(adaptor.rulePostProcessing(root_0));
                adaptor.setTokenBoundaries(retval.tree, Token(retval.start), Token(retval.stop));
                }
            }
            catch (re:RecognitionException) {
                reportError(re);
                recoverStream(input,re);
                retval.tree = CommonTree(adaptor.errorNode(input, Token(retval.start), input.LT(-1), re));

            }
            finally {
                if ( this.state.backtracking>0 ) { memoize(input, 29, object_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end object

        // $ANTLR start params
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:284:1: params : exp ( ',' exp )* ;
        public final function params():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var params_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var char_literal185:Token=null;
            var exp184:ParserRuleReturnScope = null;

            var exp186:ParserRuleReturnScope = null;


            var char_literal185_tree:CommonTree=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 30) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:285:2: ( exp ( ',' exp )* )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:285:4: exp ( ',' exp )*
                {
                root_0 = CommonTree(adaptor.nil());

                pushFollow(FOLLOW_exp_in_params1810);
                exp184=exp();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) adaptor.addChild(root_0, exp184.tree);
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:286:3: ( ',' exp )*
                loop30:
                do {
                    var alt30:int=2;
                    var LA30_0:int = input.LA(1);

                    if ( (LA30_0==88) ) {
                        alt30=1;
                    }


                    switch (alt30) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:287:4: ',' exp
                	    {
                	    char_literal185=Token(matchStream(input,88,FOLLOW_88_in_params1819)); if (this.state.failed) return retval;
                	    pushFollow(FOLLOW_exp_in_params1825);
                	    exp186=exp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, exp186.tree);

                	    }
                	    break;

                	default :
                	    break loop30;
                    }
                } while (true);


                }

                retval.stop = input.LT(-1);

                if ( this.state.backtracking==0 ) {

                retval.tree = CommonTree(adaptor.rulePostProcessing(root_0));
                adaptor.setTokenBoundaries(retval.tree, Token(retval.start), Token(retval.stop));
                }
            }
            catch (re:RecognitionException) {
                reportError(re);
                recoverStream(input,re);
                retval.tree = CommonTree(adaptor.errorNode(input, Token(retval.start), input.LT(-1), re));

            }
            finally {
                if ( this.state.backtracking>0 ) { memoize(input, 30, params_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end params

        // $ANTLR start array
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:292:1: array : ( '[' i= items ']' -> ^( CreateArray $i) | '[' ']' -> ^( CreateArray ) );
        public final function array():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var array_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var char_literal187:Token=null;
            var char_literal188:Token=null;
            var char_literal189:Token=null;
            var char_literal190:Token=null;
            var i:ParserRuleReturnScope = null;


            var char_literal187_tree:CommonTree=null;
            var char_literal188_tree:CommonTree=null;
            var char_literal189_tree:CommonTree=null;
            var char_literal190_tree:CommonTree=null;
            var stream_84:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 84");
            var stream_85:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 85");
            var stream_items:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule items");
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 31) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:293:2: ( '[' i= items ']' -> ^( CreateArray $i) | '[' ']' -> ^( CreateArray ) )
                var alt31:int=2;
                var LA31_0:int = input.LA(1);

                if ( (LA31_0==84) ) {
                    var LA31_1:int = input.LA(2);

                    if ( (LA31_1==85) ) {
                        alt31=2;
                    }
                    else if ( ((LA31_1>=17 && LA31_1<=19)||LA31_1==30||LA31_1==49||(LA31_1>=74 && LA31_1<=75)||(LA31_1>=79 && LA31_1<=84)||LA31_1==87) ) {
                        alt31=1;
                    }
                    else {
                        if (this.state.backtracking>0) {this.state.failed=true; return retval;}
                        throw new NoViableAltException("", 31, 1, input);

                    }
                }
                else {
                    if (this.state.backtracking>0) {this.state.failed=true; return retval;}
                    throw new NoViableAltException("", 31, 0, input);

                }
                switch (alt31) {
                    case 1 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:293:4: '[' i= items ']'
                        {
                        char_literal187=Token(matchStream(input,84,FOLLOW_84_in_array1842)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_84.add(char_literal187);

                        pushFollow(FOLLOW_items_in_array1846);
                        i=items();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_items.add(i.tree);
                        char_literal188=Token(matchStream(input,85,FOLLOW_85_in_array1848)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_85.add(char_literal188);



                        // AST REWRITE
                        // elements: i
                        // token labels: 
                        // rule labels: retval, i
                        // token list labels: 
                        // rule list labels: 
                        if ( this.state.backtracking==0 ) {
                        retval.tree = root_0;
                        var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);
                        var stream_i:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule i",i!=null?i.tree:null);

                        root_0 = CommonTree(adaptor.nil());
                        // 293:22: -> ^( CreateArray $i)
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:293:25: ^( CreateArray $i)
                            {
                            var root_1:CommonTree = CommonTree(adaptor.nil());
                            root_1 = CommonTree(adaptor.becomeRoot(CommonTree(adaptor.create(CreateArray, "CreateArray")), root_1));

                            adaptor.addChild(root_1, stream_i.nextTree());

                            adaptor.addChild(root_0, root_1);
                            }

                        }

                        retval.tree = root_0;}
                        }
                        break;
                    case 2 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:294:4: '[' ']'
                        {
                        char_literal189=Token(matchStream(input,84,FOLLOW_84_in_array1864)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_84.add(char_literal189);

                        char_literal190=Token(matchStream(input,85,FOLLOW_85_in_array1866)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_85.add(char_literal190);



                        // AST REWRITE
                        // elements: 
                        // token labels: 
                        // rule labels: retval
                        // token list labels: 
                        // rule list labels: 
                        if ( this.state.backtracking==0 ) {
                        retval.tree = root_0;
                        var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                        root_0 = CommonTree(adaptor.nil());
                        // 294:16: -> ^( CreateArray )
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:294:19: ^( CreateArray )
                            {
                            var root_1:CommonTree = CommonTree(adaptor.nil());
                            root_1 = CommonTree(adaptor.becomeRoot(CommonTree(adaptor.create(CreateArray, "CreateArray")), root_1));

                            adaptor.addChild(root_0, root_1);
                            }

                        }

                        retval.tree = root_0;}
                        }
                        break;

                }
                retval.stop = input.LT(-1);

                if ( this.state.backtracking==0 ) {

                retval.tree = CommonTree(adaptor.rulePostProcessing(root_0));
                adaptor.setTokenBoundaries(retval.tree, Token(retval.start), Token(retval.stop));
                }
            }
            catch (re:RecognitionException) {
                reportError(re);
                recoverStream(input,re);
                retval.tree = CommonTree(adaptor.errorNode(input, Token(retval.start), input.LT(-1), re));

            }
            finally {
                if ( this.state.backtracking>0 ) { memoize(input, 31, array_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end array

        // $ANTLR start items
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:297:1: items : exp ( ',' exp )* ;
        public final function items():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var items_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var char_literal192:Token=null;
            var exp191:ParserRuleReturnScope = null;

            var exp193:ParserRuleReturnScope = null;


            var char_literal192_tree:CommonTree=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 32) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:298:2: ( exp ( ',' exp )* )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:298:4: exp ( ',' exp )*
                {
                root_0 = CommonTree(adaptor.nil());

                pushFollow(FOLLOW_exp_in_items1888);
                exp191=exp();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) adaptor.addChild(root_0, exp191.tree);
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:299:3: ( ',' exp )*
                loop32:
                do {
                    var alt32:int=2;
                    var LA32_0:int = input.LA(1);

                    if ( (LA32_0==88) ) {
                        alt32=1;
                    }


                    switch (alt32) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:300:4: ',' exp
                	    {
                	    char_literal192=Token(matchStream(input,88,FOLLOW_88_in_items1897)); if (this.state.failed) return retval;
                	    pushFollow(FOLLOW_exp_in_items1903);
                	    exp193=exp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, exp193.tree);

                	    }
                	    break;

                	default :
                	    break loop32;
                    }
                } while (true);


                }

                retval.stop = input.LT(-1);

                if ( this.state.backtracking==0 ) {

                retval.tree = CommonTree(adaptor.rulePostProcessing(root_0));
                adaptor.setTokenBoundaries(retval.tree, Token(retval.start), Token(retval.stop));
                }
            }
            catch (re:RecognitionException) {
                reportError(re);
                recoverStream(input,re);
                retval.tree = CommonTree(adaptor.errorNode(input, Token(retval.start), input.LT(-1), re));

            }
            finally {
                if ( this.state.backtracking>0 ) { memoize(input, 32, items_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end items

        // $ANTLR start ret
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:305:1: ret : ( 'return' e= exp -> ^( Return $e) | 'return' -> ^( Return ) );
        public final function ret():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var ret_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var string_literal194:Token=null;
            var string_literal195:Token=null;
            var e:ParserRuleReturnScope = null;


            var string_literal194_tree:CommonTree=null;
            var string_literal195_tree:CommonTree=null;
            var stream_89:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 89");
            var stream_exp:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule exp");
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 33) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:306:2: ( 'return' e= exp -> ^( Return $e) | 'return' -> ^( Return ) )
                var alt33:int=2;
                var LA33_0:int = input.LA(1);

                if ( (LA33_0==89) ) {
                    var LA33_1:int = input.LA(2);

                    if ( (synpred79_Expression()) ) {
                        alt33=1;
                    }
                    else if ( (true) ) {
                        alt33=2;
                    }
                    else {
                        if (this.state.backtracking>0) {this.state.failed=true; return retval;}
                        throw new NoViableAltException("", 33, 1, input);

                    }
                }
                else {
                    if (this.state.backtracking>0) {this.state.failed=true; return retval;}
                    throw new NoViableAltException("", 33, 0, input);

                }
                switch (alt33) {
                    case 1 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:307:3: 'return' e= exp
                        {
                        string_literal194=Token(matchStream(input,89,FOLLOW_89_in_ret1921)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_89.add(string_literal194);

                        pushFollow(FOLLOW_exp_in_ret1925);
                        e=exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_exp.add(e.tree);


                        // AST REWRITE
                        // elements: e
                        // token labels: 
                        // rule labels: retval, e
                        // token list labels: 
                        // rule list labels: 
                        if ( this.state.backtracking==0 ) {
                        retval.tree = root_0;
                        var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);
                        var stream_e:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule e",e!=null?e.tree:null);

                        root_0 = CommonTree(adaptor.nil());
                        // 307:20: -> ^( Return $e)
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:307:23: ^( Return $e)
                            {
                            var root_1:CommonTree = CommonTree(adaptor.nil());
                            root_1 = CommonTree(adaptor.becomeRoot(CommonTree(adaptor.create(Return, "Return")), root_1));

                            adaptor.addChild(root_1, stream_e.nextTree());

                            adaptor.addChild(root_0, root_1);
                            }

                        }

                        retval.tree = root_0;}
                        }
                        break;
                    case 2 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:308:4: 'return'
                        {
                        string_literal195=Token(matchStream(input,89,FOLLOW_89_in_ret1941)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_89.add(string_literal195);



                        // AST REWRITE
                        // elements: 
                        // token labels: 
                        // rule labels: retval
                        // token list labels: 
                        // rule list labels: 
                        if ( this.state.backtracking==0 ) {
                        retval.tree = root_0;
                        var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                        root_0 = CommonTree(adaptor.nil());
                        // 308:15: -> ^( Return )
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:308:18: ^( Return )
                            {
                            var root_1:CommonTree = CommonTree(adaptor.nil());
                            root_1 = CommonTree(adaptor.becomeRoot(CommonTree(adaptor.create(Return, "Return")), root_1));

                            adaptor.addChild(root_0, root_1);
                            }

                        }

                        retval.tree = root_0;}
                        }
                        break;

                }
                retval.stop = input.LT(-1);

                if ( this.state.backtracking==0 ) {

                retval.tree = CommonTree(adaptor.rulePostProcessing(root_0));
                adaptor.setTokenBoundaries(retval.tree, Token(retval.start), Token(retval.stop));
                }
            }
            catch (re:RecognitionException) {
                reportError(re);
                recoverStream(input,re);
                retval.tree = CommonTree(adaptor.errorNode(input, Token(retval.start), input.LT(-1), re));

            }
            finally {
                if ( this.state.backtracking>0 ) { memoize(input, 33, ret_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end ret

        // $ANTLR start synpred5_Expression
        public final function synpred5_Expression_fragment():void {
            var l:ParserRuleReturnScope = null;

            var r:ParserRuleReturnScope = null;


            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:68:4: ( 'if' '(' exp ')' l= block 'else' r= block )
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:68:4: 'if' '(' exp ')' l= block 'else' r= block
            {
            matchStream(input,29,FOLLOW_29_in_synpred5_Expression219); if (this.state.failed) return ;
            matchStream(input,30,FOLLOW_30_in_synpred5_Expression221); if (this.state.failed) return ;
            pushFollow(FOLLOW_exp_in_synpred5_Expression223);
            exp();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;
            matchStream(input,31,FOLLOW_31_in_synpred5_Expression225); if (this.state.failed) return ;
            pushFollow(FOLLOW_block_in_synpred5_Expression229);
            l=block();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;
            matchStream(input,32,FOLLOW_32_in_synpred5_Expression231); if (this.state.failed) return ;
            pushFollow(FOLLOW_block_in_synpred5_Expression235);
            r=block();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;

            }
        }
        // $ANTLR end synpred5_Expression

        // $ANTLR start synpred6_Expression
        public final function synpred6_Expression_fragment():void {
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:69:4: ( 'if' '(' exp ')' block 'else' ifStmt )
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:69:4: 'if' '(' exp ')' block 'else' ifStmt
            {
            matchStream(input,29,FOLLOW_29_in_synpred6_Expression254); if (this.state.failed) return ;
            matchStream(input,30,FOLLOW_30_in_synpred6_Expression256); if (this.state.failed) return ;
            pushFollow(FOLLOW_exp_in_synpred6_Expression258);
            exp();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;
            matchStream(input,31,FOLLOW_31_in_synpred6_Expression260); if (this.state.failed) return ;
            pushFollow(FOLLOW_block_in_synpred6_Expression262);
            block();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;
            matchStream(input,32,FOLLOW_32_in_synpred6_Expression264); if (this.state.failed) return ;
            pushFollow(FOLLOW_ifStmt_in_synpred6_Expression266);
            ifStmt();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;

            }
        }
        // $ANTLR end synpred6_Expression

        // $ANTLR start synpred7_Expression
        public final function synpred7_Expression_fragment():void {
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:84:4: ( ';' instr )
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:84:4: ';' instr
            {
            matchStream(input,36,FOLLOW_36_in_synpred7_Expression378); if (this.state.failed) return ;
            pushFollow(FOLLOW_instr_in_synpred7_Expression380);
            instr();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;

            }
        }
        // $ANTLR end synpred7_Expression

        // $ANTLR start synpred8_Expression
        public final function synpred8_Expression_fragment():void {
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:85:5: ( ';' )
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:85:5: ';'
            {
            matchStream(input,36,FOLLOW_36_in_synpred8_Expression386); if (this.state.failed) return ;

            }
        }
        // $ANTLR end synpred8_Expression

        // $ANTLR start synpred10_Expression
        public final function synpred10_Expression_fragment():void {
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:95:4: ( assignExp )
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:95:4: assignExp
            {
            pushFollow(FOLLOW_assignExp_in_synpred10_Expression434);
            assignExp();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;

            }
        }
        // $ANTLR end synpred10_Expression

        // $ANTLR start synpred24_Expression
        public final function synpred24_Expression_fragment():void {
            var e1:ParserRuleReturnScope = null;

            var e2:ParserRuleReturnScope = null;


            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:125:4: ( '?' e1= exp ':' e2= exp )
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:125:4: '?' e1= exp ':' e2= exp
            {
            matchStream(input,50,FOLLOW_50_in_synpred24_Expression792); if (this.state.failed) return ;
            pushFollow(FOLLOW_exp_in_synpred24_Expression799);
            e1=exp();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;
            matchStream(input,51,FOLLOW_51_in_synpred24_Expression804); if (this.state.failed) return ;
            pushFollow(FOLLOW_exp_in_synpred24_Expression811);
            e2=exp();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;

            }
        }
        // $ANTLR end synpred24_Expression

        // $ANTLR start synpred47_Expression
        public final function synpred47_Expression_fragment():void {
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:205:4: ( '+' multExp )
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:205:4: '+' multExp
            {
            matchStream(input,74,FOLLOW_74_in_synpred47_Expression1206); if (this.state.failed) return ;
            pushFollow(FOLLOW_multExp_in_synpred47_Expression1209);
            multExp();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;

            }
        }
        // $ANTLR end synpred47_Expression

        // $ANTLR start synpred48_Expression
        public final function synpred48_Expression_fragment():void {
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:206:5: ( '-' multExp )
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:206:5: '-' multExp
            {
            matchStream(input,75,FOLLOW_75_in_synpred48_Expression1215); if (this.state.failed) return ;
            pushFollow(FOLLOW_multExp_in_synpred48_Expression1218);
            multExp();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;

            }
        }
        // $ANTLR end synpred48_Expression

        // $ANTLR start synpred66_Expression
        public final function synpred66_Expression_fragment():void {
            var p:ParserRuleReturnScope = null;

            var e:ParserRuleReturnScope = null;


            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:245:5: ( '(' (p= params )? ')' '[' e= exp ']' )
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:245:5: '(' (p= params )? ')' '[' e= exp ']'
            {
            matchStream(input,30,FOLLOW_30_in_synpred66_Expression1460); if (this.state.failed) return ;
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:245:10: (p= params )?
            var alt34:int=2;
            var LA34_0:int = input.LA(1);

            if ( ((LA34_0>=17 && LA34_0<=19)||LA34_0==30||LA34_0==49||(LA34_0>=74 && LA34_0<=75)||(LA34_0>=79 && LA34_0<=84)||LA34_0==87) ) {
                alt34=1;
            }
            switch (alt34) {
                case 1 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:0:0: p= params
                    {
                    pushFollow(FOLLOW_params_in_synpred66_Expression1464);
                    p=params();

                    state._fsp = state._fsp - 1;
                    if (this.state.failed) return ;

                    }
                    break;

            }

            matchStream(input,31,FOLLOW_31_in_synpred66_Expression1467); if (this.state.failed) return ;
            matchStream(input,84,FOLLOW_84_in_synpred66_Expression1472); if (this.state.failed) return ;
            pushFollow(FOLLOW_exp_in_synpred66_Expression1476);
            e=exp();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;
            matchStream(input,85,FOLLOW_85_in_synpred66_Expression1478); if (this.state.failed) return ;

            }
        }
        // $ANTLR end synpred66_Expression

        // $ANTLR start synpred68_Expression
        public final function synpred68_Expression_fragment():void {
            var i:Token=null;
            var p:ParserRuleReturnScope = null;


            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:248:5: ( '(' (p= params )? ')' '.' i= Identifier )
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:248:5: '(' (p= params )? ')' '.' i= Identifier
            {
            matchStream(input,30,FOLLOW_30_in_synpred68_Expression1509); if (this.state.failed) return ;
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:248:10: (p= params )?
            var alt35:int=2;
            var LA35_0:int = input.LA(1);

            if ( ((LA35_0>=17 && LA35_0<=19)||LA35_0==30||LA35_0==49||(LA35_0>=74 && LA35_0<=75)||(LA35_0>=79 && LA35_0<=84)||LA35_0==87) ) {
                alt35=1;
            }
            switch (alt35) {
                case 1 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:0:0: p= params
                    {
                    pushFollow(FOLLOW_params_in_synpred68_Expression1513);
                    p=params();

                    state._fsp = state._fsp - 1;
                    if (this.state.failed) return ;

                    }
                    break;

            }

            matchStream(input,31,FOLLOW_31_in_synpred68_Expression1516); if (this.state.failed) return ;
            matchStream(input,86,FOLLOW_86_in_synpred68_Expression1521); if (this.state.failed) return ;
            i=Token(matchStream(input,Identifier,FOLLOW_Identifier_in_synpred68_Expression1525)); if (this.state.failed) return ;

            }
        }
        // $ANTLR end synpred68_Expression

        // $ANTLR start synpred69_Expression
        public final function synpred69_Expression_fragment():void {
            var e:ParserRuleReturnScope = null;


            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:256:4: ( '[' e= exp ']' )
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:256:4: '[' e= exp ']'
            {
            matchStream(input,84,FOLLOW_84_in_synpred69_Expression1584); if (this.state.failed) return ;
            pushFollow(FOLLOW_exp_in_synpred69_Expression1588);
            e=exp();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;
            matchStream(input,85,FOLLOW_85_in_synpred69_Expression1590); if (this.state.failed) return ;

            }
        }
        // $ANTLR end synpred69_Expression

        // $ANTLR start synpred71_Expression
        public final function synpred71_Expression_fragment():void {
            var p:ParserRuleReturnScope = null;


            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:258:5: ( '(' p= params ')' )
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:258:5: '(' p= params ')'
            {
            matchStream(input,30,FOLLOW_30_in_synpred71_Expression1633); if (this.state.failed) return ;
            pushFollow(FOLLOW_params_in_synpred71_Expression1637);
            p=params();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;
            matchStream(input,31,FOLLOW_31_in_synpred71_Expression1639); if (this.state.failed) return ;

            }
        }
        // $ANTLR end synpred71_Expression

        // $ANTLR start synpred72_Expression
        public final function synpred72_Expression_fragment():void {
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:259:5: ( '(' ')' )
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:259:5: '(' ')'
            {
            matchStream(input,30,FOLLOW_30_in_synpred72_Expression1658); if (this.state.failed) return ;
            matchStream(input,31,FOLLOW_31_in_synpred72_Expression1660); if (this.state.failed) return ;

            }
        }
        // $ANTLR end synpred72_Expression

        // $ANTLR start synpred79_Expression
        public final function synpred79_Expression_fragment():void {
            var e:ParserRuleReturnScope = null;


            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:307:3: ( 'return' e= exp )
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:307:3: 'return' e= exp
            {
            matchStream(input,89,FOLLOW_89_in_synpred79_Expression1921); if (this.state.failed) return ;
            pushFollow(FOLLOW_exp_in_synpred79_Expression1925);
            e=exp();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;

            }
        }
        // $ANTLR end synpred79_Expression


           // Delegated rules

        public final function synpred47_Expression():Boolean {
            this.state.backtracking++;
            var start:int = input.mark();
            try {
                synpred47_Expression_fragment(); // can never throw exception
            } catch (re:RecognitionException) {
                trace("impossible: "+re);
            }
            var success:Boolean = !this.state.failed;
            input.rewindTo(start);
            this.state.backtracking--;
            this.state.failed=false;
            return success;
        }
        public final function synpred69_Expression():Boolean {
            this.state.backtracking++;
            var start:int = input.mark();
            try {
                synpred69_Expression_fragment(); // can never throw exception
            } catch (re:RecognitionException) {
                trace("impossible: "+re);
            }
            var success:Boolean = !this.state.failed;
            input.rewindTo(start);
            this.state.backtracking--;
            this.state.failed=false;
            return success;
        }
        public final function synpred10_Expression():Boolean {
            this.state.backtracking++;
            var start:int = input.mark();
            try {
                synpred10_Expression_fragment(); // can never throw exception
            } catch (re:RecognitionException) {
                trace("impossible: "+re);
            }
            var success:Boolean = !this.state.failed;
            input.rewindTo(start);
            this.state.backtracking--;
            this.state.failed=false;
            return success;
        }
        public final function synpred72_Expression():Boolean {
            this.state.backtracking++;
            var start:int = input.mark();
            try {
                synpred72_Expression_fragment(); // can never throw exception
            } catch (re:RecognitionException) {
                trace("impossible: "+re);
            }
            var success:Boolean = !this.state.failed;
            input.rewindTo(start);
            this.state.backtracking--;
            this.state.failed=false;
            return success;
        }
        public final function synpred71_Expression():Boolean {
            this.state.backtracking++;
            var start:int = input.mark();
            try {
                synpred71_Expression_fragment(); // can never throw exception
            } catch (re:RecognitionException) {
                trace("impossible: "+re);
            }
            var success:Boolean = !this.state.failed;
            input.rewindTo(start);
            this.state.backtracking--;
            this.state.failed=false;
            return success;
        }
        public final function synpred79_Expression():Boolean {
            this.state.backtracking++;
            var start:int = input.mark();
            try {
                synpred79_Expression_fragment(); // can never throw exception
            } catch (re:RecognitionException) {
                trace("impossible: "+re);
            }
            var success:Boolean = !this.state.failed;
            input.rewindTo(start);
            this.state.backtracking--;
            this.state.failed=false;
            return success;
        }
        public final function synpred48_Expression():Boolean {
            this.state.backtracking++;
            var start:int = input.mark();
            try {
                synpred48_Expression_fragment(); // can never throw exception
            } catch (re:RecognitionException) {
                trace("impossible: "+re);
            }
            var success:Boolean = !this.state.failed;
            input.rewindTo(start);
            this.state.backtracking--;
            this.state.failed=false;
            return success;
        }
        public final function synpred68_Expression():Boolean {
            this.state.backtracking++;
            var start:int = input.mark();
            try {
                synpred68_Expression_fragment(); // can never throw exception
            } catch (re:RecognitionException) {
                trace("impossible: "+re);
            }
            var success:Boolean = !this.state.failed;
            input.rewindTo(start);
            this.state.backtracking--;
            this.state.failed=false;
            return success;
        }
        public final function synpred24_Expression():Boolean {
            this.state.backtracking++;
            var start:int = input.mark();
            try {
                synpred24_Expression_fragment(); // can never throw exception
            } catch (re:RecognitionException) {
                trace("impossible: "+re);
            }
            var success:Boolean = !this.state.failed;
            input.rewindTo(start);
            this.state.backtracking--;
            this.state.failed=false;
            return success;
        }
        public final function synpred7_Expression():Boolean {
            this.state.backtracking++;
            var start:int = input.mark();
            try {
                synpred7_Expression_fragment(); // can never throw exception
            } catch (re:RecognitionException) {
                trace("impossible: "+re);
            }
            var success:Boolean = !this.state.failed;
            input.rewindTo(start);
            this.state.backtracking--;
            this.state.failed=false;
            return success;
        }
        public final function synpred8_Expression():Boolean {
            this.state.backtracking++;
            var start:int = input.mark();
            try {
                synpred8_Expression_fragment(); // can never throw exception
            } catch (re:RecognitionException) {
                trace("impossible: "+re);
            }
            var success:Boolean = !this.state.failed;
            input.rewindTo(start);
            this.state.backtracking--;
            this.state.failed=false;
            return success;
        }
        public final function synpred6_Expression():Boolean {
            this.state.backtracking++;
            var start:int = input.mark();
            try {
                synpred6_Expression_fragment(); // can never throw exception
            } catch (re:RecognitionException) {
                trace("impossible: "+re);
            }
            var success:Boolean = !this.state.failed;
            input.rewindTo(start);
            this.state.backtracking--;
            this.state.failed=false;
            return success;
        }
        public final function synpred5_Expression():Boolean {
            this.state.backtracking++;
            var start:int = input.mark();
            try {
                synpred5_Expression_fragment(); // can never throw exception
            } catch (re:RecognitionException) {
                trace("impossible: "+re);
            }
            var success:Boolean = !this.state.failed;
            input.rewindTo(start);
            this.state.backtracking--;
            this.state.failed=false;
            return success;
        }
        public final function synpred66_Expression():Boolean {
            this.state.backtracking++;
            var start:int = input.mark();
            try {
                synpred66_Expression_fragment(); // can never throw exception
            } catch (re:RecognitionException) {
                trace("impossible: "+re);
            }
            var success:Boolean = !this.state.failed;
            input.rewindTo(start);
            this.state.backtracking--;
            this.state.failed=false;
            return success;
        }



        private const DFA5_eot:Array =
            DFA.unpackEncodedString("\x17\u80ff\xff");
        private const DFA5_eof:Array =
            DFA.unpackEncodedString("\x01\x01\x16\u80ff\xff");
        private const DFA5_min:Array =
            DFA.unpackEncodedString("\x01\x11\x13\u80ff\xff\x01\x00\x02"+
            "\u80ff\xff", true);
        private const DFA5_max:Array =
            DFA.unpackEncodedString("\x01\x59\x13\u80ff\xff\x01\x00\x02"+
            "\u80ff\xff", true);
        private const DFA5_accept:Array =
            DFA.unpackEncodedString("\x01\u80ff\xff\x01\x03\x13\u80ff\xff"+
            "\x01\x01\x01\x02");
        private const DFA5_special:Array =
            DFA.unpackEncodedString("\x14\u80ff\xff\x01\x00\x02\u80ff\xff");
        private const DFA5_transition:Array = [
                DFA.unpackEncodedString("\x03\x01\x09\u80ff\xff\x02\x01"+
                "\x02\u80ff\xff\x01\x01\x01\u80ff\xff\x01\x01\x01\x14\x0c"+
                "\u80ff\xff\x01\x01\x18\u80ff\xff\x02\x01\x03\u80ff\xff\x06"+
                "\x01\x02\u80ff\xff\x01\x01\x01\u80ff\xff\x01\x01"),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString("\x01\u80ff\xff"),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString("")
        ];
            private function DFA5_specialStateTransition(dfa:DFA, s:int, _input:IntStream):int {
                var input:TokenStream = TokenStream(_input);
            	var _s:int = s;
                switch ( s ) {
                        case 0 : 
                            var LA5_20:int = input.LA(1);

                             
                            var index5_20:int = input.index;
                            input.rewind();
                            s = -1;
                            if ( (synpred7_Expression()) ) {s = 21;}

                            else if ( (synpred8_Expression()) ) {s = 22;}

                             
                            input.seek(index5_20);
                            if ( s>=0 ) return s;
                            break;
                }
                if (this.state.backtracking>0) {this.state.failed=true; return -1;}
                throw dfa.error(new NoViableAltException(dfa.description, 5, _s, input));
            }

        protected var dfa5:DFA;  // initialized in constructor

        private const DFA7_eot:Array =
            DFA.unpackEncodedString("\x10\u80ff\xff");
        private const DFA7_eof:Array =
            DFA.unpackEncodedString("\x10\u80ff\xff");
        private const DFA7_min:Array =
            DFA.unpackEncodedString("\x01\x11\x02\x00\x0d\u80ff\xff", true);
        private const DFA7_max:Array =
            DFA.unpackEncodedString("\x01\x57\x02\x00\x0d\u80ff\xff", true);
        private const DFA7_accept:Array =
            DFA.unpackEncodedString("\x03\u80ff\xff\x01\x02\x01\x03\x0a"+
            "\u80ff\xff\x01\x01");
        private const DFA7_special:Array =
            DFA.unpackEncodedString("\x01\u80ff\xff\x01\x00\x01\x01\x0d"+
            "\u80ff\xff");
        private const DFA7_transition:Array = [
                DFA.unpackEncodedString("\x01\x01\x02\x04\x0a\u80ff\xff"+
                "\x01\x04\x12\u80ff\xff\x01\x03\x18\u80ff\xff\x02\x04\x03"+
                "\u80ff\xff\x05\x04\x01\x02\x02\u80ff\xff\x01\x04"),
                DFA.unpackEncodedString("\x01\u80ff\xff"),
                DFA.unpackEncodedString("\x01\u80ff\xff"),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString("")
        ];
            private function DFA7_specialStateTransition(dfa:DFA, s:int, _input:IntStream):int {
                var input:TokenStream = TokenStream(_input);
            	var _s:int = s;
                switch ( s ) {
                        case 0 : 
                            var LA7_1:int = input.LA(1);

                             
                            var index7_1:int = input.index;
                            input.rewind();
                            s = -1;
                            if ( (synpred10_Expression()) ) {s = 15;}

                            else if ( (true) ) {s = 4;}

                             
                            input.seek(index7_1);
                            if ( s>=0 ) return s;
                            break;
                        case 1 : 
                            var LA7_2:int = input.LA(1);

                             
                            var index7_2:int = input.index;
                            input.rewind();
                            s = -1;
                            if ( (synpred10_Expression()) ) {s = 15;}

                            else if ( (true) ) {s = 4;}

                             
                            input.seek(index7_2);
                            if ( s>=0 ) return s;
                            break;
                }
                if (this.state.backtracking>0) {this.state.failed=true; return -1;}
                throw dfa.error(new NoViableAltException(dfa.description, 7, _s, input));
            }

        protected var dfa7:DFA;  // initialized in constructor

        private const DFA19_eot:Array =
            DFA.unpackEncodedString("\x32\u80ff\xff");
        private const DFA19_eof:Array =
            DFA.unpackEncodedString("\x01\x01\x31\u80ff\xff");
        private const DFA19_min:Array =
            DFA.unpackEncodedString("\x01\x11\x1e\u80ff\xff\x02\x00\x11"+
            "\u80ff\xff", true);
        private const DFA19_max:Array =
            DFA.unpackEncodedString("\x01\x59\x1e\u80ff\xff\x02\x00\x11"+
            "\u80ff\xff", true);
        private const DFA19_accept:Array =
            DFA.unpackEncodedString("\x01\u80ff\xff\x01\x03\x2e\u80ff\xff"+
            "\x01\x01\x01\x02");
        private const DFA19_special:Array =
            DFA.unpackEncodedString("\x1f\u80ff\xff\x01\x00\x01\x01\x11"+
            "\u80ff\xff");
        private const DFA19_transition:Array = [
                DFA.unpackEncodedString("\x03\x01\x09\u80ff\xff\x03\x01"+
                "\x01\u80ff\xff\x01\x01\x01\u80ff\xff\x02\x01\x0c\u80ff\xff"+
                "\x19\x01\x01\x1f\x01\x20\x03\u80ff\xff\x07\x01\x01\u80ff\xff"+
                "\x03\x01"),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString("\x01\u80ff\xff"),
                DFA.unpackEncodedString("\x01\u80ff\xff"),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString("")
        ];
            private function DFA19_specialStateTransition(dfa:DFA, s:int, _input:IntStream):int {
                var input:TokenStream = TokenStream(_input);
            	var _s:int = s;
                switch ( s ) {
                        case 0 : 
                            var LA19_31:int = input.LA(1);

                             
                            var index19_31:int = input.index;
                            input.rewind();
                            s = -1;
                            if ( (synpred47_Expression()) ) {s = 48;}

                            else if ( (true) ) {s = 1;}

                             
                            input.seek(index19_31);
                            if ( s>=0 ) return s;
                            break;
                        case 1 : 
                            var LA19_32:int = input.LA(1);

                             
                            var index19_32:int = input.index;
                            input.rewind();
                            s = -1;
                            if ( (synpred48_Expression()) ) {s = 49;}

                            else if ( (true) ) {s = 1;}

                             
                            input.seek(index19_32);
                            if ( s>=0 ) return s;
                            break;
                }
                if (this.state.backtracking>0) {this.state.failed=true; return -1;}
                throw dfa.error(new NoViableAltException(dfa.description, 19, _s, input));
            }

        protected var dfa19:DFA;  // initialized in constructor

        private const DFA25_eot:Array =
            DFA.unpackEncodedString("\x12\u80ff\xff");
        private const DFA25_eof:Array =
            DFA.unpackEncodedString("\x12\u80ff\xff");
        private const DFA25_min:Array =
            DFA.unpackEncodedString("\x01\x1e\x0e\u80ff\xff\x01\x00\x02"+
            "\u80ff\xff", true);
        private const DFA25_max:Array =
            DFA.unpackEncodedString("\x01\x56\x0e\u80ff\xff\x01\x00\x02"+
            "\u80ff\xff", true);
        private const DFA25_accept:Array =
            DFA.unpackEncodedString("\x01\u80ff\xff\x01\x05\x0b\u80ff\xff"+
            "\x01\x01\x01\x02\x01\u80ff\xff\x01\x03\x01\x04");
        private const DFA25_special:Array =
            DFA.unpackEncodedString("\x0f\u80ff\xff\x01\x00\x02\u80ff\xff");
        private const DFA25_transition:Array = [
                DFA.unpackEncodedString("\x01\x0f\x06\u80ff\xff\x0c\x01"+
                "\x23\u80ff\xff\x01\x0d\x01\u80ff\xff\x01\x0e"),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString("\x01\u80ff\xff"),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString("")
        ];
            private function DFA25_specialStateTransition(dfa:DFA, s:int, _input:IntStream):int {
                var input:TokenStream = TokenStream(_input);
            	var _s:int = s;
                switch ( s ) {
                        case 0 : 
                            var LA25_15:int = input.LA(1);

                             
                            var index25_15:int = input.index;
                            input.rewind();
                            s = -1;
                            if ( (synpred66_Expression()) ) {s = 16;}

                            else if ( (synpred68_Expression()) ) {s = 17;}

                             
                            input.seek(index25_15);
                            if ( s>=0 ) return s;
                            break;
                }
                if (this.state.backtracking>0) {this.state.failed=true; return -1;}
                throw dfa.error(new NoViableAltException(dfa.description, 25, _s, input));
            }

        protected var dfa25:DFA;  // initialized in constructor

        private const DFA26_eot:Array =
            DFA.unpackEncodedString("\x37\u80ff\xff");
        private const DFA26_eof:Array =
            DFA.unpackEncodedString("\x01\x01\x36\u80ff\xff");
        private const DFA26_min:Array =
            DFA.unpackEncodedString("\x01\x11\x21\u80ff\xff\x01\x00\x09"+
            "\u80ff\xff\x01\x00\x0a\u80ff\xff", true);
        private const DFA26_max:Array =
            DFA.unpackEncodedString("\x01\x59\x21\u80ff\xff\x01\x00\x09"+
            "\u80ff\xff\x01\x00\x0a\u80ff\xff", true);
        private const DFA26_accept:Array =
            DFA.unpackEncodedString("\x01\u80ff\xff\x01\x05\x31\u80ff\xff"+
            "\x01\x02\x01\x01\x01\x03\x01\x04");
        private const DFA26_special:Array =
            DFA.unpackEncodedString("\x22\u80ff\xff\x01\x00\x09\u80ff\xff"+
            "\x01\x01\x0a\u80ff\xff");
        private const DFA26_transition:Array = [
                DFA.unpackEncodedString("\x03\x01\x09\u80ff\xff\x01\x01"+
                "\x01\x2c\x01\x01\x01\u80ff\xff\x01\x01\x01\u80ff\xff\x02"+
                "\x01\x0c\u80ff\xff\x23\x01\x01\x22\x01\x01\x01\x33\x03\x01"),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString("\x01\u80ff\xff"),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString("\x01\u80ff\xff"),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString("")
        ];
            private function DFA26_specialStateTransition(dfa:DFA, s:int, _input:IntStream):int {
                var input:TokenStream = TokenStream(_input);
            	var _s:int = s;
                switch ( s ) {
                        case 0 : 
                            var LA26_34:int = input.LA(1);

                             
                            var index26_34:int = input.index;
                            input.rewind();
                            s = -1;
                            if ( (synpred69_Expression()) ) {s = 52;}

                            else if ( (true) ) {s = 1;}

                             
                            input.seek(index26_34);
                            if ( s>=0 ) return s;
                            break;
                        case 1 : 
                            var LA26_44:int = input.LA(1);

                             
                            var index26_44:int = input.index;
                            input.rewind();
                            s = -1;
                            if ( (synpred71_Expression()) ) {s = 53;}

                            else if ( (synpred72_Expression()) ) {s = 54;}

                            else if ( (true) ) {s = 1;}

                             
                            input.seek(index26_44);
                            if ( s>=0 ) return s;
                            break;
                }
                if (this.state.backtracking>0) {this.state.failed=true; return -1;}
                throw dfa.error(new NoViableAltException(dfa.description, 26, _s, input));
            }

        protected var dfa26:DFA;  // initialized in constructor
     

        public static const FOLLOW_stmtList_in_main132:BitSet = new BitSet([0x00000000, 0x00000000]);
        public static const FOLLOW_EOF_in_main135:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_EOF_in_main141:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_stmt_in_stmtList153:BitSet = new BitSet([0x600E0002, 0x00020002, 0x029F8C00, 0x00000000]);
        public static const FOLLOW_stmt_in_stmtList162:BitSet = new BitSet([0x600E0002, 0x00020002, 0x029F8C00, 0x00000000]);
        public static const FOLLOW_ifStmt_in_stmt194:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_whileStmt_in_stmt200:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_instrList_in_stmt206:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_29_in_ifStmt219:BitSet = new BitSet([0x40000000, 0x00000000]);
        public static const FOLLOW_30_in_ifStmt221:BitSet = new BitSet([0x400E0000, 0x00020000, 0x009F8C00, 0x00000000]);
        public static const FOLLOW_exp_in_ifStmt223:BitSet = new BitSet([0x80000000, 0x00000000]);
        public static const FOLLOW_31_in_ifStmt225:BitSet = new BitSet([0x00000000, 0x00000004]);
        public static const FOLLOW_block_in_ifStmt229:BitSet = new BitSet([0x00000000, 0x00000001]);
        public static const FOLLOW_32_in_ifStmt231:BitSet = new BitSet([0x00000000, 0x00000004]);
        public static const FOLLOW_block_in_ifStmt235:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_29_in_ifStmt254:BitSet = new BitSet([0x40000000, 0x00000000]);
        public static const FOLLOW_30_in_ifStmt256:BitSet = new BitSet([0x400E0000, 0x00020000, 0x009F8C00, 0x00000000]);
        public static const FOLLOW_exp_in_ifStmt258:BitSet = new BitSet([0x80000000, 0x00000000]);
        public static const FOLLOW_31_in_ifStmt260:BitSet = new BitSet([0x00000000, 0x00000004]);
        public static const FOLLOW_block_in_ifStmt262:BitSet = new BitSet([0x00000000, 0x00000001]);
        public static const FOLLOW_32_in_ifStmt264:BitSet = new BitSet([0x20000000, 0x00000000]);
        public static const FOLLOW_ifStmt_in_ifStmt266:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_29_in_ifStmt283:BitSet = new BitSet([0x40000000, 0x00000000]);
        public static const FOLLOW_30_in_ifStmt285:BitSet = new BitSet([0x400E0000, 0x00020000, 0x009F8C00, 0x00000000]);
        public static const FOLLOW_exp_in_ifStmt287:BitSet = new BitSet([0x80000000, 0x00000000]);
        public static const FOLLOW_31_in_ifStmt289:BitSet = new BitSet([0x00000000, 0x00000004]);
        public static const FOLLOW_block_in_ifStmt291:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_33_in_whileStmt315:BitSet = new BitSet([0x40000000, 0x00000000]);
        public static const FOLLOW_30_in_whileStmt317:BitSet = new BitSet([0x400E0000, 0x00020000, 0x009F8C00, 0x00000000]);
        public static const FOLLOW_exp_in_whileStmt319:BitSet = new BitSet([0x80000000, 0x00000000]);
        public static const FOLLOW_31_in_whileStmt321:BitSet = new BitSet([0x00000000, 0x00000004]);
        public static const FOLLOW_block_in_whileStmt323:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_34_in_block346:BitSet = new BitSet([0x600E0000, 0x00020002, 0x029F8C00, 0x00000000]);
        public static const FOLLOW_stmtList_in_block348:BitSet = new BitSet([0x00000000, 0x00000008]);
        public static const FOLLOW_35_in_block350:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_instr_in_instrList369:BitSet = new BitSet([0x00000002, 0x00000010]);
        public static const FOLLOW_36_in_instrList378:BitSet = new BitSet([0x600E0000, 0x00020002, 0x029F8C00, 0x00000000]);
        public static const FOLLOW_instr_in_instrList380:BitSet = new BitSet([0x00000002, 0x00000010]);
        public static const FOLLOW_36_in_instrList386:BitSet = new BitSet([0x00000002, 0x00000010]);
        public static const FOLLOW_exp_in_instr416:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_ret_in_instr421:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_assignExp_in_exp434:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_local_in_exp440:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_condExp_in_exp446:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_reference_in_assignExp459:BitSet = new BitSet([0x00000000, 0x0001FFE0]);
        public static const FOLLOW_37_in_assignExp468:BitSet = new BitSet([0x400E0000, 0x00020000, 0x009F8C00, 0x00000000]);
        public static const FOLLOW_exp_in_assignExp470:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_38_in_assignExp489:BitSet = new BitSet([0x400E0000, 0x00020000, 0x009F8C00, 0x00000000]);
        public static const FOLLOW_exp_in_assignExp491:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_39_in_assignExp509:BitSet = new BitSet([0x400E0000, 0x00020000, 0x009F8C00, 0x00000000]);
        public static const FOLLOW_exp_in_assignExp511:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_40_in_assignExp529:BitSet = new BitSet([0x400E0000, 0x00020000, 0x009F8C00, 0x00000000]);
        public static const FOLLOW_exp_in_assignExp531:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_41_in_assignExp549:BitSet = new BitSet([0x400E0000, 0x00020000, 0x009F8C00, 0x00000000]);
        public static const FOLLOW_exp_in_assignExp551:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_42_in_assignExp569:BitSet = new BitSet([0x400E0000, 0x00020000, 0x009F8C00, 0x00000000]);
        public static const FOLLOW_exp_in_assignExp571:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_43_in_assignExp589:BitSet = new BitSet([0x400E0000, 0x00020000, 0x009F8C00, 0x00000000]);
        public static const FOLLOW_exp_in_assignExp591:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_44_in_assignExp609:BitSet = new BitSet([0x400E0000, 0x00020000, 0x009F8C00, 0x00000000]);
        public static const FOLLOW_exp_in_assignExp611:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_45_in_assignExp629:BitSet = new BitSet([0x400E0000, 0x00020000, 0x009F8C00, 0x00000000]);
        public static const FOLLOW_exp_in_assignExp631:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_46_in_assignExp649:BitSet = new BitSet([0x400E0000, 0x00020000, 0x009F8C00, 0x00000000]);
        public static const FOLLOW_exp_in_assignExp651:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_47_in_assignExp669:BitSet = new BitSet([0x400E0000, 0x00020000, 0x009F8C00, 0x00000000]);
        public static const FOLLOW_exp_in_assignExp671:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_48_in_assignExp689:BitSet = new BitSet([0x400E0000, 0x00020000, 0x009F8C00, 0x00000000]);
        public static const FOLLOW_exp_in_assignExp691:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_49_in_local719:BitSet = new BitSet([0x00020000, 0x00000000]);
        public static const FOLLOW_Identifier_in_local723:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_49_in_local739:BitSet = new BitSet([0x00020000, 0x00000000]);
        public static const FOLLOW_Identifier_in_local743:BitSet = new BitSet([0x00000000, 0x00000020]);
        public static const FOLLOW_37_in_local745:BitSet = new BitSet([0x400E0000, 0x00020000, 0x009F8C00, 0x00000000]);
        public static const FOLLOW_exp_in_local747:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_logicalOr_in_condExp774:BitSet = new BitSet([0x00000002, 0x00040000]);
        public static const FOLLOW_50_in_condExp792:BitSet = new BitSet([0x400E0000, 0x00020000, 0x009F8C00, 0x00000000]);
        public static const FOLLOW_exp_in_condExp799:BitSet = new BitSet([0x00000000, 0x00080000]);
        public static const FOLLOW_51_in_condExp804:BitSet = new BitSet([0x400E0000, 0x00020000, 0x009F8C00, 0x00000000]);
        public static const FOLLOW_exp_in_condExp811:BitSet = new BitSet([0x00000002, 0x00040000]);
        public static const FOLLOW_logicalAnd_in_logicalOr845:BitSet = new BitSet([0x00000002, 0x00300000]);
        public static const FOLLOW_52_in_logicalOr854:BitSet = new BitSet([0x400E0000, 0x00020000, 0x009F8C00, 0x00000000]);
        public static const FOLLOW_logicalAnd_in_logicalOr857:BitSet = new BitSet([0x00000002, 0x00300000]);
        public static const FOLLOW_53_in_logicalOr863:BitSet = new BitSet([0x400E0000, 0x00020000, 0x009F8C00, 0x00000000]);
        public static const FOLLOW_logicalAnd_in_logicalOr866:BitSet = new BitSet([0x00000002, 0x00300000]);
        public static const FOLLOW_bitwiseOr_in_logicalAnd883:BitSet = new BitSet([0x00000002, 0x00C00000]);
        public static const FOLLOW_54_in_logicalAnd892:BitSet = new BitSet([0x400E0000, 0x00020000, 0x009F8C00, 0x00000000]);
        public static const FOLLOW_bitwiseOr_in_logicalAnd895:BitSet = new BitSet([0x00000002, 0x00C00000]);
        public static const FOLLOW_55_in_logicalAnd901:BitSet = new BitSet([0x400E0000, 0x00020000, 0x009F8C00, 0x00000000]);
        public static const FOLLOW_bitwiseOr_in_logicalAnd904:BitSet = new BitSet([0x00000002, 0x00C00000]);
        public static const FOLLOW_bitwiseXor_in_bitwiseOr920:BitSet = new BitSet([0x00000002, 0x01000000]);
        public static const FOLLOW_56_in_bitwiseOr929:BitSet = new BitSet([0x400E0000, 0x00020000, 0x009F8C00, 0x00000000]);
        public static const FOLLOW_bitwiseXor_in_bitwiseOr932:BitSet = new BitSet([0x00000002, 0x01000000]);
        public static const FOLLOW_bitwiseAnd_in_bitwiseXor948:BitSet = new BitSet([0x00000002, 0x02000000]);
        public static const FOLLOW_57_in_bitwiseXor957:BitSet = new BitSet([0x400E0000, 0x00020000, 0x009F8C00, 0x00000000]);
        public static const FOLLOW_bitwiseAnd_in_bitwiseXor960:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_equalExp_in_bitwiseAnd976:BitSet = new BitSet([0x00000002, 0x04000000]);
        public static const FOLLOW_58_in_bitwiseAnd985:BitSet = new BitSet([0x400E0000, 0x00020000, 0x009F8C00, 0x00000000]);
        public static const FOLLOW_equalExp_in_bitwiseAnd988:BitSet = new BitSet([0x00000002, 0x04000000]);
        public static const FOLLOW_relExp_in_equalExp1004:BitSet = new BitSet([0x00000002, 0x78000000]);
        public static const FOLLOW_59_in_equalExp1013:BitSet = new BitSet([0x400E0000, 0x00020000, 0x009F8C00, 0x00000000]);
        public static const FOLLOW_relExp_in_equalExp1016:BitSet = new BitSet([0x00000002, 0x78000000]);
        public static const FOLLOW_60_in_equalExp1022:BitSet = new BitSet([0x400E0000, 0x00020000, 0x009F8C00, 0x00000000]);
        public static const FOLLOW_relExp_in_equalExp1025:BitSet = new BitSet([0x00000002, 0x78000000]);
        public static const FOLLOW_61_in_equalExp1031:BitSet = new BitSet([0x400E0000, 0x00020000, 0x009F8C00, 0x00000000]);
        public static const FOLLOW_relExp_in_equalExp1034:BitSet = new BitSet([0x00000002, 0x78000000]);
        public static const FOLLOW_62_in_equalExp1040:BitSet = new BitSet([0x400E0000, 0x00020000, 0x009F8C00, 0x00000000]);
        public static const FOLLOW_relExp_in_equalExp1043:BitSet = new BitSet([0x00000002, 0x78000000]);
        public static const FOLLOW_shiftExp_in_relExp1060:BitSet = new BitSet([0x00000002, 0x80000000, 0x0000007F, 0x00000000]);
        public static const FOLLOW_63_in_relExp1069:BitSet = new BitSet([0x400E0000, 0x00020000, 0x009F8C00, 0x00000000]);
        public static const FOLLOW_shiftExp_in_relExp1072:BitSet = new BitSet([0x00000002, 0x80000000, 0x0000007F, 0x00000000]);
        public static const FOLLOW_64_in_relExp1078:BitSet = new BitSet([0x400E0000, 0x00020000, 0x009F8C00, 0x00000000]);
        public static const FOLLOW_shiftExp_in_relExp1081:BitSet = new BitSet([0x00000002, 0x80000000, 0x0000007F, 0x00000000]);
        public static const FOLLOW_65_in_relExp1087:BitSet = new BitSet([0x400E0000, 0x00020000, 0x009F8C00, 0x00000000]);
        public static const FOLLOW_shiftExp_in_relExp1090:BitSet = new BitSet([0x00000002, 0x80000000, 0x0000007F, 0x00000000]);
        public static const FOLLOW_66_in_relExp1096:BitSet = new BitSet([0x400E0000, 0x00020000, 0x009F8C00, 0x00000000]);
        public static const FOLLOW_shiftExp_in_relExp1099:BitSet = new BitSet([0x00000002, 0x80000000, 0x0000007F, 0x00000000]);
        public static const FOLLOW_67_in_relExp1105:BitSet = new BitSet([0x400E0000, 0x00020000, 0x009F8C00, 0x00000000]);
        public static const FOLLOW_shiftExp_in_relExp1108:BitSet = new BitSet([0x00000002, 0x80000000, 0x0000007F, 0x00000000]);
        public static const FOLLOW_68_in_relExp1114:BitSet = new BitSet([0x400E0000, 0x00020000, 0x009F8C00, 0x00000000]);
        public static const FOLLOW_shiftExp_in_relExp1117:BitSet = new BitSet([0x00000002, 0x80000000, 0x0000007F, 0x00000000]);
        public static const FOLLOW_69_in_relExp1123:BitSet = new BitSet([0x400E0000, 0x00020000, 0x009F8C00, 0x00000000]);
        public static const FOLLOW_shiftExp_in_relExp1126:BitSet = new BitSet([0x00000002, 0x80000000, 0x0000007F, 0x00000000]);
        public static const FOLLOW_70_in_relExp1132:BitSet = new BitSet([0x400E0000, 0x00020000, 0x009F8C00, 0x00000000]);
        public static const FOLLOW_shiftExp_in_relExp1135:BitSet = new BitSet([0x00000002, 0x80000000, 0x0000007F, 0x00000000]);
        public static const FOLLOW_addExp_in_shiftExp1151:BitSet = new BitSet([0x00000002, 0x00000000, 0x00000380, 0x00000000]);
        public static const FOLLOW_71_in_shiftExp1160:BitSet = new BitSet([0x400E0000, 0x00020000, 0x009F8C00, 0x00000000]);
        public static const FOLLOW_addExp_in_shiftExp1163:BitSet = new BitSet([0x00000002, 0x00000000, 0x00000380, 0x00000000]);
        public static const FOLLOW_72_in_shiftExp1169:BitSet = new BitSet([0x400E0000, 0x00020000, 0x009F8C00, 0x00000000]);
        public static const FOLLOW_addExp_in_shiftExp1172:BitSet = new BitSet([0x00000002, 0x00000000, 0x00000380, 0x00000000]);
        public static const FOLLOW_73_in_shiftExp1178:BitSet = new BitSet([0x400E0000, 0x00020000, 0x009F8C00, 0x00000000]);
        public static const FOLLOW_addExp_in_shiftExp1181:BitSet = new BitSet([0x00000002, 0x00000000, 0x00000380, 0x00000000]);
        public static const FOLLOW_multExp_in_addExp1197:BitSet = new BitSet([0x00000002, 0x00000000, 0x00000C00, 0x00000000]);
        public static const FOLLOW_74_in_addExp1206:BitSet = new BitSet([0x400E0000, 0x00020000, 0x009F8C00, 0x00000000]);
        public static const FOLLOW_multExp_in_addExp1209:BitSet = new BitSet([0x00000002, 0x00000000, 0x00000C00, 0x00000000]);
        public static const FOLLOW_75_in_addExp1215:BitSet = new BitSet([0x400E0000, 0x00020000, 0x009F8C00, 0x00000000]);
        public static const FOLLOW_multExp_in_addExp1218:BitSet = new BitSet([0x00000002, 0x00000000, 0x00000C00, 0x00000000]);
        public static const FOLLOW_unaryExp_in_multExp1236:BitSet = new BitSet([0x00000002, 0x00000000, 0x00007000, 0x00000000]);
        public static const FOLLOW_76_in_multExp1245:BitSet = new BitSet([0x400E0000, 0x00020000, 0x009F8C00, 0x00000000]);
        public static const FOLLOW_unaryExp_in_multExp1248:BitSet = new BitSet([0x00000002, 0x00000000, 0x00007000, 0x00000000]);
        public static const FOLLOW_77_in_multExp1254:BitSet = new BitSet([0x400E0000, 0x00020000, 0x009F8C00, 0x00000000]);
        public static const FOLLOW_unaryExp_in_multExp1257:BitSet = new BitSet([0x00000002, 0x00000000, 0x00007000, 0x00000000]);
        public static const FOLLOW_78_in_multExp1263:BitSet = new BitSet([0x400E0000, 0x00020000, 0x009F8C00, 0x00000000]);
        public static const FOLLOW_unaryExp_in_multExp1266:BitSet = new BitSet([0x00000002, 0x00000000, 0x00007000, 0x00000000]);
        public static const FOLLOW_74_in_unaryExp1285:BitSet = new BitSet([0x400E0000, 0x00020000, 0x009F8C00, 0x00000000]);
        public static const FOLLOW_atom_in_unaryExp1288:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_75_in_unaryExp1293:BitSet = new BitSet([0x400E0000, 0x00020000, 0x009F8C00, 0x00000000]);
        public static const FOLLOW_atom_in_unaryExp1296:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_79_in_unaryExp1301:BitSet = new BitSet([0x400E0000, 0x00020000, 0x009F8C00, 0x00000000]);
        public static const FOLLOW_atom_in_unaryExp1304:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_80_in_unaryExp1309:BitSet = new BitSet([0x400E0000, 0x00020000, 0x009F8C00, 0x00000000]);
        public static const FOLLOW_atom_in_unaryExp1312:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_atom_in_unaryExp1318:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_NumberLiteral_in_atom1330:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_StringLiteral_in_atom1335:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_81_in_atom1340:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_82_in_atom1345:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_83_in_atom1350:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_referenceOrFuncCall_in_atom1355:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_funcDef_in_atom1360:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_30_in_atom1365:BitSet = new BitSet([0x400E0000, 0x00020000, 0x009F8C00, 0x00000000]);
        public static const FOLLOW_exp_in_atom1368:BitSet = new BitSet([0x80000000, 0x00000000]);
        public static const FOLLOW_31_in_atom1370:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_object_in_reference1385:BitSet = new BitSet([0x40000002, 0x00000000, 0x00500000, 0x00000000]);
        public static const FOLLOW_84_in_reference1404:BitSet = new BitSet([0x400E0000, 0x00020000, 0x009F8C00, 0x00000000]);
        public static const FOLLOW_exp_in_reference1408:BitSet = new BitSet([0x00000000, 0x00000000, 0x00200000, 0x00000000]);
        public static const FOLLOW_85_in_reference1410:BitSet = new BitSet([0x40000002, 0x00000000, 0x00500000, 0x00000000]);
        public static const FOLLOW_86_in_reference1434:BitSet = new BitSet([0x00020000, 0x00000000]);
        public static const FOLLOW_Identifier_in_reference1438:BitSet = new BitSet([0x40000002, 0x00000000, 0x00500000, 0x00000000]);
        public static const FOLLOW_30_in_reference1460:BitSet = new BitSet([0xC00E0000, 0x00020000, 0x009F8C00, 0x00000000]);
        public static const FOLLOW_params_in_reference1464:BitSet = new BitSet([0x80000000, 0x00000000]);
        public static const FOLLOW_31_in_reference1467:BitSet = new BitSet([0x00000000, 0x00000000, 0x00100000, 0x00000000]);
        public static const FOLLOW_84_in_reference1472:BitSet = new BitSet([0x400E0000, 0x00020000, 0x009F8C00, 0x00000000]);
        public static const FOLLOW_exp_in_reference1476:BitSet = new BitSet([0x00000000, 0x00000000, 0x00200000, 0x00000000]);
        public static const FOLLOW_85_in_reference1478:BitSet = new BitSet([0x40000002, 0x00000000, 0x00500000, 0x00000000]);
        public static const FOLLOW_30_in_reference1509:BitSet = new BitSet([0xC00E0000, 0x00020000, 0x009F8C00, 0x00000000]);
        public static const FOLLOW_params_in_reference1513:BitSet = new BitSet([0x80000000, 0x00000000]);
        public static const FOLLOW_31_in_reference1516:BitSet = new BitSet([0x00000000, 0x00000000, 0x00400000, 0x00000000]);
        public static const FOLLOW_86_in_reference1521:BitSet = new BitSet([0x00020000, 0x00000000]);
        public static const FOLLOW_Identifier_in_reference1525:BitSet = new BitSet([0x40000002, 0x00000000, 0x00500000, 0x00000000]);
        public static const FOLLOW_object_in_referenceOrFuncCall1565:BitSet = new BitSet([0x40000002, 0x00000000, 0x00500000, 0x00000000]);
        public static const FOLLOW_84_in_referenceOrFuncCall1584:BitSet = new BitSet([0x400E0000, 0x00020000, 0x009F8C00, 0x00000000]);
        public static const FOLLOW_exp_in_referenceOrFuncCall1588:BitSet = new BitSet([0x00000000, 0x00000000, 0x00200000, 0x00000000]);
        public static const FOLLOW_85_in_referenceOrFuncCall1590:BitSet = new BitSet([0x40000002, 0x00000000, 0x00500000, 0x00000000]);
        public static const FOLLOW_86_in_referenceOrFuncCall1610:BitSet = new BitSet([0x00020000, 0x00000000]);
        public static const FOLLOW_Identifier_in_referenceOrFuncCall1614:BitSet = new BitSet([0x40000002, 0x00000000, 0x00500000, 0x00000000]);
        public static const FOLLOW_30_in_referenceOrFuncCall1633:BitSet = new BitSet([0x400E0000, 0x00020000, 0x009F8C00, 0x00000000]);
        public static const FOLLOW_params_in_referenceOrFuncCall1637:BitSet = new BitSet([0x80000000, 0x00000000]);
        public static const FOLLOW_31_in_referenceOrFuncCall1639:BitSet = new BitSet([0x40000002, 0x00000000, 0x00500000, 0x00000000]);
        public static const FOLLOW_30_in_referenceOrFuncCall1658:BitSet = new BitSet([0x80000000, 0x00000000]);
        public static const FOLLOW_31_in_referenceOrFuncCall1660:BitSet = new BitSet([0x40000002, 0x00000000, 0x00500000, 0x00000000]);
        public static const FOLLOW_87_in_funcDef1689:BitSet = new BitSet([0x40000000, 0x00000000]);
        public static const FOLLOW_30_in_funcDef1698:BitSet = new BitSet([0x00020000, 0x00000000]);
        public static const FOLLOW_args_in_funcDef1702:BitSet = new BitSet([0x80000000, 0x00000000]);
        public static const FOLLOW_31_in_funcDef1704:BitSet = new BitSet([0x00000000, 0x00000004]);
        public static const FOLLOW_block_in_funcDef1708:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_30_in_funcDef1728:BitSet = new BitSet([0x80000000, 0x00000000]);
        public static const FOLLOW_31_in_funcDef1730:BitSet = new BitSet([0x00000000, 0x00000004]);
        public static const FOLLOW_block_in_funcDef1734:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_Identifier_in_args1761:BitSet = new BitSet([0x00000002, 0x00000000, 0x01000000, 0x00000000]);
        public static const FOLLOW_88_in_args1770:BitSet = new BitSet([0x00020000, 0x00000000]);
        public static const FOLLOW_Identifier_in_args1776:BitSet = new BitSet([0x00000002, 0x00000000, 0x01000000, 0x00000000]);
        public static const FOLLOW_Identifier_in_object1793:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_array_in_object1798:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_exp_in_params1810:BitSet = new BitSet([0x00000002, 0x00000000, 0x01000000, 0x00000000]);
        public static const FOLLOW_88_in_params1819:BitSet = new BitSet([0x400E0000, 0x00020000, 0x009F8C00, 0x00000000]);
        public static const FOLLOW_exp_in_params1825:BitSet = new BitSet([0x00000002, 0x00000000, 0x01000000, 0x00000000]);
        public static const FOLLOW_84_in_array1842:BitSet = new BitSet([0x400E0000, 0x00020000, 0x009F8C00, 0x00000000]);
        public static const FOLLOW_items_in_array1846:BitSet = new BitSet([0x00000000, 0x00000000, 0x00200000, 0x00000000]);
        public static const FOLLOW_85_in_array1848:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_84_in_array1864:BitSet = new BitSet([0x00000000, 0x00000000, 0x00200000, 0x00000000]);
        public static const FOLLOW_85_in_array1866:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_exp_in_items1888:BitSet = new BitSet([0x00000002, 0x00000000, 0x01000000, 0x00000000]);
        public static const FOLLOW_88_in_items1897:BitSet = new BitSet([0x400E0000, 0x00020000, 0x009F8C00, 0x00000000]);
        public static const FOLLOW_exp_in_items1903:BitSet = new BitSet([0x00000002, 0x00000000, 0x01000000, 0x00000000]);
        public static const FOLLOW_89_in_ret1921:BitSet = new BitSet([0x400E0000, 0x00020000, 0x009F8C00, 0x00000000]);
        public static const FOLLOW_exp_in_ret1925:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_89_in_ret1941:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_29_in_synpred5_Expression219:BitSet = new BitSet([0x40000000, 0x00000000]);
        public static const FOLLOW_30_in_synpred5_Expression221:BitSet = new BitSet([0x400E0000, 0x00020000, 0x009F8C00, 0x00000000]);
        public static const FOLLOW_exp_in_synpred5_Expression223:BitSet = new BitSet([0x80000000, 0x00000000]);
        public static const FOLLOW_31_in_synpred5_Expression225:BitSet = new BitSet([0x00000000, 0x00000004]);
        public static const FOLLOW_block_in_synpred5_Expression229:BitSet = new BitSet([0x00000000, 0x00000001]);
        public static const FOLLOW_32_in_synpred5_Expression231:BitSet = new BitSet([0x00000000, 0x00000004]);
        public static const FOLLOW_block_in_synpred5_Expression235:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_29_in_synpred6_Expression254:BitSet = new BitSet([0x40000000, 0x00000000]);
        public static const FOLLOW_30_in_synpred6_Expression256:BitSet = new BitSet([0x400E0000, 0x00020000, 0x009F8C00, 0x00000000]);
        public static const FOLLOW_exp_in_synpred6_Expression258:BitSet = new BitSet([0x80000000, 0x00000000]);
        public static const FOLLOW_31_in_synpred6_Expression260:BitSet = new BitSet([0x00000000, 0x00000004]);
        public static const FOLLOW_block_in_synpred6_Expression262:BitSet = new BitSet([0x00000000, 0x00000001]);
        public static const FOLLOW_32_in_synpred6_Expression264:BitSet = new BitSet([0x20000000, 0x00000000]);
        public static const FOLLOW_ifStmt_in_synpred6_Expression266:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_36_in_synpred7_Expression378:BitSet = new BitSet([0x600E0000, 0x00020002, 0x029F8C00, 0x00000000]);
        public static const FOLLOW_instr_in_synpred7_Expression380:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_36_in_synpred8_Expression386:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_assignExp_in_synpred10_Expression434:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_50_in_synpred24_Expression792:BitSet = new BitSet([0x400E0000, 0x00020000, 0x009F8C00, 0x00000000]);
        public static const FOLLOW_exp_in_synpred24_Expression799:BitSet = new BitSet([0x00000000, 0x00080000]);
        public static const FOLLOW_51_in_synpred24_Expression804:BitSet = new BitSet([0x400E0000, 0x00020000, 0x009F8C00, 0x00000000]);
        public static const FOLLOW_exp_in_synpred24_Expression811:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_74_in_synpred47_Expression1206:BitSet = new BitSet([0x400E0000, 0x00020000, 0x009F8C00, 0x00000000]);
        public static const FOLLOW_multExp_in_synpred47_Expression1209:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_75_in_synpred48_Expression1215:BitSet = new BitSet([0x400E0000, 0x00020000, 0x009F8C00, 0x00000000]);
        public static const FOLLOW_multExp_in_synpred48_Expression1218:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_30_in_synpred66_Expression1460:BitSet = new BitSet([0xC00E0000, 0x00020000, 0x009F8C00, 0x00000000]);
        public static const FOLLOW_params_in_synpred66_Expression1464:BitSet = new BitSet([0x80000000, 0x00000000]);
        public static const FOLLOW_31_in_synpred66_Expression1467:BitSet = new BitSet([0x00000000, 0x00000000, 0x00100000, 0x00000000]);
        public static const FOLLOW_84_in_synpred66_Expression1472:BitSet = new BitSet([0x400E0000, 0x00020000, 0x009F8C00, 0x00000000]);
        public static const FOLLOW_exp_in_synpred66_Expression1476:BitSet = new BitSet([0x00000000, 0x00000000, 0x00200000, 0x00000000]);
        public static const FOLLOW_85_in_synpred66_Expression1478:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_30_in_synpred68_Expression1509:BitSet = new BitSet([0xC00E0000, 0x00020000, 0x009F8C00, 0x00000000]);
        public static const FOLLOW_params_in_synpred68_Expression1513:BitSet = new BitSet([0x80000000, 0x00000000]);
        public static const FOLLOW_31_in_synpred68_Expression1516:BitSet = new BitSet([0x00000000, 0x00000000, 0x00400000, 0x00000000]);
        public static const FOLLOW_86_in_synpred68_Expression1521:BitSet = new BitSet([0x00020000, 0x00000000]);
        public static const FOLLOW_Identifier_in_synpred68_Expression1525:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_84_in_synpred69_Expression1584:BitSet = new BitSet([0x400E0000, 0x00020000, 0x009F8C00, 0x00000000]);
        public static const FOLLOW_exp_in_synpred69_Expression1588:BitSet = new BitSet([0x00000000, 0x00000000, 0x00200000, 0x00000000]);
        public static const FOLLOW_85_in_synpred69_Expression1590:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_30_in_synpred71_Expression1633:BitSet = new BitSet([0x400E0000, 0x00020000, 0x009F8C00, 0x00000000]);
        public static const FOLLOW_params_in_synpred71_Expression1637:BitSet = new BitSet([0x80000000, 0x00000000]);
        public static const FOLLOW_31_in_synpred71_Expression1639:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_30_in_synpred72_Expression1658:BitSet = new BitSet([0x80000000, 0x00000000]);
        public static const FOLLOW_31_in_synpred72_Expression1660:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_89_in_synpred79_Expression1921:BitSet = new BitSet([0x400E0000, 0x00020000, 0x009F8C00, 0x00000000]);
        public static const FOLLOW_exp_in_synpred79_Expression1925:BitSet = new BitSet([0x00000002, 0x00000000]);

    }
}