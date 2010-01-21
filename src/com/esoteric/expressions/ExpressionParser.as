// $ANTLR 3.2 Sep 23, 2009 12:02:23 C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g 2010-01-21 19:04:27
package com.esoteric.expressions {
    import org.antlr.runtime.*;
        

    import org.antlr.runtime.tree.*;


    public class ExpressionParser extends Parser {
        public static const tokenNames:Array = [
            "<invalid>", "<EOR>", "<DOWN>", "<UP>", "StmtList", "InstrList", "FuncCall", "PropRef", "PropExp", "CondExp", "CreateArray", "IfStmt", "WhileStmt", "ForStmt", "FuncDef", "Return", "NumberLiteral", "StringLiteral", "Identifier", "LineComment", "MultilineComment", "Digit", "Exponent", "HexDigit", "EscapeSequence", "WhiteSpace", "Letter", "UnicodeEscapeChar", "'if'", "'('", "')'", "'else'", "'while'", "'{'", "'}'", "';'", "'='", "'*='", "'/='", "'%='", "'+='", "'-='", "'<<='", "'>>='", "'>>>='", "'&='", "'^='", "'|='", "'?'", "':'", "'||'", "'or'", "'&&'", "'and'", "'|'", "'^'", "'&'", "'=='", "'!='", "'==='", "'!=='", "'<'", "'lt'", "'>'", "'gt'", "'<='", "'lte'", "'>='", "'gte'", "'<<'", "'>>'", "'>>>'", "'+'", "'-'", "'*'", "'/'", "'%'", "'~'", "'!'", "'true'", "'false'", "'null'", "'['", "']'", "'.'", "'function'", "','", "'return'"
        ];
        public static const T__68:int=68;
        public static const T__69:int=69;
        public static const T__66:int=66;
        public static const T__67:int=67;
        public static const StmtList:int=4;
        public static const T__29:int=29;
        public static const T__64:int=64;
        public static const T__28:int=28;
        public static const T__65:int=65;
        public static const T__62:int=62;
        public static const T__63:int=63;
        public static const Exponent:int=22;
        public static const LineComment:int=19;
        public static const T__61:int=61;
        public static const EOF:int=-1;
        public static const T__60:int=60;
        public static const HexDigit:int=23;
        public static const PropExp:int=8;
        public static const Identifier:int=18;
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
        public static const WhiteSpace:int=25;
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
        public static const UnicodeEscapeChar:int=27;
        public static const NumberLiteral:int=16;
        public static const T__48:int=48;
        public static const T__49:int=49;
        public static const InstrList:int=5;
        public static const Digit:int=21;
        public static const T__85:int=85;
        public static const T__84:int=84;
        public static const T__87:int=87;
        public static const T__86:int=86;
        public static const StringLiteral:int=17;
        public static const T__30:int=30;
        public static const T__31:int=31;
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
        public static const MultilineComment:int=20;
        public static const T__75:int=75;
        public static const T__74:int=74;
        public static const Letter:int=26;
        public static const EscapeSequence:int=24;
        public static const T__73:int=73;
        public static const T__79:int=79;
        public static const T__78:int=78;
        public static const T__77:int=77;

        // delegates
        // delegators


            public function ExpressionParser(input:TokenStream, state:RecognizerSharedState = null) {
                super(input, state);

                dfa5 = new DFA(this, 5,
                            "()* loopback of 82:3: ( ';' instr | ';' )*",
                            DFA5_eot, DFA5_eof, DFA5_min,
                            DFA5_max, DFA5_accept, DFA5_special,
                            DFA5_transition, DFA5_specialStateTransition);

                dfa7 = new DFA(this, 7,
                            "93:1: exp : ( assignExp | condExp );",
                            DFA7_eot, DFA7_eof, DFA7_min,
                            DFA7_max, DFA7_accept, DFA7_special,
                            DFA7_transition, DFA7_specialStateTransition);

                dfa18 = new DFA(this, 18,
                            "()* loopback of 198:3: ( '+' multExp | '-' multExp )*",
                            DFA18_eot, DFA18_eof, DFA18_min,
                            DFA18_max, DFA18_accept, DFA18_special,
                            DFA18_transition, DFA18_specialStateTransition);

                dfa24 = new DFA(this, 24,
                            "()* loopback of 234:3: ( '[' e= exp ']' -> ^( PropExp $reference $e) | '.' i= Identifier -> ^( PropRef $reference $i) | '(' (p= params )? ')' '[' e= exp ']' -> ^( PropExp ^( FuncCall $reference $p) $e) | '(' (p= params )? ')' '.' i= Identifier -> ^( PropRef ^( FuncCall $reference $p) $i) )*",
                            DFA24_eot, DFA24_eof, DFA24_min,
                            DFA24_max, DFA24_accept, DFA24_special,
                            DFA24_transition, DFA24_specialStateTransition);

                dfa25 = new DFA(this, 25,
                            "()* loopback of 249:3: ( '[' e= exp ']' -> ^( PropExp $referenceOrFuncCall $e) | '.' i= Identifier -> ^( PropRef $referenceOrFuncCall $i) | '(' p= params ')' -> ^( FuncCall $referenceOrFuncCall $p) | '(' ')' -> ^( FuncCall $referenceOrFuncCall) )*",
                            DFA25_eot, DFA25_eof, DFA25_min,
                            DFA25_max, DFA25_accept, DFA25_special,
                            DFA25_transition, DFA25_specialStateTransition);

                this.state.ruleMemo = new Array(109+1);
                 
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
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:48:1: main : ( stmtList EOF | EOF );
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
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:49:2: ( stmtList EOF | EOF )
                var alt1:int=2;
                var LA1_0:int = input.LA(1);

                if ( ((LA1_0>=16 && LA1_0<=18)||(LA1_0>=28 && LA1_0<=29)||LA1_0==32||(LA1_0>=72 && LA1_0<=73)||(LA1_0>=77 && LA1_0<=82)||LA1_0==85||LA1_0==87) ) {
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
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:49:4: stmtList EOF
                        {
                        root_0 = CommonTree(adaptor.nil());

                        pushFollow(FOLLOW_stmtList_in_main128);
                        stmtList1=stmtList();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) root_0 = CommonTree(adaptor.becomeRoot(stmtList1.tree, root_0));
                        EOF2=Token(matchStream(input,EOF,FOLLOW_EOF_in_main131)); if (this.state.failed) return retval;

                        }
                        break;
                    case 2 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:50:4: EOF
                        {
                        root_0 = CommonTree(adaptor.nil());

                        EOF3=Token(matchStream(input,EOF,FOLLOW_EOF_in_main137)); if (this.state.failed) return retval;
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
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:53:1: stmtList : stmt ( stmt )* -> ^( StmtList ( stmt )+ ) ;
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
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:54:2: ( stmt ( stmt )* -> ^( StmtList ( stmt )+ ) )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:54:4: stmt ( stmt )*
                {
                pushFollow(FOLLOW_stmt_in_stmtList149);
                stmt4=stmt();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) stream_stmt.add(stmt4.tree);
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:55:3: ( stmt )*
                loop2:
                do {
                    var alt2:int=2;
                    var LA2_0:int = input.LA(1);

                    if ( ((LA2_0>=16 && LA2_0<=18)||(LA2_0>=28 && LA2_0<=29)||LA2_0==32||(LA2_0>=72 && LA2_0<=73)||(LA2_0>=77 && LA2_0<=82)||LA2_0==85||LA2_0==87) ) {
                        alt2=1;
                    }


                    switch (alt2) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:56:4: stmt
                	    {
                	    pushFollow(FOLLOW_stmt_in_stmtList158);
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
                // 57:10: -> ^( StmtList ( stmt )+ )
                {
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:57:13: ^( StmtList ( stmt )+ )
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
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:60:1: stmt : ( ifStmt | whileStmt | instrList );
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
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:61:2: ( ifStmt | whileStmt | instrList )
                var alt3:int=3;
                switch ( input.LA(1) ) {
                case 28:
                    {
                    alt3=1;
                    }
                    break;
                case 32:
                    {
                    alt3=2;
                    }
                    break;
                case NumberLiteral:
                case StringLiteral:
                case Identifier:
                case 29:
                case 72:
                case 73:
                case 77:
                case 78:
                case 79:
                case 80:
                case 81:
                case 82:
                case 85:
                case 87:
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
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:61:4: ifStmt
                        {
                        root_0 = CommonTree(adaptor.nil());

                        pushFollow(FOLLOW_ifStmt_in_stmt190);
                        ifStmt6=ifStmt();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) root_0 = CommonTree(adaptor.becomeRoot(ifStmt6.tree, root_0));

                        }
                        break;
                    case 2 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:62:4: whileStmt
                        {
                        root_0 = CommonTree(adaptor.nil());

                        pushFollow(FOLLOW_whileStmt_in_stmt196);
                        whileStmt7=whileStmt();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) root_0 = CommonTree(adaptor.becomeRoot(whileStmt7.tree, root_0));

                        }
                        break;
                    case 3 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:63:4: instrList
                        {
                        root_0 = CommonTree(adaptor.nil());

                        pushFollow(FOLLOW_instrList_in_stmt202);
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
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:66:1: ifStmt : ( 'if' '(' exp ')' l= block 'else' r= block -> ^( IfStmt exp $l $r) | 'if' '(' exp ')' block 'else' ifStmt -> ^( IfStmt exp block ifStmt ) | 'if' '(' exp ')' block -> ^( IfStmt exp block ) );
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
            var stream_31:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 31");
            var stream_28:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 28");
            var stream_29:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 29");
            var stream_exp:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule exp");
            var stream_block:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule block");
            var stream_ifStmt:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule ifStmt");
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 4) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:67:2: ( 'if' '(' exp ')' l= block 'else' r= block -> ^( IfStmt exp $l $r) | 'if' '(' exp ')' block 'else' ifStmt -> ^( IfStmt exp block ifStmt ) | 'if' '(' exp ')' block -> ^( IfStmt exp block ) )
                var alt4:int=3;
                var LA4_0:int = input.LA(1);

                if ( (LA4_0==28) ) {
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
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:67:4: 'if' '(' exp ')' l= block 'else' r= block
                        {
                        string_literal9=Token(matchStream(input,28,FOLLOW_28_in_ifStmt215)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_28.add(string_literal9);

                        char_literal10=Token(matchStream(input,29,FOLLOW_29_in_ifStmt217)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_29.add(char_literal10);

                        pushFollow(FOLLOW_exp_in_ifStmt219);
                        exp11=exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_exp.add(exp11.tree);
                        char_literal12=Token(matchStream(input,30,FOLLOW_30_in_ifStmt221)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_30.add(char_literal12);

                        pushFollow(FOLLOW_block_in_ifStmt225);
                        l=block();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_block.add(l.tree);
                        string_literal13=Token(matchStream(input,31,FOLLOW_31_in_ifStmt227)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_31.add(string_literal13);

                        pushFollow(FOLLOW_block_in_ifStmt231);
                        r=block();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_block.add(r.tree);


                        // AST REWRITE
                        // elements: l, r, exp
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
                        // 67:44: -> ^( IfStmt exp $l $r)
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:67:47: ^( IfStmt exp $l $r)
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
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:68:4: 'if' '(' exp ')' block 'else' ifStmt
                        {
                        string_literal14=Token(matchStream(input,28,FOLLOW_28_in_ifStmt250)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_28.add(string_literal14);

                        char_literal15=Token(matchStream(input,29,FOLLOW_29_in_ifStmt252)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_29.add(char_literal15);

                        pushFollow(FOLLOW_exp_in_ifStmt254);
                        exp16=exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_exp.add(exp16.tree);
                        char_literal17=Token(matchStream(input,30,FOLLOW_30_in_ifStmt256)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_30.add(char_literal17);

                        pushFollow(FOLLOW_block_in_ifStmt258);
                        block18=block();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_block.add(block18.tree);
                        string_literal19=Token(matchStream(input,31,FOLLOW_31_in_ifStmt260)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_31.add(string_literal19);

                        pushFollow(FOLLOW_ifStmt_in_ifStmt262);
                        ifStmt20=ifStmt();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_ifStmt.add(ifStmt20.tree);


                        // AST REWRITE
                        // elements: ifStmt, block, exp
                        // token labels: 
                        // rule labels: retval
                        // token list labels: 
                        // rule list labels: 
                        if ( this.state.backtracking==0 ) {
                        retval.tree = root_0;
                        var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                        root_0 = CommonTree(adaptor.nil());
                        // 68:41: -> ^( IfStmt exp block ifStmt )
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:68:44: ^( IfStmt exp block ifStmt )
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
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:69:4: 'if' '(' exp ')' block
                        {
                        string_literal21=Token(matchStream(input,28,FOLLOW_28_in_ifStmt279)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_28.add(string_literal21);

                        char_literal22=Token(matchStream(input,29,FOLLOW_29_in_ifStmt281)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_29.add(char_literal22);

                        pushFollow(FOLLOW_exp_in_ifStmt283);
                        exp23=exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_exp.add(exp23.tree);
                        char_literal24=Token(matchStream(input,30,FOLLOW_30_in_ifStmt285)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_30.add(char_literal24);

                        pushFollow(FOLLOW_block_in_ifStmt287);
                        block25=block();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_block.add(block25.tree);


                        // AST REWRITE
                        // elements: exp, block
                        // token labels: 
                        // rule labels: retval
                        // token list labels: 
                        // rule list labels: 
                        if ( this.state.backtracking==0 ) {
                        retval.tree = root_0;
                        var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                        root_0 = CommonTree(adaptor.nil());
                        // 69:29: -> ^( IfStmt exp block )
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:69:32: ^( IfStmt exp block )
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
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:72:1: whileStmt : 'while' '(' exp ')' block -> ^( WhileStmt exp block ) ;
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
            var stream_32:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 32");
            var stream_29:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 29");
            var stream_exp:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule exp");
            var stream_block:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule block");
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 5) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:73:2: ( 'while' '(' exp ')' block -> ^( WhileStmt exp block ) )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:73:4: 'while' '(' exp ')' block
                {
                string_literal26=Token(matchStream(input,32,FOLLOW_32_in_whileStmt311)); if (this.state.failed) return retval; 
                if ( this.state.backtracking==0 ) stream_32.add(string_literal26);

                char_literal27=Token(matchStream(input,29,FOLLOW_29_in_whileStmt313)); if (this.state.failed) return retval; 
                if ( this.state.backtracking==0 ) stream_29.add(char_literal27);

                pushFollow(FOLLOW_exp_in_whileStmt315);
                exp28=exp();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) stream_exp.add(exp28.tree);
                char_literal29=Token(matchStream(input,30,FOLLOW_30_in_whileStmt317)); if (this.state.failed) return retval; 
                if ( this.state.backtracking==0 ) stream_30.add(char_literal29);

                pushFollow(FOLLOW_block_in_whileStmt319);
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
                // 73:31: -> ^( WhileStmt exp block )
                {
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:73:34: ^( WhileStmt exp block )
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
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:76:1: block : '{' stmtList '}' -> ^( stmtList ) ;
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
            var stream_33:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 33");
            var stream_34:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 34");
            var stream_stmtList:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule stmtList");
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 6) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:77:2: ( '{' stmtList '}' -> ^( stmtList ) )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:77:4: '{' stmtList '}'
                {
                char_literal31=Token(matchStream(input,33,FOLLOW_33_in_block342)); if (this.state.failed) return retval; 
                if ( this.state.backtracking==0 ) stream_33.add(char_literal31);

                pushFollow(FOLLOW_stmtList_in_block344);
                stmtList32=stmtList();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) stream_stmtList.add(stmtList32.tree);
                char_literal33=Token(matchStream(input,34,FOLLOW_34_in_block346)); if (this.state.failed) return retval; 
                if ( this.state.backtracking==0 ) stream_34.add(char_literal33);



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
                // 77:23: -> ^( stmtList )
                {
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:77:26: ^( stmtList )
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
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:80:1: instrList : instr ( ';' instr | ';' )* -> ^( InstrList ( instr )+ ) ;
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
            var stream_35:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 35");
            var stream_instr:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule instr");
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 7) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:81:2: ( instr ( ';' instr | ';' )* -> ^( InstrList ( instr )+ ) )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:81:4: instr ( ';' instr | ';' )*
                {
                pushFollow(FOLLOW_instr_in_instrList365);
                instr34=instr();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) stream_instr.add(instr34.tree);
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:82:3: ( ';' instr | ';' )*
                loop5:
                do {
                    var alt5:int=3;
                    alt5 = dfa5.predict(input);
                    switch (alt5) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:83:4: ';' instr
                	    {
                	    char_literal35=Token(matchStream(input,35,FOLLOW_35_in_instrList374)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_35.add(char_literal35);

                	    pushFollow(FOLLOW_instr_in_instrList376);
                	    instr36=instr();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) stream_instr.add(instr36.tree);

                	    }
                	    break;
                	case 2 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:84:5: ';'
                	    {
                	    char_literal37=Token(matchStream(input,35,FOLLOW_35_in_instrList382)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_35.add(char_literal37);


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
                // 85:10: -> ^( InstrList ( instr )+ )
                {
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:85:13: ^( InstrList ( instr )+ )
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
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:88:1: instr : ( exp | ret );
        public final function instr():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var instr_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var exp38:ParserRuleReturnScope = null;

            var ret39:ParserRuleReturnScope = null;



            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 8) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:89:2: ( exp | ret )
                var alt6:int=2;
                var LA6_0:int = input.LA(1);

                if ( ((LA6_0>=16 && LA6_0<=18)||LA6_0==29||(LA6_0>=72 && LA6_0<=73)||(LA6_0>=77 && LA6_0<=82)||LA6_0==85) ) {
                    alt6=1;
                }
                else if ( (LA6_0==87) ) {
                    alt6=2;
                }
                else {
                    if (this.state.backtracking>0) {this.state.failed=true; return retval;}
                    throw new NoViableAltException("", 6, 0, input);

                }
                switch (alt6) {
                    case 1 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:89:4: exp
                        {
                        root_0 = CommonTree(adaptor.nil());

                        pushFollow(FOLLOW_exp_in_instr412);
                        exp38=exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) adaptor.addChild(root_0, exp38.tree);

                        }
                        break;
                    case 2 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:90:4: ret
                        {
                        root_0 = CommonTree(adaptor.nil());

                        pushFollow(FOLLOW_ret_in_instr417);
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
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:93:1: exp : ( assignExp | condExp );
        public final function exp():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var exp_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var assignExp40:ParserRuleReturnScope = null;

            var condExp41:ParserRuleReturnScope = null;



            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 9) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:94:2: ( assignExp | condExp )
                var alt7:int=2;
                alt7 = dfa7.predict(input);
                switch (alt7) {
                    case 1 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:94:4: assignExp
                        {
                        root_0 = CommonTree(adaptor.nil());

                        pushFollow(FOLLOW_assignExp_in_exp430);
                        assignExp40=assignExp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) root_0 = CommonTree(adaptor.becomeRoot(assignExp40.tree, root_0));

                        }
                        break;
                    case 2 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:95:4: condExp
                        {
                        root_0 = CommonTree(adaptor.nil());

                        pushFollow(FOLLOW_condExp_in_exp436);
                        condExp41=condExp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) root_0 = CommonTree(adaptor.becomeRoot(condExp41.tree, root_0));

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
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:98:1: assignExp : reference ( '=' exp -> ^( '=' exp reference ) | '*=' exp -> ^( '*=' exp reference ) | '/=' exp -> ^( '/=' exp reference ) | '%=' exp -> ^( '%=' exp reference ) | '+=' exp -> ^( '+=' exp reference ) | '-=' exp -> ^( '-=' exp reference ) | '<<=' exp -> ^( '<<=' exp reference ) | '>>=' exp -> ^( '>>=' exp reference ) | '>>>=' exp -> ^( '>>>=' exp reference ) | '&=' exp -> ^( '&=' exp reference ) | '^=' exp -> ^( '^=' exp reference ) | '|=' exp -> ^( '|=' exp reference ) ) ;
        public final function assignExp():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var assignExp_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var char_literal43:Token=null;
            var string_literal45:Token=null;
            var string_literal47:Token=null;
            var string_literal49:Token=null;
            var string_literal51:Token=null;
            var string_literal53:Token=null;
            var string_literal55:Token=null;
            var string_literal57:Token=null;
            var string_literal59:Token=null;
            var string_literal61:Token=null;
            var string_literal63:Token=null;
            var string_literal65:Token=null;
            var reference42:ParserRuleReturnScope = null;

            var exp44:ParserRuleReturnScope = null;

            var exp46:ParserRuleReturnScope = null;

            var exp48:ParserRuleReturnScope = null;

            var exp50:ParserRuleReturnScope = null;

            var exp52:ParserRuleReturnScope = null;

            var exp54:ParserRuleReturnScope = null;

            var exp56:ParserRuleReturnScope = null;

            var exp58:ParserRuleReturnScope = null;

            var exp60:ParserRuleReturnScope = null;

            var exp62:ParserRuleReturnScope = null;

            var exp64:ParserRuleReturnScope = null;

            var exp66:ParserRuleReturnScope = null;


            var char_literal43_tree:CommonTree=null;
            var string_literal45_tree:CommonTree=null;
            var string_literal47_tree:CommonTree=null;
            var string_literal49_tree:CommonTree=null;
            var string_literal51_tree:CommonTree=null;
            var string_literal53_tree:CommonTree=null;
            var string_literal55_tree:CommonTree=null;
            var string_literal57_tree:CommonTree=null;
            var string_literal59_tree:CommonTree=null;
            var string_literal61_tree:CommonTree=null;
            var string_literal63_tree:CommonTree=null;
            var string_literal65_tree:CommonTree=null;
            var stream_43:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 43");
            var stream_45:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 45");
            var stream_44:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 44");
            var stream_42:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 42");
            var stream_41:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 41");
            var stream_47:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 47");
            var stream_40:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 40");
            var stream_46:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 46");
            var stream_36:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 36");
            var stream_39:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 39");
            var stream_37:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 37");
            var stream_38:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 38");
            var stream_exp:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule exp");
            var stream_reference:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule reference");
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 10) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:99:2: ( reference ( '=' exp -> ^( '=' exp reference ) | '*=' exp -> ^( '*=' exp reference ) | '/=' exp -> ^( '/=' exp reference ) | '%=' exp -> ^( '%=' exp reference ) | '+=' exp -> ^( '+=' exp reference ) | '-=' exp -> ^( '-=' exp reference ) | '<<=' exp -> ^( '<<=' exp reference ) | '>>=' exp -> ^( '>>=' exp reference ) | '>>>=' exp -> ^( '>>>=' exp reference ) | '&=' exp -> ^( '&=' exp reference ) | '^=' exp -> ^( '^=' exp reference ) | '|=' exp -> ^( '|=' exp reference ) ) )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:99:4: reference ( '=' exp -> ^( '=' exp reference ) | '*=' exp -> ^( '*=' exp reference ) | '/=' exp -> ^( '/=' exp reference ) | '%=' exp -> ^( '%=' exp reference ) | '+=' exp -> ^( '+=' exp reference ) | '-=' exp -> ^( '-=' exp reference ) | '<<=' exp -> ^( '<<=' exp reference ) | '>>=' exp -> ^( '>>=' exp reference ) | '>>>=' exp -> ^( '>>>=' exp reference ) | '&=' exp -> ^( '&=' exp reference ) | '^=' exp -> ^( '^=' exp reference ) | '|=' exp -> ^( '|=' exp reference ) )
                {
                pushFollow(FOLLOW_reference_in_assignExp449);
                reference42=reference();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) stream_reference.add(reference42.tree);
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:100:3: ( '=' exp -> ^( '=' exp reference ) | '*=' exp -> ^( '*=' exp reference ) | '/=' exp -> ^( '/=' exp reference ) | '%=' exp -> ^( '%=' exp reference ) | '+=' exp -> ^( '+=' exp reference ) | '-=' exp -> ^( '-=' exp reference ) | '<<=' exp -> ^( '<<=' exp reference ) | '>>=' exp -> ^( '>>=' exp reference ) | '>>>=' exp -> ^( '>>>=' exp reference ) | '&=' exp -> ^( '&=' exp reference ) | '^=' exp -> ^( '^=' exp reference ) | '|=' exp -> ^( '|=' exp reference ) )
                var alt8:int=12;
                switch ( input.LA(1) ) {
                case 36:
                    {
                    alt8=1;
                    }
                    break;
                case 37:
                    {
                    alt8=2;
                    }
                    break;
                case 38:
                    {
                    alt8=3;
                    }
                    break;
                case 39:
                    {
                    alt8=4;
                    }
                    break;
                case 40:
                    {
                    alt8=5;
                    }
                    break;
                case 41:
                    {
                    alt8=6;
                    }
                    break;
                case 42:
                    {
                    alt8=7;
                    }
                    break;
                case 43:
                    {
                    alt8=8;
                    }
                    break;
                case 44:
                    {
                    alt8=9;
                    }
                    break;
                case 45:
                    {
                    alt8=10;
                    }
                    break;
                case 46:
                    {
                    alt8=11;
                    }
                    break;
                case 47:
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
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:101:4: '=' exp
                        {
                        char_literal43=Token(matchStream(input,36,FOLLOW_36_in_assignExp458)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_36.add(char_literal43);

                        pushFollow(FOLLOW_exp_in_assignExp460);
                        exp44=exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_exp.add(exp44.tree);


                        // AST REWRITE
                        // elements: exp, reference, 36
                        // token labels: 
                        // rule labels: retval
                        // token list labels: 
                        // rule list labels: 
                        if ( this.state.backtracking==0 ) {
                        retval.tree = root_0;
                        var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                        root_0 = CommonTree(adaptor.nil());
                        // 101:15: -> ^( '=' exp reference )
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:101:18: ^( '=' exp reference )
                            {
                            var root_1:CommonTree = CommonTree(adaptor.nil());
                            root_1 = CommonTree(adaptor.becomeRoot(stream_36.nextNode(), root_1));

                            adaptor.addChild(root_1, stream_exp.nextTree());
                            adaptor.addChild(root_1, stream_reference.nextTree());

                            adaptor.addChild(root_0, root_1);
                            }

                        }

                        retval.tree = root_0;}
                        }
                        break;
                    case 2 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:102:5: '*=' exp
                        {
                        string_literal45=Token(matchStream(input,37,FOLLOW_37_in_assignExp479)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_37.add(string_literal45);

                        pushFollow(FOLLOW_exp_in_assignExp481);
                        exp46=exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_exp.add(exp46.tree);


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
                        // 102:16: -> ^( '*=' exp reference )
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:102:19: ^( '*=' exp reference )
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
                    case 3 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:103:5: '/=' exp
                        {
                        string_literal47=Token(matchStream(input,38,FOLLOW_38_in_assignExp499)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_38.add(string_literal47);

                        pushFollow(FOLLOW_exp_in_assignExp501);
                        exp48=exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_exp.add(exp48.tree);


                        // AST REWRITE
                        // elements: reference, 38, exp
                        // token labels: 
                        // rule labels: retval
                        // token list labels: 
                        // rule list labels: 
                        if ( this.state.backtracking==0 ) {
                        retval.tree = root_0;
                        var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                        root_0 = CommonTree(adaptor.nil());
                        // 103:16: -> ^( '/=' exp reference )
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:103:19: ^( '/=' exp reference )
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
                    case 4 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:104:5: '%=' exp
                        {
                        string_literal49=Token(matchStream(input,39,FOLLOW_39_in_assignExp519)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_39.add(string_literal49);

                        pushFollow(FOLLOW_exp_in_assignExp521);
                        exp50=exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_exp.add(exp50.tree);


                        // AST REWRITE
                        // elements: exp, 39, reference
                        // token labels: 
                        // rule labels: retval
                        // token list labels: 
                        // rule list labels: 
                        if ( this.state.backtracking==0 ) {
                        retval.tree = root_0;
                        var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                        root_0 = CommonTree(adaptor.nil());
                        // 104:16: -> ^( '%=' exp reference )
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:104:19: ^( '%=' exp reference )
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
                    case 5 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:105:5: '+=' exp
                        {
                        string_literal51=Token(matchStream(input,40,FOLLOW_40_in_assignExp539)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_40.add(string_literal51);

                        pushFollow(FOLLOW_exp_in_assignExp541);
                        exp52=exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_exp.add(exp52.tree);


                        // AST REWRITE
                        // elements: exp, 40, reference
                        // token labels: 
                        // rule labels: retval
                        // token list labels: 
                        // rule list labels: 
                        if ( this.state.backtracking==0 ) {
                        retval.tree = root_0;
                        var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                        root_0 = CommonTree(adaptor.nil());
                        // 105:16: -> ^( '+=' exp reference )
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:105:19: ^( '+=' exp reference )
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
                    case 6 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:106:5: '-=' exp
                        {
                        string_literal53=Token(matchStream(input,41,FOLLOW_41_in_assignExp559)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_41.add(string_literal53);

                        pushFollow(FOLLOW_exp_in_assignExp561);
                        exp54=exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_exp.add(exp54.tree);


                        // AST REWRITE
                        // elements: reference, exp, 41
                        // token labels: 
                        // rule labels: retval
                        // token list labels: 
                        // rule list labels: 
                        if ( this.state.backtracking==0 ) {
                        retval.tree = root_0;
                        var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                        root_0 = CommonTree(adaptor.nil());
                        // 106:16: -> ^( '-=' exp reference )
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:106:19: ^( '-=' exp reference )
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
                    case 7 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:107:5: '<<=' exp
                        {
                        string_literal55=Token(matchStream(input,42,FOLLOW_42_in_assignExp579)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_42.add(string_literal55);

                        pushFollow(FOLLOW_exp_in_assignExp581);
                        exp56=exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_exp.add(exp56.tree);


                        // AST REWRITE
                        // elements: exp, 42, reference
                        // token labels: 
                        // rule labels: retval
                        // token list labels: 
                        // rule list labels: 
                        if ( this.state.backtracking==0 ) {
                        retval.tree = root_0;
                        var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                        root_0 = CommonTree(adaptor.nil());
                        // 107:17: -> ^( '<<=' exp reference )
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:107:20: ^( '<<=' exp reference )
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
                    case 8 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:108:5: '>>=' exp
                        {
                        string_literal57=Token(matchStream(input,43,FOLLOW_43_in_assignExp599)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_43.add(string_literal57);

                        pushFollow(FOLLOW_exp_in_assignExp601);
                        exp58=exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_exp.add(exp58.tree);


                        // AST REWRITE
                        // elements: 43, exp, reference
                        // token labels: 
                        // rule labels: retval
                        // token list labels: 
                        // rule list labels: 
                        if ( this.state.backtracking==0 ) {
                        retval.tree = root_0;
                        var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                        root_0 = CommonTree(adaptor.nil());
                        // 108:17: -> ^( '>>=' exp reference )
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:108:20: ^( '>>=' exp reference )
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
                    case 9 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:109:5: '>>>=' exp
                        {
                        string_literal59=Token(matchStream(input,44,FOLLOW_44_in_assignExp619)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_44.add(string_literal59);

                        pushFollow(FOLLOW_exp_in_assignExp621);
                        exp60=exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_exp.add(exp60.tree);


                        // AST REWRITE
                        // elements: reference, 44, exp
                        // token labels: 
                        // rule labels: retval
                        // token list labels: 
                        // rule list labels: 
                        if ( this.state.backtracking==0 ) {
                        retval.tree = root_0;
                        var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                        root_0 = CommonTree(adaptor.nil());
                        // 109:18: -> ^( '>>>=' exp reference )
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:109:21: ^( '>>>=' exp reference )
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
                    case 10 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:110:5: '&=' exp
                        {
                        string_literal61=Token(matchStream(input,45,FOLLOW_45_in_assignExp639)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_45.add(string_literal61);

                        pushFollow(FOLLOW_exp_in_assignExp641);
                        exp62=exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_exp.add(exp62.tree);


                        // AST REWRITE
                        // elements: reference, exp, 45
                        // token labels: 
                        // rule labels: retval
                        // token list labels: 
                        // rule list labels: 
                        if ( this.state.backtracking==0 ) {
                        retval.tree = root_0;
                        var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                        root_0 = CommonTree(adaptor.nil());
                        // 110:16: -> ^( '&=' exp reference )
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:110:19: ^( '&=' exp reference )
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
                    case 11 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:111:5: '^=' exp
                        {
                        string_literal63=Token(matchStream(input,46,FOLLOW_46_in_assignExp659)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_46.add(string_literal63);

                        pushFollow(FOLLOW_exp_in_assignExp661);
                        exp64=exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_exp.add(exp64.tree);


                        // AST REWRITE
                        // elements: 46, reference, exp
                        // token labels: 
                        // rule labels: retval
                        // token list labels: 
                        // rule list labels: 
                        if ( this.state.backtracking==0 ) {
                        retval.tree = root_0;
                        var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                        root_0 = CommonTree(adaptor.nil());
                        // 111:16: -> ^( '^=' exp reference )
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:111:19: ^( '^=' exp reference )
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
                    case 12 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:112:5: '|=' exp
                        {
                        string_literal65=Token(matchStream(input,47,FOLLOW_47_in_assignExp679)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_47.add(string_literal65);

                        pushFollow(FOLLOW_exp_in_assignExp681);
                        exp66=exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_exp.add(exp66.tree);


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
                        // 112:16: -> ^( '|=' exp reference )
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:112:19: ^( '|=' exp reference )
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

        // $ANTLR start condExp
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:116:1: condExp : (l= logicalOr -> $l) ( '?' e1= exp ':' e2= exp -> ^( CondExp $condExp $e1 $e2) )* ;
        public final function condExp():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var condExp_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var char_literal67:Token=null;
            var char_literal68:Token=null;
            var l:ParserRuleReturnScope = null;

            var e1:ParserRuleReturnScope = null;

            var e2:ParserRuleReturnScope = null;


            var char_literal67_tree:CommonTree=null;
            var char_literal68_tree:CommonTree=null;
            var stream_49:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 49");
            var stream_48:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 48");
            var stream_exp:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule exp");
            var stream_logicalOr:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule logicalOr");
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 11) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:117:2: ( (l= logicalOr -> $l) ( '?' e1= exp ':' e2= exp -> ^( CondExp $condExp $e1 $e2) )* )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:117:4: (l= logicalOr -> $l) ( '?' e1= exp ':' e2= exp -> ^( CondExp $condExp $e1 $e2) )*
                {
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:117:4: (l= logicalOr -> $l)
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:117:5: l= logicalOr
                {
                pushFollow(FOLLOW_logicalOr_in_condExp712);
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
                // 117:20: -> $l
                {
                    adaptor.addChild(root_0, stream_l.nextTree());

                }

                retval.tree = root_0;}
                }

                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:118:3: ( '?' e1= exp ':' e2= exp -> ^( CondExp $condExp $e1 $e2) )*
                loop9:
                do {
                    var alt9:int=2;
                    var LA9_0:int = input.LA(1);

                    if ( (LA9_0==48) ) {
                        var LA9_2:int = input.LA(2);

                        if ( (synpred22_Expression()) ) {
                            alt9=1;
                        }


                    }


                    switch (alt9) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:119:4: '?' e1= exp ':' e2= exp
                	    {
                	    char_literal67=Token(matchStream(input,48,FOLLOW_48_in_condExp730)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_48.add(char_literal67);

                	    pushFollow(FOLLOW_exp_in_condExp737);
                	    e1=exp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) stream_exp.add(e1.tree);
                	    char_literal68=Token(matchStream(input,49,FOLLOW_49_in_condExp742)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_49.add(char_literal68);

                	    pushFollow(FOLLOW_exp_in_condExp749);
                	    e2=exp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) stream_exp.add(e2.tree);


                	    // AST REWRITE
                	    // elements: e2, condExp, e1
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
                	    // 122:14: -> ^( CondExp $condExp $e1 $e2)
                	    {
                	        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:122:17: ^( CondExp $condExp $e1 $e2)
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
                	    break loop9;
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
                if ( this.state.backtracking>0 ) { memoize(input, 11, condExp_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end condExp

        // $ANTLR start logicalOr
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:126:1: logicalOr : logicalAnd ( '||' logicalAnd | 'or' logicalAnd )* ;
        public final function logicalOr():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var logicalOr_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var string_literal70:Token=null;
            var string_literal72:Token=null;
            var logicalAnd69:ParserRuleReturnScope = null;

            var logicalAnd71:ParserRuleReturnScope = null;

            var logicalAnd73:ParserRuleReturnScope = null;


            var string_literal70_tree:CommonTree=null;
            var string_literal72_tree:CommonTree=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 12) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:127:2: ( logicalAnd ( '||' logicalAnd | 'or' logicalAnd )* )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:127:4: logicalAnd ( '||' logicalAnd | 'or' logicalAnd )*
                {
                root_0 = CommonTree(adaptor.nil());

                pushFollow(FOLLOW_logicalAnd_in_logicalOr783);
                logicalAnd69=logicalAnd();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) adaptor.addChild(root_0, logicalAnd69.tree);
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:128:3: ( '||' logicalAnd | 'or' logicalAnd )*
                loop10:
                do {
                    var alt10:int=3;
                    var LA10_0:int = input.LA(1);

                    if ( (LA10_0==50) ) {
                        alt10=1;
                    }
                    else if ( (LA10_0==51) ) {
                        alt10=2;
                    }


                    switch (alt10) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:129:4: '||' logicalAnd
                	    {
                	    string_literal70=Token(matchStream(input,50,FOLLOW_50_in_logicalOr792)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    string_literal70_tree = CommonTree(adaptor.create(string_literal70));
                	    root_0 = CommonTree(adaptor.becomeRoot(string_literal70_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_logicalAnd_in_logicalOr795);
                	    logicalAnd71=logicalAnd();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, logicalAnd71.tree);

                	    }
                	    break;
                	case 2 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:130:5: 'or' logicalAnd
                	    {
                	    string_literal72=Token(matchStream(input,51,FOLLOW_51_in_logicalOr801)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    string_literal72_tree = CommonTree(adaptor.create(string_literal72));
                	    root_0 = CommonTree(adaptor.becomeRoot(string_literal72_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_logicalAnd_in_logicalOr804);
                	    logicalAnd73=logicalAnd();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, logicalAnd73.tree);

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
                if ( this.state.backtracking>0 ) { memoize(input, 12, logicalOr_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end logicalOr

        // $ANTLR start logicalAnd
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:134:1: logicalAnd : bitwiseOr ( '&&' bitwiseOr | 'and' bitwiseOr )* ;
        public final function logicalAnd():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var logicalAnd_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var string_literal75:Token=null;
            var string_literal77:Token=null;
            var bitwiseOr74:ParserRuleReturnScope = null;

            var bitwiseOr76:ParserRuleReturnScope = null;

            var bitwiseOr78:ParserRuleReturnScope = null;


            var string_literal75_tree:CommonTree=null;
            var string_literal77_tree:CommonTree=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 13) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:135:2: ( bitwiseOr ( '&&' bitwiseOr | 'and' bitwiseOr )* )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:135:4: bitwiseOr ( '&&' bitwiseOr | 'and' bitwiseOr )*
                {
                root_0 = CommonTree(adaptor.nil());

                pushFollow(FOLLOW_bitwiseOr_in_logicalAnd821);
                bitwiseOr74=bitwiseOr();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) adaptor.addChild(root_0, bitwiseOr74.tree);
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:136:3: ( '&&' bitwiseOr | 'and' bitwiseOr )*
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
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:137:4: '&&' bitwiseOr
                	    {
                	    string_literal75=Token(matchStream(input,52,FOLLOW_52_in_logicalAnd830)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    string_literal75_tree = CommonTree(adaptor.create(string_literal75));
                	    root_0 = CommonTree(adaptor.becomeRoot(string_literal75_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_bitwiseOr_in_logicalAnd833);
                	    bitwiseOr76=bitwiseOr();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, bitwiseOr76.tree);

                	    }
                	    break;
                	case 2 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:138:5: 'and' bitwiseOr
                	    {
                	    string_literal77=Token(matchStream(input,53,FOLLOW_53_in_logicalAnd839)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    string_literal77_tree = CommonTree(adaptor.create(string_literal77));
                	    root_0 = CommonTree(adaptor.becomeRoot(string_literal77_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_bitwiseOr_in_logicalAnd842);
                	    bitwiseOr78=bitwiseOr();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, bitwiseOr78.tree);

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
                if ( this.state.backtracking>0 ) { memoize(input, 13, logicalAnd_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end logicalAnd

        // $ANTLR start bitwiseOr
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:142:1: bitwiseOr : bitwiseXor ( '|' bitwiseXor )* ;
        public final function bitwiseOr():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var bitwiseOr_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var char_literal80:Token=null;
            var bitwiseXor79:ParserRuleReturnScope = null;

            var bitwiseXor81:ParserRuleReturnScope = null;


            var char_literal80_tree:CommonTree=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 14) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:143:2: ( bitwiseXor ( '|' bitwiseXor )* )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:143:4: bitwiseXor ( '|' bitwiseXor )*
                {
                root_0 = CommonTree(adaptor.nil());

                pushFollow(FOLLOW_bitwiseXor_in_bitwiseOr858);
                bitwiseXor79=bitwiseXor();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) adaptor.addChild(root_0, bitwiseXor79.tree);
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:144:3: ( '|' bitwiseXor )*
                loop12:
                do {
                    var alt12:int=2;
                    var LA12_0:int = input.LA(1);

                    if ( (LA12_0==54) ) {
                        alt12=1;
                    }


                    switch (alt12) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:145:4: '|' bitwiseXor
                	    {
                	    char_literal80=Token(matchStream(input,54,FOLLOW_54_in_bitwiseOr867)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    char_literal80_tree = CommonTree(adaptor.create(char_literal80));
                	    root_0 = CommonTree(adaptor.becomeRoot(char_literal80_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_bitwiseXor_in_bitwiseOr870);
                	    bitwiseXor81=bitwiseXor();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, bitwiseXor81.tree);

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
                if ( this.state.backtracking>0 ) { memoize(input, 14, bitwiseOr_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end bitwiseOr

        // $ANTLR start bitwiseXor
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:149:1: bitwiseXor : bitwiseAnd ( '^' bitwiseAnd )? ;
        public final function bitwiseXor():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var bitwiseXor_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var char_literal83:Token=null;
            var bitwiseAnd82:ParserRuleReturnScope = null;

            var bitwiseAnd84:ParserRuleReturnScope = null;


            var char_literal83_tree:CommonTree=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 15) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:150:2: ( bitwiseAnd ( '^' bitwiseAnd )? )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:150:4: bitwiseAnd ( '^' bitwiseAnd )?
                {
                root_0 = CommonTree(adaptor.nil());

                pushFollow(FOLLOW_bitwiseAnd_in_bitwiseXor886);
                bitwiseAnd82=bitwiseAnd();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) adaptor.addChild(root_0, bitwiseAnd82.tree);
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:151:3: ( '^' bitwiseAnd )?
                var alt13:int=2;
                var LA13_0:int = input.LA(1);

                if ( (LA13_0==55) ) {
                    alt13=1;
                }
                switch (alt13) {
                    case 1 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:152:4: '^' bitwiseAnd
                        {
                        char_literal83=Token(matchStream(input,55,FOLLOW_55_in_bitwiseXor895)); if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                        char_literal83_tree = CommonTree(adaptor.create(char_literal83));
                        root_0 = CommonTree(adaptor.becomeRoot(char_literal83_tree, root_0));
                        }
                        pushFollow(FOLLOW_bitwiseAnd_in_bitwiseXor898);
                        bitwiseAnd84=bitwiseAnd();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) adaptor.addChild(root_0, bitwiseAnd84.tree);

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
                if ( this.state.backtracking>0 ) { memoize(input, 15, bitwiseXor_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end bitwiseXor

        // $ANTLR start bitwiseAnd
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:156:1: bitwiseAnd : equalExp ( '&' equalExp )* ;
        public final function bitwiseAnd():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var bitwiseAnd_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var char_literal86:Token=null;
            var equalExp85:ParserRuleReturnScope = null;

            var equalExp87:ParserRuleReturnScope = null;


            var char_literal86_tree:CommonTree=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 16) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:157:2: ( equalExp ( '&' equalExp )* )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:157:4: equalExp ( '&' equalExp )*
                {
                root_0 = CommonTree(adaptor.nil());

                pushFollow(FOLLOW_equalExp_in_bitwiseAnd914);
                equalExp85=equalExp();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) adaptor.addChild(root_0, equalExp85.tree);
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:158:3: ( '&' equalExp )*
                loop14:
                do {
                    var alt14:int=2;
                    var LA14_0:int = input.LA(1);

                    if ( (LA14_0==56) ) {
                        alt14=1;
                    }


                    switch (alt14) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:159:4: '&' equalExp
                	    {
                	    char_literal86=Token(matchStream(input,56,FOLLOW_56_in_bitwiseAnd923)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    char_literal86_tree = CommonTree(adaptor.create(char_literal86));
                	    root_0 = CommonTree(adaptor.becomeRoot(char_literal86_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_equalExp_in_bitwiseAnd926);
                	    equalExp87=equalExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, equalExp87.tree);

                	    }
                	    break;

                	default :
                	    break loop14;
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
                if ( this.state.backtracking>0 ) { memoize(input, 16, bitwiseAnd_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end bitwiseAnd

        // $ANTLR start equalExp
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:163:1: equalExp : relExp ( '==' relExp | '!=' relExp | '===' relExp | '!==' relExp )* ;
        public final function equalExp():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var equalExp_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var string_literal89:Token=null;
            var string_literal91:Token=null;
            var string_literal93:Token=null;
            var string_literal95:Token=null;
            var relExp88:ParserRuleReturnScope = null;

            var relExp90:ParserRuleReturnScope = null;

            var relExp92:ParserRuleReturnScope = null;

            var relExp94:ParserRuleReturnScope = null;

            var relExp96:ParserRuleReturnScope = null;


            var string_literal89_tree:CommonTree=null;
            var string_literal91_tree:CommonTree=null;
            var string_literal93_tree:CommonTree=null;
            var string_literal95_tree:CommonTree=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 17) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:164:2: ( relExp ( '==' relExp | '!=' relExp | '===' relExp | '!==' relExp )* )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:164:4: relExp ( '==' relExp | '!=' relExp | '===' relExp | '!==' relExp )*
                {
                root_0 = CommonTree(adaptor.nil());

                pushFollow(FOLLOW_relExp_in_equalExp942);
                relExp88=relExp();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) adaptor.addChild(root_0, relExp88.tree);
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:165:3: ( '==' relExp | '!=' relExp | '===' relExp | '!==' relExp )*
                loop15:
                do {
                    var alt15:int=5;
                    switch ( input.LA(1) ) {
                    case 57:
                        {
                        alt15=1;
                        }
                        break;
                    case 58:
                        {
                        alt15=2;
                        }
                        break;
                    case 59:
                        {
                        alt15=3;
                        }
                        break;
                    case 60:
                        {
                        alt15=4;
                        }
                        break;

                    }

                    switch (alt15) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:166:4: '==' relExp
                	    {
                	    string_literal89=Token(matchStream(input,57,FOLLOW_57_in_equalExp951)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    string_literal89_tree = CommonTree(adaptor.create(string_literal89));
                	    root_0 = CommonTree(adaptor.becomeRoot(string_literal89_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_relExp_in_equalExp954);
                	    relExp90=relExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, relExp90.tree);

                	    }
                	    break;
                	case 2 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:167:5: '!=' relExp
                	    {
                	    string_literal91=Token(matchStream(input,58,FOLLOW_58_in_equalExp960)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    string_literal91_tree = CommonTree(adaptor.create(string_literal91));
                	    root_0 = CommonTree(adaptor.becomeRoot(string_literal91_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_relExp_in_equalExp963);
                	    relExp92=relExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, relExp92.tree);

                	    }
                	    break;
                	case 3 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:168:5: '===' relExp
                	    {
                	    string_literal93=Token(matchStream(input,59,FOLLOW_59_in_equalExp969)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    string_literal93_tree = CommonTree(adaptor.create(string_literal93));
                	    root_0 = CommonTree(adaptor.becomeRoot(string_literal93_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_relExp_in_equalExp972);
                	    relExp94=relExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, relExp94.tree);

                	    }
                	    break;
                	case 4 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:169:5: '!==' relExp
                	    {
                	    string_literal95=Token(matchStream(input,60,FOLLOW_60_in_equalExp978)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    string_literal95_tree = CommonTree(adaptor.create(string_literal95));
                	    root_0 = CommonTree(adaptor.becomeRoot(string_literal95_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_relExp_in_equalExp981);
                	    relExp96=relExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, relExp96.tree);

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
                if ( this.state.backtracking>0 ) { memoize(input, 17, equalExp_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end equalExp

        // $ANTLR start relExp
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:173:1: relExp : shiftExp ( '<' shiftExp | 'lt' shiftExp | '>' shiftExp | 'gt' shiftExp | '<=' shiftExp | 'lte' shiftExp | '>=' shiftExp | 'gte' shiftExp )* ;
        public final function relExp():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var relExp_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var char_literal98:Token=null;
            var string_literal100:Token=null;
            var char_literal102:Token=null;
            var string_literal104:Token=null;
            var string_literal106:Token=null;
            var string_literal108:Token=null;
            var string_literal110:Token=null;
            var string_literal112:Token=null;
            var shiftExp97:ParserRuleReturnScope = null;

            var shiftExp99:ParserRuleReturnScope = null;

            var shiftExp101:ParserRuleReturnScope = null;

            var shiftExp103:ParserRuleReturnScope = null;

            var shiftExp105:ParserRuleReturnScope = null;

            var shiftExp107:ParserRuleReturnScope = null;

            var shiftExp109:ParserRuleReturnScope = null;

            var shiftExp111:ParserRuleReturnScope = null;

            var shiftExp113:ParserRuleReturnScope = null;


            var char_literal98_tree:CommonTree=null;
            var string_literal100_tree:CommonTree=null;
            var char_literal102_tree:CommonTree=null;
            var string_literal104_tree:CommonTree=null;
            var string_literal106_tree:CommonTree=null;
            var string_literal108_tree:CommonTree=null;
            var string_literal110_tree:CommonTree=null;
            var string_literal112_tree:CommonTree=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 18) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:174:2: ( shiftExp ( '<' shiftExp | 'lt' shiftExp | '>' shiftExp | 'gt' shiftExp | '<=' shiftExp | 'lte' shiftExp | '>=' shiftExp | 'gte' shiftExp )* )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:174:4: shiftExp ( '<' shiftExp | 'lt' shiftExp | '>' shiftExp | 'gt' shiftExp | '<=' shiftExp | 'lte' shiftExp | '>=' shiftExp | 'gte' shiftExp )*
                {
                root_0 = CommonTree(adaptor.nil());

                pushFollow(FOLLOW_shiftExp_in_relExp998);
                shiftExp97=shiftExp();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) adaptor.addChild(root_0, shiftExp97.tree);
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:175:3: ( '<' shiftExp | 'lt' shiftExp | '>' shiftExp | 'gt' shiftExp | '<=' shiftExp | 'lte' shiftExp | '>=' shiftExp | 'gte' shiftExp )*
                loop16:
                do {
                    var alt16:int=9;
                    switch ( input.LA(1) ) {
                    case 61:
                        {
                        alt16=1;
                        }
                        break;
                    case 62:
                        {
                        alt16=2;
                        }
                        break;
                    case 63:
                        {
                        alt16=3;
                        }
                        break;
                    case 64:
                        {
                        alt16=4;
                        }
                        break;
                    case 65:
                        {
                        alt16=5;
                        }
                        break;
                    case 66:
                        {
                        alt16=6;
                        }
                        break;
                    case 67:
                        {
                        alt16=7;
                        }
                        break;
                    case 68:
                        {
                        alt16=8;
                        }
                        break;

                    }

                    switch (alt16) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:176:4: '<' shiftExp
                	    {
                	    char_literal98=Token(matchStream(input,61,FOLLOW_61_in_relExp1007)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    char_literal98_tree = CommonTree(adaptor.create(char_literal98));
                	    root_0 = CommonTree(adaptor.becomeRoot(char_literal98_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_shiftExp_in_relExp1010);
                	    shiftExp99=shiftExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, shiftExp99.tree);

                	    }
                	    break;
                	case 2 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:177:5: 'lt' shiftExp
                	    {
                	    string_literal100=Token(matchStream(input,62,FOLLOW_62_in_relExp1016)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    string_literal100_tree = CommonTree(adaptor.create(string_literal100));
                	    root_0 = CommonTree(adaptor.becomeRoot(string_literal100_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_shiftExp_in_relExp1019);
                	    shiftExp101=shiftExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, shiftExp101.tree);

                	    }
                	    break;
                	case 3 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:178:5: '>' shiftExp
                	    {
                	    char_literal102=Token(matchStream(input,63,FOLLOW_63_in_relExp1025)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    char_literal102_tree = CommonTree(adaptor.create(char_literal102));
                	    root_0 = CommonTree(adaptor.becomeRoot(char_literal102_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_shiftExp_in_relExp1028);
                	    shiftExp103=shiftExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, shiftExp103.tree);

                	    }
                	    break;
                	case 4 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:179:5: 'gt' shiftExp
                	    {
                	    string_literal104=Token(matchStream(input,64,FOLLOW_64_in_relExp1034)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    string_literal104_tree = CommonTree(adaptor.create(string_literal104));
                	    root_0 = CommonTree(adaptor.becomeRoot(string_literal104_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_shiftExp_in_relExp1037);
                	    shiftExp105=shiftExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, shiftExp105.tree);

                	    }
                	    break;
                	case 5 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:180:5: '<=' shiftExp
                	    {
                	    string_literal106=Token(matchStream(input,65,FOLLOW_65_in_relExp1043)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    string_literal106_tree = CommonTree(adaptor.create(string_literal106));
                	    root_0 = CommonTree(adaptor.becomeRoot(string_literal106_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_shiftExp_in_relExp1046);
                	    shiftExp107=shiftExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, shiftExp107.tree);

                	    }
                	    break;
                	case 6 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:181:5: 'lte' shiftExp
                	    {
                	    string_literal108=Token(matchStream(input,66,FOLLOW_66_in_relExp1052)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    string_literal108_tree = CommonTree(adaptor.create(string_literal108));
                	    root_0 = CommonTree(adaptor.becomeRoot(string_literal108_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_shiftExp_in_relExp1055);
                	    shiftExp109=shiftExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, shiftExp109.tree);

                	    }
                	    break;
                	case 7 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:182:5: '>=' shiftExp
                	    {
                	    string_literal110=Token(matchStream(input,67,FOLLOW_67_in_relExp1061)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    string_literal110_tree = CommonTree(adaptor.create(string_literal110));
                	    root_0 = CommonTree(adaptor.becomeRoot(string_literal110_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_shiftExp_in_relExp1064);
                	    shiftExp111=shiftExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, shiftExp111.tree);

                	    }
                	    break;
                	case 8 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:183:5: 'gte' shiftExp
                	    {
                	    string_literal112=Token(matchStream(input,68,FOLLOW_68_in_relExp1070)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    string_literal112_tree = CommonTree(adaptor.create(string_literal112));
                	    root_0 = CommonTree(adaptor.becomeRoot(string_literal112_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_shiftExp_in_relExp1073);
                	    shiftExp113=shiftExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, shiftExp113.tree);

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
                if ( this.state.backtracking>0 ) { memoize(input, 18, relExp_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end relExp

        // $ANTLR start shiftExp
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:187:1: shiftExp : addExp ( '<<' addExp | '>>' addExp | '>>>' addExp )* ;
        public final function shiftExp():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var shiftExp_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var string_literal115:Token=null;
            var string_literal117:Token=null;
            var string_literal119:Token=null;
            var addExp114:ParserRuleReturnScope = null;

            var addExp116:ParserRuleReturnScope = null;

            var addExp118:ParserRuleReturnScope = null;

            var addExp120:ParserRuleReturnScope = null;


            var string_literal115_tree:CommonTree=null;
            var string_literal117_tree:CommonTree=null;
            var string_literal119_tree:CommonTree=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 19) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:188:2: ( addExp ( '<<' addExp | '>>' addExp | '>>>' addExp )* )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:188:4: addExp ( '<<' addExp | '>>' addExp | '>>>' addExp )*
                {
                root_0 = CommonTree(adaptor.nil());

                pushFollow(FOLLOW_addExp_in_shiftExp1089);
                addExp114=addExp();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) adaptor.addChild(root_0, addExp114.tree);
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:189:3: ( '<<' addExp | '>>' addExp | '>>>' addExp )*
                loop17:
                do {
                    var alt17:int=4;
                    switch ( input.LA(1) ) {
                    case 69:
                        {
                        alt17=1;
                        }
                        break;
                    case 70:
                        {
                        alt17=2;
                        }
                        break;
                    case 71:
                        {
                        alt17=3;
                        }
                        break;

                    }

                    switch (alt17) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:190:4: '<<' addExp
                	    {
                	    string_literal115=Token(matchStream(input,69,FOLLOW_69_in_shiftExp1098)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    string_literal115_tree = CommonTree(adaptor.create(string_literal115));
                	    root_0 = CommonTree(adaptor.becomeRoot(string_literal115_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_addExp_in_shiftExp1101);
                	    addExp116=addExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, addExp116.tree);

                	    }
                	    break;
                	case 2 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:191:5: '>>' addExp
                	    {
                	    string_literal117=Token(matchStream(input,70,FOLLOW_70_in_shiftExp1107)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    string_literal117_tree = CommonTree(adaptor.create(string_literal117));
                	    root_0 = CommonTree(adaptor.becomeRoot(string_literal117_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_addExp_in_shiftExp1110);
                	    addExp118=addExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, addExp118.tree);

                	    }
                	    break;
                	case 3 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:192:5: '>>>' addExp
                	    {
                	    string_literal119=Token(matchStream(input,71,FOLLOW_71_in_shiftExp1116)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    string_literal119_tree = CommonTree(adaptor.create(string_literal119));
                	    root_0 = CommonTree(adaptor.becomeRoot(string_literal119_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_addExp_in_shiftExp1119);
                	    addExp120=addExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, addExp120.tree);

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
                if ( this.state.backtracking>0 ) { memoize(input, 19, shiftExp_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end shiftExp

        // $ANTLR start addExp
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:196:1: addExp : multExp ( '+' multExp | '-' multExp )* ;
        public final function addExp():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var addExp_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var char_literal122:Token=null;
            var char_literal124:Token=null;
            var multExp121:ParserRuleReturnScope = null;

            var multExp123:ParserRuleReturnScope = null;

            var multExp125:ParserRuleReturnScope = null;


            var char_literal122_tree:CommonTree=null;
            var char_literal124_tree:CommonTree=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 20) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:197:2: ( multExp ( '+' multExp | '-' multExp )* )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:197:4: multExp ( '+' multExp | '-' multExp )*
                {
                root_0 = CommonTree(adaptor.nil());

                pushFollow(FOLLOW_multExp_in_addExp1135);
                multExp121=multExp();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) adaptor.addChild(root_0, multExp121.tree);
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:198:3: ( '+' multExp | '-' multExp )*
                loop18:
                do {
                    var alt18:int=3;
                    alt18 = dfa18.predict(input);
                    switch (alt18) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:199:4: '+' multExp
                	    {
                	    char_literal122=Token(matchStream(input,72,FOLLOW_72_in_addExp1144)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    char_literal122_tree = CommonTree(adaptor.create(char_literal122));
                	    root_0 = CommonTree(adaptor.becomeRoot(char_literal122_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_multExp_in_addExp1147);
                	    multExp123=multExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, multExp123.tree);

                	    }
                	    break;
                	case 2 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:200:5: '-' multExp
                	    {
                	    char_literal124=Token(matchStream(input,73,FOLLOW_73_in_addExp1153)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    char_literal124_tree = CommonTree(adaptor.create(char_literal124));
                	    root_0 = CommonTree(adaptor.becomeRoot(char_literal124_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_multExp_in_addExp1156);
                	    multExp125=multExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, multExp125.tree);

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
                if ( this.state.backtracking>0 ) { memoize(input, 20, addExp_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end addExp

        // $ANTLR start multExp
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:204:1: multExp : unaryExp ( '*' unaryExp | '/' unaryExp | '%' unaryExp )* ;
        public final function multExp():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var multExp_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var char_literal127:Token=null;
            var char_literal129:Token=null;
            var char_literal131:Token=null;
            var unaryExp126:ParserRuleReturnScope = null;

            var unaryExp128:ParserRuleReturnScope = null;

            var unaryExp130:ParserRuleReturnScope = null;

            var unaryExp132:ParserRuleReturnScope = null;


            var char_literal127_tree:CommonTree=null;
            var char_literal129_tree:CommonTree=null;
            var char_literal131_tree:CommonTree=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 21) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:205:2: ( unaryExp ( '*' unaryExp | '/' unaryExp | '%' unaryExp )* )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:205:5: unaryExp ( '*' unaryExp | '/' unaryExp | '%' unaryExp )*
                {
                root_0 = CommonTree(adaptor.nil());

                pushFollow(FOLLOW_unaryExp_in_multExp1174);
                unaryExp126=unaryExp();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) adaptor.addChild(root_0, unaryExp126.tree);
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:206:3: ( '*' unaryExp | '/' unaryExp | '%' unaryExp )*
                loop19:
                do {
                    var alt19:int=4;
                    switch ( input.LA(1) ) {
                    case 74:
                        {
                        alt19=1;
                        }
                        break;
                    case 75:
                        {
                        alt19=2;
                        }
                        break;
                    case 76:
                        {
                        alt19=3;
                        }
                        break;

                    }

                    switch (alt19) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:207:4: '*' unaryExp
                	    {
                	    char_literal127=Token(matchStream(input,74,FOLLOW_74_in_multExp1183)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    char_literal127_tree = CommonTree(adaptor.create(char_literal127));
                	    root_0 = CommonTree(adaptor.becomeRoot(char_literal127_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_unaryExp_in_multExp1186);
                	    unaryExp128=unaryExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, unaryExp128.tree);

                	    }
                	    break;
                	case 2 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:208:5: '/' unaryExp
                	    {
                	    char_literal129=Token(matchStream(input,75,FOLLOW_75_in_multExp1192)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    char_literal129_tree = CommonTree(adaptor.create(char_literal129));
                	    root_0 = CommonTree(adaptor.becomeRoot(char_literal129_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_unaryExp_in_multExp1195);
                	    unaryExp130=unaryExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, unaryExp130.tree);

                	    }
                	    break;
                	case 3 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:209:5: '%' unaryExp
                	    {
                	    char_literal131=Token(matchStream(input,76,FOLLOW_76_in_multExp1201)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    char_literal131_tree = CommonTree(adaptor.create(char_literal131));
                	    root_0 = CommonTree(adaptor.becomeRoot(char_literal131_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_unaryExp_in_multExp1204);
                	    unaryExp132=unaryExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, unaryExp132.tree);

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
                if ( this.state.backtracking>0 ) { memoize(input, 21, multExp_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end multExp

        // $ANTLR start unaryExp
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:213:1: unaryExp : ( '+' atom | '-' atom | '~' atom | '!' atom | atom );
        public final function unaryExp():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var unaryExp_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var char_literal133:Token=null;
            var char_literal135:Token=null;
            var char_literal137:Token=null;
            var char_literal139:Token=null;
            var atom134:ParserRuleReturnScope = null;

            var atom136:ParserRuleReturnScope = null;

            var atom138:ParserRuleReturnScope = null;

            var atom140:ParserRuleReturnScope = null;

            var atom141:ParserRuleReturnScope = null;


            var char_literal133_tree:CommonTree=null;
            var char_literal135_tree:CommonTree=null;
            var char_literal137_tree:CommonTree=null;
            var char_literal139_tree:CommonTree=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 22) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:214:2: ( '+' atom | '-' atom | '~' atom | '!' atom | atom )
                var alt20:int=5;
                switch ( input.LA(1) ) {
                case 72:
                    {
                    alt20=1;
                    }
                    break;
                case 73:
                    {
                    alt20=2;
                    }
                    break;
                case 77:
                    {
                    alt20=3;
                    }
                    break;
                case 78:
                    {
                    alt20=4;
                    }
                    break;
                case NumberLiteral:
                case StringLiteral:
                case Identifier:
                case 29:
                case 79:
                case 80:
                case 81:
                case 82:
                case 85:
                    {
                    alt20=5;
                    }
                    break;
                default:
                    if (this.state.backtracking>0) {this.state.failed=true; return retval;}
                    throw new NoViableAltException("", 20, 0, input);

                }

                switch (alt20) {
                    case 1 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:214:4: '+' atom
                        {
                        root_0 = CommonTree(adaptor.nil());

                        char_literal133=Token(matchStream(input,72,FOLLOW_72_in_unaryExp1223)); if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                        char_literal133_tree = CommonTree(adaptor.create(char_literal133));
                        root_0 = CommonTree(adaptor.becomeRoot(char_literal133_tree, root_0));
                        }
                        pushFollow(FOLLOW_atom_in_unaryExp1226);
                        atom134=atom();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) adaptor.addChild(root_0, atom134.tree);

                        }
                        break;
                    case 2 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:215:4: '-' atom
                        {
                        root_0 = CommonTree(adaptor.nil());

                        char_literal135=Token(matchStream(input,73,FOLLOW_73_in_unaryExp1231)); if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                        char_literal135_tree = CommonTree(adaptor.create(char_literal135));
                        root_0 = CommonTree(adaptor.becomeRoot(char_literal135_tree, root_0));
                        }
                        pushFollow(FOLLOW_atom_in_unaryExp1234);
                        atom136=atom();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) adaptor.addChild(root_0, atom136.tree);

                        }
                        break;
                    case 3 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:216:4: '~' atom
                        {
                        root_0 = CommonTree(adaptor.nil());

                        char_literal137=Token(matchStream(input,77,FOLLOW_77_in_unaryExp1239)); if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                        char_literal137_tree = CommonTree(adaptor.create(char_literal137));
                        root_0 = CommonTree(adaptor.becomeRoot(char_literal137_tree, root_0));
                        }
                        pushFollow(FOLLOW_atom_in_unaryExp1242);
                        atom138=atom();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) adaptor.addChild(root_0, atom138.tree);

                        }
                        break;
                    case 4 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:217:4: '!' atom
                        {
                        root_0 = CommonTree(adaptor.nil());

                        char_literal139=Token(matchStream(input,78,FOLLOW_78_in_unaryExp1247)); if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                        char_literal139_tree = CommonTree(adaptor.create(char_literal139));
                        root_0 = CommonTree(adaptor.becomeRoot(char_literal139_tree, root_0));
                        }
                        pushFollow(FOLLOW_atom_in_unaryExp1250);
                        atom140=atom();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) adaptor.addChild(root_0, atom140.tree);

                        }
                        break;
                    case 5 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:218:5: atom
                        {
                        root_0 = CommonTree(adaptor.nil());

                        pushFollow(FOLLOW_atom_in_unaryExp1256);
                        atom141=atom();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) adaptor.addChild(root_0, atom141.tree);

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
                if ( this.state.backtracking>0 ) { memoize(input, 22, unaryExp_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end unaryExp

        // $ANTLR start atom
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:221:1: atom : ( NumberLiteral | StringLiteral | 'true' | 'false' | 'null' | referenceOrFuncCall | funcDef | '(' exp ')' );
        public final function atom():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var atom_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var NumberLiteral142:Token=null;
            var StringLiteral143:Token=null;
            var string_literal144:Token=null;
            var string_literal145:Token=null;
            var string_literal146:Token=null;
            var char_literal149:Token=null;
            var char_literal151:Token=null;
            var referenceOrFuncCall147:ParserRuleReturnScope = null;

            var funcDef148:ParserRuleReturnScope = null;

            var exp150:ParserRuleReturnScope = null;


            var NumberLiteral142_tree:CommonTree=null;
            var StringLiteral143_tree:CommonTree=null;
            var string_literal144_tree:CommonTree=null;
            var string_literal145_tree:CommonTree=null;
            var string_literal146_tree:CommonTree=null;
            var char_literal149_tree:CommonTree=null;
            var char_literal151_tree:CommonTree=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 23) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:222:2: ( NumberLiteral | StringLiteral | 'true' | 'false' | 'null' | referenceOrFuncCall | funcDef | '(' exp ')' )
                var alt21:int=8;
                switch ( input.LA(1) ) {
                case NumberLiteral:
                    {
                    alt21=1;
                    }
                    break;
                case StringLiteral:
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
                case 81:
                    {
                    alt21=5;
                    }
                    break;
                case Identifier:
                case 82:
                    {
                    alt21=6;
                    }
                    break;
                case 85:
                    {
                    alt21=7;
                    }
                    break;
                case 29:
                    {
                    alt21=8;
                    }
                    break;
                default:
                    if (this.state.backtracking>0) {this.state.failed=true; return retval;}
                    throw new NoViableAltException("", 21, 0, input);

                }

                switch (alt21) {
                    case 1 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:222:4: NumberLiteral
                        {
                        root_0 = CommonTree(adaptor.nil());

                        NumberLiteral142=Token(matchStream(input,NumberLiteral,FOLLOW_NumberLiteral_in_atom1268)); if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                        NumberLiteral142_tree = CommonTree(adaptor.create(NumberLiteral142));
                        adaptor.addChild(root_0, NumberLiteral142_tree);
                        }

                        }
                        break;
                    case 2 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:223:4: StringLiteral
                        {
                        root_0 = CommonTree(adaptor.nil());

                        StringLiteral143=Token(matchStream(input,StringLiteral,FOLLOW_StringLiteral_in_atom1273)); if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                        StringLiteral143_tree = CommonTree(adaptor.create(StringLiteral143));
                        adaptor.addChild(root_0, StringLiteral143_tree);
                        }

                        }
                        break;
                    case 3 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:224:4: 'true'
                        {
                        root_0 = CommonTree(adaptor.nil());

                        string_literal144=Token(matchStream(input,79,FOLLOW_79_in_atom1278)); if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                        string_literal144_tree = CommonTree(adaptor.create(string_literal144));
                        adaptor.addChild(root_0, string_literal144_tree);
                        }

                        }
                        break;
                    case 4 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:225:4: 'false'
                        {
                        root_0 = CommonTree(adaptor.nil());

                        string_literal145=Token(matchStream(input,80,FOLLOW_80_in_atom1283)); if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                        string_literal145_tree = CommonTree(adaptor.create(string_literal145));
                        adaptor.addChild(root_0, string_literal145_tree);
                        }

                        }
                        break;
                    case 5 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:226:4: 'null'
                        {
                        root_0 = CommonTree(adaptor.nil());

                        string_literal146=Token(matchStream(input,81,FOLLOW_81_in_atom1288)); if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                        string_literal146_tree = CommonTree(adaptor.create(string_literal146));
                        adaptor.addChild(root_0, string_literal146_tree);
                        }

                        }
                        break;
                    case 6 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:227:4: referenceOrFuncCall
                        {
                        root_0 = CommonTree(adaptor.nil());

                        pushFollow(FOLLOW_referenceOrFuncCall_in_atom1293);
                        referenceOrFuncCall147=referenceOrFuncCall();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) adaptor.addChild(root_0, referenceOrFuncCall147.tree);

                        }
                        break;
                    case 7 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:228:4: funcDef
                        {
                        root_0 = CommonTree(adaptor.nil());

                        pushFollow(FOLLOW_funcDef_in_atom1298);
                        funcDef148=funcDef();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) adaptor.addChild(root_0, funcDef148.tree);

                        }
                        break;
                    case 8 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:229:4: '(' exp ')'
                        {
                        root_0 = CommonTree(adaptor.nil());

                        char_literal149=Token(matchStream(input,29,FOLLOW_29_in_atom1303)); if (this.state.failed) return retval;
                        pushFollow(FOLLOW_exp_in_atom1306);
                        exp150=exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) adaptor.addChild(root_0, exp150.tree);
                        char_literal151=Token(matchStream(input,30,FOLLOW_30_in_atom1308)); if (this.state.failed) return retval;

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
                if ( this.state.backtracking>0 ) { memoize(input, 23, atom_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end atom

        // $ANTLR start reference
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:232:1: reference : (l= object -> $l) ( '[' e= exp ']' -> ^( PropExp $reference $e) | '.' i= Identifier -> ^( PropRef $reference $i) | '(' (p= params )? ')' '[' e= exp ']' -> ^( PropExp ^( FuncCall $reference $p) $e) | '(' (p= params )? ')' '.' i= Identifier -> ^( PropRef ^( FuncCall $reference $p) $i) )* ;
        public final function reference():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var reference_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var i:Token=null;
            var char_literal152:Token=null;
            var char_literal153:Token=null;
            var char_literal154:Token=null;
            var char_literal155:Token=null;
            var char_literal156:Token=null;
            var char_literal157:Token=null;
            var char_literal158:Token=null;
            var char_literal159:Token=null;
            var char_literal160:Token=null;
            var char_literal161:Token=null;
            var l:ParserRuleReturnScope = null;

            var e:ParserRuleReturnScope = null;

            var p:ParserRuleReturnScope = null;


            var i_tree:CommonTree=null;
            var char_literal152_tree:CommonTree=null;
            var char_literal153_tree:CommonTree=null;
            var char_literal154_tree:CommonTree=null;
            var char_literal155_tree:CommonTree=null;
            var char_literal156_tree:CommonTree=null;
            var char_literal157_tree:CommonTree=null;
            var char_literal158_tree:CommonTree=null;
            var char_literal159_tree:CommonTree=null;
            var char_literal160_tree:CommonTree=null;
            var char_literal161_tree:CommonTree=null;
            var stream_30:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 30");
            var stream_82:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 82");
            var stream_83:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 83");
            var stream_Identifier:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token Identifier");
            var stream_84:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 84");
            var stream_29:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 29");
            var stream_exp:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule exp");
            var stream_object:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule object");
            var stream_params:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule params");
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 24) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:233:2: ( (l= object -> $l) ( '[' e= exp ']' -> ^( PropExp $reference $e) | '.' i= Identifier -> ^( PropRef $reference $i) | '(' (p= params )? ')' '[' e= exp ']' -> ^( PropExp ^( FuncCall $reference $p) $e) | '(' (p= params )? ')' '.' i= Identifier -> ^( PropRef ^( FuncCall $reference $p) $i) )* )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:233:4: (l= object -> $l) ( '[' e= exp ']' -> ^( PropExp $reference $e) | '.' i= Identifier -> ^( PropRef $reference $i) | '(' (p= params )? ')' '[' e= exp ']' -> ^( PropExp ^( FuncCall $reference $p) $e) | '(' (p= params )? ')' '.' i= Identifier -> ^( PropRef ^( FuncCall $reference $p) $i) )*
                {
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:233:4: (l= object -> $l)
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:233:5: l= object
                {
                pushFollow(FOLLOW_object_in_reference1323);
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
                // 233:18: -> $l
                {
                    adaptor.addChild(root_0, stream_l.nextTree());

                }

                retval.tree = root_0;}
                }

                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:234:3: ( '[' e= exp ']' -> ^( PropExp $reference $e) | '.' i= Identifier -> ^( PropRef $reference $i) | '(' (p= params )? ')' '[' e= exp ']' -> ^( PropExp ^( FuncCall $reference $p) $e) | '(' (p= params )? ')' '.' i= Identifier -> ^( PropRef ^( FuncCall $reference $p) $i) )*
                loop24:
                do {
                    var alt24:int=5;
                    alt24 = dfa24.predict(input);
                    switch (alt24) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:235:4: '[' e= exp ']'
                	    {
                	    char_literal152=Token(matchStream(input,82,FOLLOW_82_in_reference1342)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_82.add(char_literal152);

                	    pushFollow(FOLLOW_exp_in_reference1346);
                	    e=exp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) stream_exp.add(e.tree);
                	    char_literal153=Token(matchStream(input,83,FOLLOW_83_in_reference1348)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_83.add(char_literal153);



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
                	    // 235:20: -> ^( PropExp $reference $e)
                	    {
                	        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:235:23: ^( PropExp $reference $e)
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
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:237:5: '.' i= Identifier
                	    {
                	    char_literal154=Token(matchStream(input,84,FOLLOW_84_in_reference1372)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_84.add(char_literal154);

                	    i=Token(matchStream(input,Identifier,FOLLOW_Identifier_in_reference1376)); if (this.state.failed) return retval; 
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
                	    // 237:23: -> ^( PropRef $reference $i)
                	    {
                	        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:237:26: ^( PropRef $reference $i)
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
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:239:5: '(' (p= params )? ')' '[' e= exp ']'
                	    {
                	    char_literal155=Token(matchStream(input,29,FOLLOW_29_in_reference1398)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_29.add(char_literal155);

                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:239:10: (p= params )?
                	    var alt22:int=2;
                	    var LA22_0:int = input.LA(1);

                	    if ( ((LA22_0>=16 && LA22_0<=18)||LA22_0==29||(LA22_0>=72 && LA22_0<=73)||(LA22_0>=77 && LA22_0<=82)||LA22_0==85) ) {
                	        alt22=1;
                	    }
                	    switch (alt22) {
                	        case 1 :
                	            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:0:0: p= params
                	            {
                	            pushFollow(FOLLOW_params_in_reference1402);
                	            p=params();

                	            state._fsp = state._fsp - 1;
                	            if (this.state.failed) return retval;
                	            if ( this.state.backtracking==0 ) stream_params.add(p.tree);

                	            }
                	            break;

                	    }

                	    char_literal156=Token(matchStream(input,30,FOLLOW_30_in_reference1405)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_30.add(char_literal156);

                	    char_literal157=Token(matchStream(input,82,FOLLOW_82_in_reference1410)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_82.add(char_literal157);

                	    pushFollow(FOLLOW_exp_in_reference1414);
                	    e=exp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) stream_exp.add(e.tree);
                	    char_literal158=Token(matchStream(input,83,FOLLOW_83_in_reference1416)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_83.add(char_literal158);



                	    // AST REWRITE
                	    // elements: e, reference, p
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
                	    // 240:20: -> ^( PropExp ^( FuncCall $reference $p) $e)
                	    {
                	        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:240:23: ^( PropExp ^( FuncCall $reference $p) $e)
                	        {
                	        var root_1:CommonTree = CommonTree(adaptor.nil());
                	        root_1 = CommonTree(adaptor.becomeRoot(CommonTree(adaptor.create(PropExp, "PropExp")), root_1));

                	        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:240:33: ^( FuncCall $reference $p)
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
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:242:5: '(' (p= params )? ')' '.' i= Identifier
                	    {
                	    char_literal159=Token(matchStream(input,29,FOLLOW_29_in_reference1447)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_29.add(char_literal159);

                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:242:10: (p= params )?
                	    var alt23:int=2;
                	    var LA23_0:int = input.LA(1);

                	    if ( ((LA23_0>=16 && LA23_0<=18)||LA23_0==29||(LA23_0>=72 && LA23_0<=73)||(LA23_0>=77 && LA23_0<=82)||LA23_0==85) ) {
                	        alt23=1;
                	    }
                	    switch (alt23) {
                	        case 1 :
                	            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:0:0: p= params
                	            {
                	            pushFollow(FOLLOW_params_in_reference1451);
                	            p=params();

                	            state._fsp = state._fsp - 1;
                	            if (this.state.failed) return retval;
                	            if ( this.state.backtracking==0 ) stream_params.add(p.tree);

                	            }
                	            break;

                	    }

                	    char_literal160=Token(matchStream(input,30,FOLLOW_30_in_reference1454)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_30.add(char_literal160);

                	    char_literal161=Token(matchStream(input,84,FOLLOW_84_in_reference1459)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_84.add(char_literal161);

                	    i=Token(matchStream(input,Identifier,FOLLOW_Identifier_in_reference1463)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_Identifier.add(i);



                	    // AST REWRITE
                	    // elements: p, i, reference
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
                	    // 243:22: -> ^( PropRef ^( FuncCall $reference $p) $i)
                	    {
                	        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:243:25: ^( PropRef ^( FuncCall $reference $p) $i)
                	        {
                	        var root_1:CommonTree = CommonTree(adaptor.nil());
                	        root_1 = CommonTree(adaptor.becomeRoot(CommonTree(adaptor.create(PropRef, "PropRef")), root_1));

                	        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:243:35: ^( FuncCall $reference $p)
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
                	    break loop24;
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
                if ( this.state.backtracking>0 ) { memoize(input, 24, reference_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end reference

        // $ANTLR start referenceOrFuncCall
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:247:1: referenceOrFuncCall : (l= object -> $l) ( '[' e= exp ']' -> ^( PropExp $referenceOrFuncCall $e) | '.' i= Identifier -> ^( PropRef $referenceOrFuncCall $i) | '(' p= params ')' -> ^( FuncCall $referenceOrFuncCall $p) | '(' ')' -> ^( FuncCall $referenceOrFuncCall) )* ;
        public final function referenceOrFuncCall():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var referenceOrFuncCall_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var i:Token=null;
            var char_literal162:Token=null;
            var char_literal163:Token=null;
            var char_literal164:Token=null;
            var char_literal165:Token=null;
            var char_literal166:Token=null;
            var char_literal167:Token=null;
            var char_literal168:Token=null;
            var l:ParserRuleReturnScope = null;

            var e:ParserRuleReturnScope = null;

            var p:ParserRuleReturnScope = null;


            var i_tree:CommonTree=null;
            var char_literal162_tree:CommonTree=null;
            var char_literal163_tree:CommonTree=null;
            var char_literal164_tree:CommonTree=null;
            var char_literal165_tree:CommonTree=null;
            var char_literal166_tree:CommonTree=null;
            var char_literal167_tree:CommonTree=null;
            var char_literal168_tree:CommonTree=null;
            var stream_30:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 30");
            var stream_82:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 82");
            var stream_83:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 83");
            var stream_Identifier:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token Identifier");
            var stream_84:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 84");
            var stream_29:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 29");
            var stream_exp:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule exp");
            var stream_object:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule object");
            var stream_params:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule params");
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 25) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:248:2: ( (l= object -> $l) ( '[' e= exp ']' -> ^( PropExp $referenceOrFuncCall $e) | '.' i= Identifier -> ^( PropRef $referenceOrFuncCall $i) | '(' p= params ')' -> ^( FuncCall $referenceOrFuncCall $p) | '(' ')' -> ^( FuncCall $referenceOrFuncCall) )* )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:248:4: (l= object -> $l) ( '[' e= exp ']' -> ^( PropExp $referenceOrFuncCall $e) | '.' i= Identifier -> ^( PropRef $referenceOrFuncCall $i) | '(' p= params ')' -> ^( FuncCall $referenceOrFuncCall $p) | '(' ')' -> ^( FuncCall $referenceOrFuncCall) )*
                {
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:248:4: (l= object -> $l)
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:248:5: l= object
                {
                pushFollow(FOLLOW_object_in_referenceOrFuncCall1503);
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
                // 248:18: -> $l
                {
                    adaptor.addChild(root_0, stream_l.nextTree());

                }

                retval.tree = root_0;}
                }

                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:249:3: ( '[' e= exp ']' -> ^( PropExp $referenceOrFuncCall $e) | '.' i= Identifier -> ^( PropRef $referenceOrFuncCall $i) | '(' p= params ')' -> ^( FuncCall $referenceOrFuncCall $p) | '(' ')' -> ^( FuncCall $referenceOrFuncCall) )*
                loop25:
                do {
                    var alt25:int=5;
                    alt25 = dfa25.predict(input);
                    switch (alt25) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:250:4: '[' e= exp ']'
                	    {
                	    char_literal162=Token(matchStream(input,82,FOLLOW_82_in_referenceOrFuncCall1522)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_82.add(char_literal162);

                	    pushFollow(FOLLOW_exp_in_referenceOrFuncCall1526);
                	    e=exp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) stream_exp.add(e.tree);
                	    char_literal163=Token(matchStream(input,83,FOLLOW_83_in_referenceOrFuncCall1528)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_83.add(char_literal163);



                	    // AST REWRITE
                	    // elements: e, referenceOrFuncCall
                	    // token labels: 
                	    // rule labels: retval, e
                	    // token list labels: 
                	    // rule list labels: 
                	    if ( this.state.backtracking==0 ) {
                	    retval.tree = root_0;
                	    var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);
                	    var stream_e:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule e",e!=null?e.tree:null);

                	    root_0 = CommonTree(adaptor.nil());
                	    // 250:20: -> ^( PropExp $referenceOrFuncCall $e)
                	    {
                	        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:250:23: ^( PropExp $referenceOrFuncCall $e)
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
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:251:5: '.' i= Identifier
                	    {
                	    char_literal164=Token(matchStream(input,84,FOLLOW_84_in_referenceOrFuncCall1548)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_84.add(char_literal164);

                	    i=Token(matchStream(input,Identifier,FOLLOW_Identifier_in_referenceOrFuncCall1552)); if (this.state.failed) return retval; 
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
                	    // 251:23: -> ^( PropRef $referenceOrFuncCall $i)
                	    {
                	        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:251:26: ^( PropRef $referenceOrFuncCall $i)
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
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:252:5: '(' p= params ')'
                	    {
                	    char_literal165=Token(matchStream(input,29,FOLLOW_29_in_referenceOrFuncCall1571)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_29.add(char_literal165);

                	    pushFollow(FOLLOW_params_in_referenceOrFuncCall1575);
                	    p=params();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) stream_params.add(p.tree);
                	    char_literal166=Token(matchStream(input,30,FOLLOW_30_in_referenceOrFuncCall1577)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_30.add(char_literal166);



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
                	    // 252:23: -> ^( FuncCall $referenceOrFuncCall $p)
                	    {
                	        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:252:26: ^( FuncCall $referenceOrFuncCall $p)
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
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:253:5: '(' ')'
                	    {
                	    char_literal167=Token(matchStream(input,29,FOLLOW_29_in_referenceOrFuncCall1596)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_29.add(char_literal167);

                	    char_literal168=Token(matchStream(input,30,FOLLOW_30_in_referenceOrFuncCall1598)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_30.add(char_literal168);



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
                	    // 253:16: -> ^( FuncCall $referenceOrFuncCall)
                	    {
                	        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:253:19: ^( FuncCall $referenceOrFuncCall)
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
                if ( this.state.backtracking>0 ) { memoize(input, 25, referenceOrFuncCall_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end referenceOrFuncCall

        // $ANTLR start funcDef
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:257:1: funcDef : 'function' ( '(' a= args ')' b= block -> ^( FuncDef $a $b) | '(' ')' b= block -> ^( FuncDef $b) ) ;
        public final function funcDef():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var funcDef_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var string_literal169:Token=null;
            var char_literal170:Token=null;
            var char_literal171:Token=null;
            var char_literal172:Token=null;
            var char_literal173:Token=null;
            var a:ParserRuleReturnScope = null;

            var b:ParserRuleReturnScope = null;


            var string_literal169_tree:CommonTree=null;
            var char_literal170_tree:CommonTree=null;
            var char_literal171_tree:CommonTree=null;
            var char_literal172_tree:CommonTree=null;
            var char_literal173_tree:CommonTree=null;
            var stream_30:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 30");
            var stream_85:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 85");
            var stream_29:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 29");
            var stream_args:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule args");
            var stream_block:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule block");
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 26) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:258:2: ( 'function' ( '(' a= args ')' b= block -> ^( FuncDef $a $b) | '(' ')' b= block -> ^( FuncDef $b) ) )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:258:4: 'function' ( '(' a= args ')' b= block -> ^( FuncDef $a $b) | '(' ')' b= block -> ^( FuncDef $b) )
                {
                string_literal169=Token(matchStream(input,85,FOLLOW_85_in_funcDef1627)); if (this.state.failed) return retval; 
                if ( this.state.backtracking==0 ) stream_85.add(string_literal169);

                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:259:3: ( '(' a= args ')' b= block -> ^( FuncDef $a $b) | '(' ')' b= block -> ^( FuncDef $b) )
                var alt26:int=2;
                var LA26_0:int = input.LA(1);

                if ( (LA26_0==29) ) {
                    var LA26_1:int = input.LA(2);

                    if ( (LA26_1==30) ) {
                        alt26=2;
                    }
                    else if ( (LA26_1==18) ) {
                        alt26=1;
                    }
                    else {
                        if (this.state.backtracking>0) {this.state.failed=true; return retval;}
                        throw new NoViableAltException("", 26, 1, input);

                    }
                }
                else {
                    if (this.state.backtracking>0) {this.state.failed=true; return retval;}
                    throw new NoViableAltException("", 26, 0, input);

                }
                switch (alt26) {
                    case 1 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:260:4: '(' a= args ')' b= block
                        {
                        char_literal170=Token(matchStream(input,29,FOLLOW_29_in_funcDef1636)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_29.add(char_literal170);

                        pushFollow(FOLLOW_args_in_funcDef1640);
                        a=args();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_args.add(a.tree);
                        char_literal171=Token(matchStream(input,30,FOLLOW_30_in_funcDef1642)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_30.add(char_literal171);

                        pushFollow(FOLLOW_block_in_funcDef1646);
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
                        // 260:28: -> ^( FuncDef $a $b)
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:260:31: ^( FuncDef $a $b)
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
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:261:5: '(' ')' b= block
                        {
                        char_literal172=Token(matchStream(input,29,FOLLOW_29_in_funcDef1666)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_29.add(char_literal172);

                        char_literal173=Token(matchStream(input,30,FOLLOW_30_in_funcDef1668)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_30.add(char_literal173);

                        pushFollow(FOLLOW_block_in_funcDef1672);
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
                        // 261:23: -> ^( FuncDef $b)
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:261:26: ^( FuncDef $b)
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
                if ( this.state.backtracking>0 ) { memoize(input, 26, funcDef_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end funcDef

        // $ANTLR start args
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:265:1: args : Identifier ( ',' Identifier )* ;
        public final function args():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var args_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var Identifier174:Token=null;
            var char_literal175:Token=null;
            var Identifier176:Token=null;

            var Identifier174_tree:CommonTree=null;
            var char_literal175_tree:CommonTree=null;
            var Identifier176_tree:CommonTree=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 27) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:266:2: ( Identifier ( ',' Identifier )* )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:266:4: Identifier ( ',' Identifier )*
                {
                root_0 = CommonTree(adaptor.nil());

                Identifier174=Token(matchStream(input,Identifier,FOLLOW_Identifier_in_args1699)); if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) {
                Identifier174_tree = CommonTree(adaptor.create(Identifier174));
                adaptor.addChild(root_0, Identifier174_tree);
                }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:267:3: ( ',' Identifier )*
                loop27:
                do {
                    var alt27:int=2;
                    var LA27_0:int = input.LA(1);

                    if ( (LA27_0==86) ) {
                        alt27=1;
                    }


                    switch (alt27) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:268:4: ',' Identifier
                	    {
                	    char_literal175=Token(matchStream(input,86,FOLLOW_86_in_args1708)); if (this.state.failed) return retval;
                	    Identifier176=Token(matchStream(input,Identifier,FOLLOW_Identifier_in_args1714)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    Identifier176_tree = CommonTree(adaptor.create(Identifier176));
                	    adaptor.addChild(root_0, Identifier176_tree);
                	    }

                	    }
                	    break;

                	default :
                	    break loop27;
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
                if ( this.state.backtracking>0 ) { memoize(input, 27, args_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end args

        // $ANTLR start object
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:273:1: object : ( Identifier | array );
        public final function object():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var object_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var Identifier177:Token=null;
            var array178:ParserRuleReturnScope = null;


            var Identifier177_tree:CommonTree=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 28) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:274:2: ( Identifier | array )
                var alt28:int=2;
                var LA28_0:int = input.LA(1);

                if ( (LA28_0==18) ) {
                    alt28=1;
                }
                else if ( (LA28_0==82) ) {
                    alt28=2;
                }
                else {
                    if (this.state.backtracking>0) {this.state.failed=true; return retval;}
                    throw new NoViableAltException("", 28, 0, input);

                }
                switch (alt28) {
                    case 1 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:274:4: Identifier
                        {
                        root_0 = CommonTree(adaptor.nil());

                        Identifier177=Token(matchStream(input,Identifier,FOLLOW_Identifier_in_object1731)); if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                        Identifier177_tree = CommonTree(adaptor.create(Identifier177));
                        adaptor.addChild(root_0, Identifier177_tree);
                        }

                        }
                        break;
                    case 2 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:275:4: array
                        {
                        root_0 = CommonTree(adaptor.nil());

                        pushFollow(FOLLOW_array_in_object1736);
                        array178=array();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) adaptor.addChild(root_0, array178.tree);

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
                if ( this.state.backtracking>0 ) { memoize(input, 28, object_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end object

        // $ANTLR start params
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:278:1: params : exp ( ',' exp )* ;
        public final function params():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var params_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var char_literal180:Token=null;
            var exp179:ParserRuleReturnScope = null;

            var exp181:ParserRuleReturnScope = null;


            var char_literal180_tree:CommonTree=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 29) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:279:2: ( exp ( ',' exp )* )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:279:4: exp ( ',' exp )*
                {
                root_0 = CommonTree(adaptor.nil());

                pushFollow(FOLLOW_exp_in_params1748);
                exp179=exp();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) adaptor.addChild(root_0, exp179.tree);
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:280:3: ( ',' exp )*
                loop29:
                do {
                    var alt29:int=2;
                    var LA29_0:int = input.LA(1);

                    if ( (LA29_0==86) ) {
                        alt29=1;
                    }


                    switch (alt29) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:281:4: ',' exp
                	    {
                	    char_literal180=Token(matchStream(input,86,FOLLOW_86_in_params1757)); if (this.state.failed) return retval;
                	    pushFollow(FOLLOW_exp_in_params1763);
                	    exp181=exp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, exp181.tree);

                	    }
                	    break;

                	default :
                	    break loop29;
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
                if ( this.state.backtracking>0 ) { memoize(input, 29, params_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end params

        // $ANTLR start array
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:286:1: array : ( '[' i= items ']' -> ^( CreateArray $i) | '[' ']' -> ^( CreateArray ) );
        public final function array():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var array_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var char_literal182:Token=null;
            var char_literal183:Token=null;
            var char_literal184:Token=null;
            var char_literal185:Token=null;
            var i:ParserRuleReturnScope = null;


            var char_literal182_tree:CommonTree=null;
            var char_literal183_tree:CommonTree=null;
            var char_literal184_tree:CommonTree=null;
            var char_literal185_tree:CommonTree=null;
            var stream_82:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 82");
            var stream_83:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 83");
            var stream_items:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule items");
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 30) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:287:2: ( '[' i= items ']' -> ^( CreateArray $i) | '[' ']' -> ^( CreateArray ) )
                var alt30:int=2;
                var LA30_0:int = input.LA(1);

                if ( (LA30_0==82) ) {
                    var LA30_1:int = input.LA(2);

                    if ( (LA30_1==83) ) {
                        alt30=2;
                    }
                    else if ( ((LA30_1>=16 && LA30_1<=18)||LA30_1==29||(LA30_1>=72 && LA30_1<=73)||(LA30_1>=77 && LA30_1<=82)||LA30_1==85) ) {
                        alt30=1;
                    }
                    else {
                        if (this.state.backtracking>0) {this.state.failed=true; return retval;}
                        throw new NoViableAltException("", 30, 1, input);

                    }
                }
                else {
                    if (this.state.backtracking>0) {this.state.failed=true; return retval;}
                    throw new NoViableAltException("", 30, 0, input);

                }
                switch (alt30) {
                    case 1 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:287:4: '[' i= items ']'
                        {
                        char_literal182=Token(matchStream(input,82,FOLLOW_82_in_array1780)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_82.add(char_literal182);

                        pushFollow(FOLLOW_items_in_array1784);
                        i=items();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_items.add(i.tree);
                        char_literal183=Token(matchStream(input,83,FOLLOW_83_in_array1786)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_83.add(char_literal183);



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
                        // 287:22: -> ^( CreateArray $i)
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:287:25: ^( CreateArray $i)
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
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:288:4: '[' ']'
                        {
                        char_literal184=Token(matchStream(input,82,FOLLOW_82_in_array1802)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_82.add(char_literal184);

                        char_literal185=Token(matchStream(input,83,FOLLOW_83_in_array1804)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_83.add(char_literal185);



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
                        // 288:16: -> ^( CreateArray )
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:288:19: ^( CreateArray )
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
                if ( this.state.backtracking>0 ) { memoize(input, 30, array_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end array

        // $ANTLR start items
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:291:1: items : exp ( ',' exp )* ;
        public final function items():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var items_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var char_literal187:Token=null;
            var exp186:ParserRuleReturnScope = null;

            var exp188:ParserRuleReturnScope = null;


            var char_literal187_tree:CommonTree=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 31) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:292:2: ( exp ( ',' exp )* )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:292:4: exp ( ',' exp )*
                {
                root_0 = CommonTree(adaptor.nil());

                pushFollow(FOLLOW_exp_in_items1826);
                exp186=exp();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) adaptor.addChild(root_0, exp186.tree);
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:293:3: ( ',' exp )*
                loop31:
                do {
                    var alt31:int=2;
                    var LA31_0:int = input.LA(1);

                    if ( (LA31_0==86) ) {
                        alt31=1;
                    }


                    switch (alt31) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:294:4: ',' exp
                	    {
                	    char_literal187=Token(matchStream(input,86,FOLLOW_86_in_items1835)); if (this.state.failed) return retval;
                	    pushFollow(FOLLOW_exp_in_items1841);
                	    exp188=exp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, exp188.tree);

                	    }
                	    break;

                	default :
                	    break loop31;
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
                if ( this.state.backtracking>0 ) { memoize(input, 31, items_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end items

        // $ANTLR start ret
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:299:1: ret : ( 'return' e= exp -> ^( Return $e) | 'return' -> ^( Return ) );
        public final function ret():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var ret_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var string_literal189:Token=null;
            var string_literal190:Token=null;
            var e:ParserRuleReturnScope = null;


            var string_literal189_tree:CommonTree=null;
            var string_literal190_tree:CommonTree=null;
            var stream_87:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 87");
            var stream_exp:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule exp");
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 32) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:300:2: ( 'return' e= exp -> ^( Return $e) | 'return' -> ^( Return ) )
                var alt32:int=2;
                var LA32_0:int = input.LA(1);

                if ( (LA32_0==87) ) {
                    var LA32_1:int = input.LA(2);

                    if ( (synpred77_Expression()) ) {
                        alt32=1;
                    }
                    else if ( (true) ) {
                        alt32=2;
                    }
                    else {
                        if (this.state.backtracking>0) {this.state.failed=true; return retval;}
                        throw new NoViableAltException("", 32, 1, input);

                    }
                }
                else {
                    if (this.state.backtracking>0) {this.state.failed=true; return retval;}
                    throw new NoViableAltException("", 32, 0, input);

                }
                switch (alt32) {
                    case 1 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:301:3: 'return' e= exp
                        {
                        string_literal189=Token(matchStream(input,87,FOLLOW_87_in_ret1859)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_87.add(string_literal189);

                        pushFollow(FOLLOW_exp_in_ret1863);
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
                        // 301:20: -> ^( Return $e)
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:301:23: ^( Return $e)
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
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:302:4: 'return'
                        {
                        string_literal190=Token(matchStream(input,87,FOLLOW_87_in_ret1879)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_87.add(string_literal190);



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
                        // 302:15: -> ^( Return )
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:302:18: ^( Return )
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
                if ( this.state.backtracking>0 ) { memoize(input, 32, ret_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end ret

        // $ANTLR start synpred5_Expression
        public final function synpred5_Expression_fragment():void {
            var l:ParserRuleReturnScope = null;

            var r:ParserRuleReturnScope = null;


            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:67:4: ( 'if' '(' exp ')' l= block 'else' r= block )
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:67:4: 'if' '(' exp ')' l= block 'else' r= block
            {
            matchStream(input,28,FOLLOW_28_in_synpred5_Expression215); if (this.state.failed) return ;
            matchStream(input,29,FOLLOW_29_in_synpred5_Expression217); if (this.state.failed) return ;
            pushFollow(FOLLOW_exp_in_synpred5_Expression219);
            exp();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;
            matchStream(input,30,FOLLOW_30_in_synpred5_Expression221); if (this.state.failed) return ;
            pushFollow(FOLLOW_block_in_synpred5_Expression225);
            l=block();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;
            matchStream(input,31,FOLLOW_31_in_synpred5_Expression227); if (this.state.failed) return ;
            pushFollow(FOLLOW_block_in_synpred5_Expression231);
            r=block();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;

            }
        }
        // $ANTLR end synpred5_Expression

        // $ANTLR start synpred6_Expression
        public final function synpred6_Expression_fragment():void {
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:68:4: ( 'if' '(' exp ')' block 'else' ifStmt )
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:68:4: 'if' '(' exp ')' block 'else' ifStmt
            {
            matchStream(input,28,FOLLOW_28_in_synpred6_Expression250); if (this.state.failed) return ;
            matchStream(input,29,FOLLOW_29_in_synpred6_Expression252); if (this.state.failed) return ;
            pushFollow(FOLLOW_exp_in_synpred6_Expression254);
            exp();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;
            matchStream(input,30,FOLLOW_30_in_synpred6_Expression256); if (this.state.failed) return ;
            pushFollow(FOLLOW_block_in_synpred6_Expression258);
            block();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;
            matchStream(input,31,FOLLOW_31_in_synpred6_Expression260); if (this.state.failed) return ;
            pushFollow(FOLLOW_ifStmt_in_synpred6_Expression262);
            ifStmt();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;

            }
        }
        // $ANTLR end synpred6_Expression

        // $ANTLR start synpred7_Expression
        public final function synpred7_Expression_fragment():void {
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:83:4: ( ';' instr )
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:83:4: ';' instr
            {
            matchStream(input,35,FOLLOW_35_in_synpred7_Expression374); if (this.state.failed) return ;
            pushFollow(FOLLOW_instr_in_synpred7_Expression376);
            instr();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;

            }
        }
        // $ANTLR end synpred7_Expression

        // $ANTLR start synpred8_Expression
        public final function synpred8_Expression_fragment():void {
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:84:5: ( ';' )
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:84:5: ';'
            {
            matchStream(input,35,FOLLOW_35_in_synpred8_Expression382); if (this.state.failed) return ;

            }
        }
        // $ANTLR end synpred8_Expression

        // $ANTLR start synpred10_Expression
        public final function synpred10_Expression_fragment():void {
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:94:4: ( assignExp )
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:94:4: assignExp
            {
            pushFollow(FOLLOW_assignExp_in_synpred10_Expression430);
            assignExp();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;

            }
        }
        // $ANTLR end synpred10_Expression

        // $ANTLR start synpred22_Expression
        public final function synpred22_Expression_fragment():void {
            var e1:ParserRuleReturnScope = null;

            var e2:ParserRuleReturnScope = null;


            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:119:4: ( '?' e1= exp ':' e2= exp )
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:119:4: '?' e1= exp ':' e2= exp
            {
            matchStream(input,48,FOLLOW_48_in_synpred22_Expression730); if (this.state.failed) return ;
            pushFollow(FOLLOW_exp_in_synpred22_Expression737);
            e1=exp();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;
            matchStream(input,49,FOLLOW_49_in_synpred22_Expression742); if (this.state.failed) return ;
            pushFollow(FOLLOW_exp_in_synpred22_Expression749);
            e2=exp();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;

            }
        }
        // $ANTLR end synpred22_Expression

        // $ANTLR start synpred45_Expression
        public final function synpred45_Expression_fragment():void {
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:199:4: ( '+' multExp )
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:199:4: '+' multExp
            {
            matchStream(input,72,FOLLOW_72_in_synpred45_Expression1144); if (this.state.failed) return ;
            pushFollow(FOLLOW_multExp_in_synpred45_Expression1147);
            multExp();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;

            }
        }
        // $ANTLR end synpred45_Expression

        // $ANTLR start synpred46_Expression
        public final function synpred46_Expression_fragment():void {
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:200:5: ( '-' multExp )
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:200:5: '-' multExp
            {
            matchStream(input,73,FOLLOW_73_in_synpred46_Expression1153); if (this.state.failed) return ;
            pushFollow(FOLLOW_multExp_in_synpred46_Expression1156);
            multExp();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;

            }
        }
        // $ANTLR end synpred46_Expression

        // $ANTLR start synpred64_Expression
        public final function synpred64_Expression_fragment():void {
            var p:ParserRuleReturnScope = null;

            var e:ParserRuleReturnScope = null;


            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:239:5: ( '(' (p= params )? ')' '[' e= exp ']' )
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:239:5: '(' (p= params )? ')' '[' e= exp ']'
            {
            matchStream(input,29,FOLLOW_29_in_synpred64_Expression1398); if (this.state.failed) return ;
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:239:10: (p= params )?
            var alt33:int=2;
            var LA33_0:int = input.LA(1);

            if ( ((LA33_0>=16 && LA33_0<=18)||LA33_0==29||(LA33_0>=72 && LA33_0<=73)||(LA33_0>=77 && LA33_0<=82)||LA33_0==85) ) {
                alt33=1;
            }
            switch (alt33) {
                case 1 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:0:0: p= params
                    {
                    pushFollow(FOLLOW_params_in_synpred64_Expression1402);
                    p=params();

                    state._fsp = state._fsp - 1;
                    if (this.state.failed) return ;

                    }
                    break;

            }

            matchStream(input,30,FOLLOW_30_in_synpred64_Expression1405); if (this.state.failed) return ;
            matchStream(input,82,FOLLOW_82_in_synpred64_Expression1410); if (this.state.failed) return ;
            pushFollow(FOLLOW_exp_in_synpred64_Expression1414);
            e=exp();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;
            matchStream(input,83,FOLLOW_83_in_synpred64_Expression1416); if (this.state.failed) return ;

            }
        }
        // $ANTLR end synpred64_Expression

        // $ANTLR start synpred66_Expression
        public final function synpred66_Expression_fragment():void {
            var i:Token=null;
            var p:ParserRuleReturnScope = null;


            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:242:5: ( '(' (p= params )? ')' '.' i= Identifier )
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:242:5: '(' (p= params )? ')' '.' i= Identifier
            {
            matchStream(input,29,FOLLOW_29_in_synpred66_Expression1447); if (this.state.failed) return ;
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:242:10: (p= params )?
            var alt34:int=2;
            var LA34_0:int = input.LA(1);

            if ( ((LA34_0>=16 && LA34_0<=18)||LA34_0==29||(LA34_0>=72 && LA34_0<=73)||(LA34_0>=77 && LA34_0<=82)||LA34_0==85) ) {
                alt34=1;
            }
            switch (alt34) {
                case 1 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:0:0: p= params
                    {
                    pushFollow(FOLLOW_params_in_synpred66_Expression1451);
                    p=params();

                    state._fsp = state._fsp - 1;
                    if (this.state.failed) return ;

                    }
                    break;

            }

            matchStream(input,30,FOLLOW_30_in_synpred66_Expression1454); if (this.state.failed) return ;
            matchStream(input,84,FOLLOW_84_in_synpred66_Expression1459); if (this.state.failed) return ;
            i=Token(matchStream(input,Identifier,FOLLOW_Identifier_in_synpred66_Expression1463)); if (this.state.failed) return ;

            }
        }
        // $ANTLR end synpred66_Expression

        // $ANTLR start synpred67_Expression
        public final function synpred67_Expression_fragment():void {
            var e:ParserRuleReturnScope = null;


            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:250:4: ( '[' e= exp ']' )
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:250:4: '[' e= exp ']'
            {
            matchStream(input,82,FOLLOW_82_in_synpred67_Expression1522); if (this.state.failed) return ;
            pushFollow(FOLLOW_exp_in_synpred67_Expression1526);
            e=exp();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;
            matchStream(input,83,FOLLOW_83_in_synpred67_Expression1528); if (this.state.failed) return ;

            }
        }
        // $ANTLR end synpred67_Expression

        // $ANTLR start synpred69_Expression
        public final function synpred69_Expression_fragment():void {
            var p:ParserRuleReturnScope = null;


            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:252:5: ( '(' p= params ')' )
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:252:5: '(' p= params ')'
            {
            matchStream(input,29,FOLLOW_29_in_synpred69_Expression1571); if (this.state.failed) return ;
            pushFollow(FOLLOW_params_in_synpred69_Expression1575);
            p=params();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;
            matchStream(input,30,FOLLOW_30_in_synpred69_Expression1577); if (this.state.failed) return ;

            }
        }
        // $ANTLR end synpred69_Expression

        // $ANTLR start synpred70_Expression
        public final function synpred70_Expression_fragment():void {
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:253:5: ( '(' ')' )
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:253:5: '(' ')'
            {
            matchStream(input,29,FOLLOW_29_in_synpred70_Expression1596); if (this.state.failed) return ;
            matchStream(input,30,FOLLOW_30_in_synpred70_Expression1598); if (this.state.failed) return ;

            }
        }
        // $ANTLR end synpred70_Expression

        // $ANTLR start synpred77_Expression
        public final function synpred77_Expression_fragment():void {
            var e:ParserRuleReturnScope = null;


            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:301:3: ( 'return' e= exp )
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:301:3: 'return' e= exp
            {
            matchStream(input,87,FOLLOW_87_in_synpred77_Expression1859); if (this.state.failed) return ;
            pushFollow(FOLLOW_exp_in_synpred77_Expression1863);
            e=exp();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;

            }
        }
        // $ANTLR end synpred77_Expression


           // Delegated rules

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
        public final function synpred46_Expression():Boolean {
            this.state.backtracking++;
            var start:int = input.mark();
            try {
                synpred46_Expression_fragment(); // can never throw exception
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
        public final function synpred70_Expression():Boolean {
            this.state.backtracking++;
            var start:int = input.mark();
            try {
                synpred70_Expression_fragment(); // can never throw exception
            } catch (re:RecognitionException) {
                trace("impossible: "+re);
            }
            var success:Boolean = !this.state.failed;
            input.rewindTo(start);
            this.state.backtracking--;
            this.state.failed=false;
            return success;
        }
        public final function synpred22_Expression():Boolean {
            this.state.backtracking++;
            var start:int = input.mark();
            try {
                synpred22_Expression_fragment(); // can never throw exception
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
        public final function synpred45_Expression():Boolean {
            this.state.backtracking++;
            var start:int = input.mark();
            try {
                synpred45_Expression_fragment(); // can never throw exception
            } catch (re:RecognitionException) {
                trace("impossible: "+re);
            }
            var success:Boolean = !this.state.failed;
            input.rewindTo(start);
            this.state.backtracking--;
            this.state.failed=false;
            return success;
        }
        public final function synpred67_Expression():Boolean {
            this.state.backtracking++;
            var start:int = input.mark();
            try {
                synpred67_Expression_fragment(); // can never throw exception
            } catch (re:RecognitionException) {
                trace("impossible: "+re);
            }
            var success:Boolean = !this.state.failed;
            input.rewindTo(start);
            this.state.backtracking--;
            this.state.failed=false;
            return success;
        }
        public final function synpred77_Expression():Boolean {
            this.state.backtracking++;
            var start:int = input.mark();
            try {
                synpred77_Expression_fragment(); // can never throw exception
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
        public final function synpred64_Expression():Boolean {
            this.state.backtracking++;
            var start:int = input.mark();
            try {
                synpred64_Expression_fragment(); // can never throw exception
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
            DFA.unpackEncodedString("\x16\u80ff\xff");
        private const DFA5_eof:Array =
            DFA.unpackEncodedString("\x01\x01\x15\u80ff\xff");
        private const DFA5_min:Array =
            DFA.unpackEncodedString("\x01\x10\x12\u80ff\xff\x01\x00\x02"+
            "\u80ff\xff", true);
        private const DFA5_max:Array =
            DFA.unpackEncodedString("\x01\x57\x12\u80ff\xff\x01\x00\x02"+
            "\u80ff\xff", true);
        private const DFA5_accept:Array =
            DFA.unpackEncodedString("\x01\u80ff\xff\x01\x03\x12\u80ff\xff"+
            "\x01\x01\x01\x02");
        private const DFA5_special:Array =
            DFA.unpackEncodedString("\x13\u80ff\xff\x01\x00\x02\u80ff\xff");
        private const DFA5_transition:Array = [
                DFA.unpackEncodedString("\x03\x01\x09\u80ff\xff\x02\x01"+
                "\x02\u80ff\xff\x01\x01\x01\u80ff\xff\x01\x01\x01\x13\x24"+
                "\u80ff\xff\x02\x01\x03\u80ff\xff\x06\x01\x02\u80ff\xff\x01"+
                "\x01\x01\u80ff\xff\x01\x01"),
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
                            var LA5_19:int = input.LA(1);

                             
                            var index5_19:int = input.index;
                            input.rewind();
                            s = -1;
                            if ( (synpred7_Expression()) ) {s = 20;}

                            else if ( (synpred8_Expression()) ) {s = 21;}

                             
                            input.seek(index5_19);
                            if ( s>=0 ) return s;
                            break;
                }
                if (this.state.backtracking>0) {this.state.failed=true; return -1;}
                throw dfa.error(new NoViableAltException(dfa.description, 5, _s, input));
            }

        protected var dfa5:DFA;  // initialized in constructor

        private const DFA7_eot:Array =
            DFA.unpackEncodedString("\x0f\u80ff\xff");
        private const DFA7_eof:Array =
            DFA.unpackEncodedString("\x0f\u80ff\xff");
        private const DFA7_min:Array =
            DFA.unpackEncodedString("\x01\x10\x02\x00\x0c\u80ff\xff", true);
        private const DFA7_max:Array =
            DFA.unpackEncodedString("\x01\x55\x02\x00\x0c\u80ff\xff", true);
        private const DFA7_accept:Array =
            DFA.unpackEncodedString("\x03\u80ff\xff\x01\x02\x0a\u80ff\xff"+
            "\x01\x01");
        private const DFA7_special:Array =
            DFA.unpackEncodedString("\x01\u80ff\xff\x01\x00\x01\x01\x0c"+
            "\u80ff\xff");
        private const DFA7_transition:Array = [
                DFA.unpackEncodedString("\x02\x03\x01\x01\x0a\u80ff\xff"+
                "\x01\x03\x2a\u80ff\xff\x02\x03\x03\u80ff\xff\x05\x03\x01"+
                "\x02\x02\u80ff\xff\x01\x03"),
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
                            if ( (synpred10_Expression()) ) {s = 14;}

                            else if ( (true) ) {s = 3;}

                             
                            input.seek(index7_1);
                            if ( s>=0 ) return s;
                            break;
                        case 1 : 
                            var LA7_2:int = input.LA(1);

                             
                            var index7_2:int = input.index;
                            input.rewind();
                            s = -1;
                            if ( (synpred10_Expression()) ) {s = 14;}

                            else if ( (true) ) {s = 3;}

                             
                            input.seek(index7_2);
                            if ( s>=0 ) return s;
                            break;
                }
                if (this.state.backtracking>0) {this.state.failed=true; return -1;}
                throw dfa.error(new NoViableAltException(dfa.description, 7, _s, input));
            }

        protected var dfa7:DFA;  // initialized in constructor

        private const DFA18_eot:Array =
            DFA.unpackEncodedString("\x31\u80ff\xff");
        private const DFA18_eof:Array =
            DFA.unpackEncodedString("\x01\x01\x30\u80ff\xff");
        private const DFA18_min:Array =
            DFA.unpackEncodedString("\x01\x10\x1d\u80ff\xff\x02\x00\x11"+
            "\u80ff\xff", true);
        private const DFA18_max:Array =
            DFA.unpackEncodedString("\x01\x57\x1d\u80ff\xff\x02\x00\x11"+
            "\u80ff\xff", true);
        private const DFA18_accept:Array =
            DFA.unpackEncodedString("\x01\u80ff\xff\x01\x03\x2d\u80ff\xff"+
            "\x01\x01\x01\x02");
        private const DFA18_special:Array =
            DFA.unpackEncodedString("\x1e\u80ff\xff\x01\x00\x01\x01\x11"+
            "\u80ff\xff");
        private const DFA18_transition:Array = [
                DFA.unpackEncodedString("\x03\x01\x09\u80ff\xff\x03\x01"+
                "\x01\u80ff\xff\x01\x01\x01\u80ff\xff\x02\x01\x0c\u80ff\xff"+
                "\x18\x01\x01\x1e\x01\x1f\x03\u80ff\xff\x07\x01\x01\u80ff\xff"+
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
            private function DFA18_specialStateTransition(dfa:DFA, s:int, _input:IntStream):int {
                var input:TokenStream = TokenStream(_input);
            	var _s:int = s;
                switch ( s ) {
                        case 0 : 
                            var LA18_30:int = input.LA(1);

                             
                            var index18_30:int = input.index;
                            input.rewind();
                            s = -1;
                            if ( (synpred45_Expression()) ) {s = 47;}

                            else if ( (true) ) {s = 1;}

                             
                            input.seek(index18_30);
                            if ( s>=0 ) return s;
                            break;
                        case 1 : 
                            var LA18_31:int = input.LA(1);

                             
                            var index18_31:int = input.index;
                            input.rewind();
                            s = -1;
                            if ( (synpred46_Expression()) ) {s = 48;}

                            else if ( (true) ) {s = 1;}

                             
                            input.seek(index18_31);
                            if ( s>=0 ) return s;
                            break;
                }
                if (this.state.backtracking>0) {this.state.failed=true; return -1;}
                throw dfa.error(new NoViableAltException(dfa.description, 18, _s, input));
            }

        protected var dfa18:DFA;  // initialized in constructor

        private const DFA24_eot:Array =
            DFA.unpackEncodedString("\x12\u80ff\xff");
        private const DFA24_eof:Array =
            DFA.unpackEncodedString("\x12\u80ff\xff");
        private const DFA24_min:Array =
            DFA.unpackEncodedString("\x01\x1d\x0e\u80ff\xff\x01\x00\x02"+
            "\u80ff\xff", true);
        private const DFA24_max:Array =
            DFA.unpackEncodedString("\x01\x54\x0e\u80ff\xff\x01\x00\x02"+
            "\u80ff\xff", true);
        private const DFA24_accept:Array =
            DFA.unpackEncodedString("\x01\u80ff\xff\x01\x05\x0b\u80ff\xff"+
            "\x01\x01\x01\x02\x01\u80ff\xff\x01\x03\x01\x04");
        private const DFA24_special:Array =
            DFA.unpackEncodedString("\x0f\u80ff\xff\x01\x00\x02\u80ff\xff");
        private const DFA24_transition:Array = [
                DFA.unpackEncodedString("\x01\x0f\x06\u80ff\xff\x0c\x01"+
                "\x22\u80ff\xff\x01\x0d\x01\u80ff\xff\x01\x0e"),
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
            private function DFA24_specialStateTransition(dfa:DFA, s:int, _input:IntStream):int {
                var input:TokenStream = TokenStream(_input);
            	var _s:int = s;
                switch ( s ) {
                        case 0 : 
                            var LA24_15:int = input.LA(1);

                             
                            var index24_15:int = input.index;
                            input.rewind();
                            s = -1;
                            if ( (synpred64_Expression()) ) {s = 16;}

                            else if ( (synpred66_Expression()) ) {s = 17;}

                             
                            input.seek(index24_15);
                            if ( s>=0 ) return s;
                            break;
                }
                if (this.state.backtracking>0) {this.state.failed=true; return -1;}
                throw dfa.error(new NoViableAltException(dfa.description, 24, _s, input));
            }

        protected var dfa24:DFA;  // initialized in constructor

        private const DFA25_eot:Array =
            DFA.unpackEncodedString("\x36\u80ff\xff");
        private const DFA25_eof:Array =
            DFA.unpackEncodedString("\x01\x01\x35\u80ff\xff");
        private const DFA25_min:Array =
            DFA.unpackEncodedString("\x01\x10\x21\u80ff\xff\x01\x00\x08"+
            "\u80ff\xff\x01\x00\x0a\u80ff\xff", true);
        private const DFA25_max:Array =
            DFA.unpackEncodedString("\x01\x57\x21\u80ff\xff\x01\x00\x08"+
            "\u80ff\xff\x01\x00\x0a\u80ff\xff", true);
        private const DFA25_accept:Array =
            DFA.unpackEncodedString("\x01\u80ff\xff\x01\x05\x30\u80ff\xff"+
            "\x01\x02\x01\x01\x01\x03\x01\x04");
        private const DFA25_special:Array =
            DFA.unpackEncodedString("\x22\u80ff\xff\x01\x00\x08\u80ff\xff"+
            "\x01\x01\x0a\u80ff\xff");
        private const DFA25_transition:Array = [
                DFA.unpackEncodedString("\x03\x01\x09\u80ff\xff\x01\x01"+
                "\x01\x2b\x01\x01\x01\u80ff\xff\x01\x01\x01\u80ff\xff\x02"+
                "\x01\x0c\u80ff\xff\x22\x01\x01\x22\x01\x01\x01\x32\x03\x01"),
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
            private function DFA25_specialStateTransition(dfa:DFA, s:int, _input:IntStream):int {
                var input:TokenStream = TokenStream(_input);
            	var _s:int = s;
                switch ( s ) {
                        case 0 : 
                            var LA25_34:int = input.LA(1);

                             
                            var index25_34:int = input.index;
                            input.rewind();
                            s = -1;
                            if ( (synpred67_Expression()) ) {s = 51;}

                            else if ( (true) ) {s = 1;}

                             
                            input.seek(index25_34);
                            if ( s>=0 ) return s;
                            break;
                        case 1 : 
                            var LA25_43:int = input.LA(1);

                             
                            var index25_43:int = input.index;
                            input.rewind();
                            s = -1;
                            if ( (synpred69_Expression()) ) {s = 52;}

                            else if ( (synpred70_Expression()) ) {s = 53;}

                            else if ( (true) ) {s = 1;}

                             
                            input.seek(index25_43);
                            if ( s>=0 ) return s;
                            break;
                }
                if (this.state.backtracking>0) {this.state.failed=true; return -1;}
                throw dfa.error(new NoViableAltException(dfa.description, 25, _s, input));
            }

        protected var dfa25:DFA;  // initialized in constructor
     

        public static const FOLLOW_stmtList_in_main128:BitSet = new BitSet([0x00000000, 0x00000000]);
        public static const FOLLOW_EOF_in_main131:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_EOF_in_main137:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_stmt_in_stmtList149:BitSet = new BitSet([0x30070002, 0x00000001, 0x00A7E300, 0x00000000]);
        public static const FOLLOW_stmt_in_stmtList158:BitSet = new BitSet([0x30070002, 0x00000001, 0x00A7E300, 0x00000000]);
        public static const FOLLOW_ifStmt_in_stmt190:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_whileStmt_in_stmt196:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_instrList_in_stmt202:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_28_in_ifStmt215:BitSet = new BitSet([0x20000000, 0x00000000]);
        public static const FOLLOW_29_in_ifStmt217:BitSet = new BitSet([0x20070000, 0x00000000, 0x0027E300, 0x00000000]);
        public static const FOLLOW_exp_in_ifStmt219:BitSet = new BitSet([0x40000000, 0x00000000]);
        public static const FOLLOW_30_in_ifStmt221:BitSet = new BitSet([0x00000000, 0x00000002]);
        public static const FOLLOW_block_in_ifStmt225:BitSet = new BitSet([0x80000000, 0x00000000]);
        public static const FOLLOW_31_in_ifStmt227:BitSet = new BitSet([0x00000000, 0x00000002]);
        public static const FOLLOW_block_in_ifStmt231:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_28_in_ifStmt250:BitSet = new BitSet([0x20000000, 0x00000000]);
        public static const FOLLOW_29_in_ifStmt252:BitSet = new BitSet([0x20070000, 0x00000000, 0x0027E300, 0x00000000]);
        public static const FOLLOW_exp_in_ifStmt254:BitSet = new BitSet([0x40000000, 0x00000000]);
        public static const FOLLOW_30_in_ifStmt256:BitSet = new BitSet([0x00000000, 0x00000002]);
        public static const FOLLOW_block_in_ifStmt258:BitSet = new BitSet([0x80000000, 0x00000000]);
        public static const FOLLOW_31_in_ifStmt260:BitSet = new BitSet([0x10000000, 0x00000000]);
        public static const FOLLOW_ifStmt_in_ifStmt262:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_28_in_ifStmt279:BitSet = new BitSet([0x20000000, 0x00000000]);
        public static const FOLLOW_29_in_ifStmt281:BitSet = new BitSet([0x20070000, 0x00000000, 0x0027E300, 0x00000000]);
        public static const FOLLOW_exp_in_ifStmt283:BitSet = new BitSet([0x40000000, 0x00000000]);
        public static const FOLLOW_30_in_ifStmt285:BitSet = new BitSet([0x00000000, 0x00000002]);
        public static const FOLLOW_block_in_ifStmt287:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_32_in_whileStmt311:BitSet = new BitSet([0x20000000, 0x00000000]);
        public static const FOLLOW_29_in_whileStmt313:BitSet = new BitSet([0x20070000, 0x00000000, 0x0027E300, 0x00000000]);
        public static const FOLLOW_exp_in_whileStmt315:BitSet = new BitSet([0x40000000, 0x00000000]);
        public static const FOLLOW_30_in_whileStmt317:BitSet = new BitSet([0x00000000, 0x00000002]);
        public static const FOLLOW_block_in_whileStmt319:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_33_in_block342:BitSet = new BitSet([0x30070000, 0x00000001, 0x00A7E300, 0x00000000]);
        public static const FOLLOW_stmtList_in_block344:BitSet = new BitSet([0x00000000, 0x00000004]);
        public static const FOLLOW_34_in_block346:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_instr_in_instrList365:BitSet = new BitSet([0x00000002, 0x00000008]);
        public static const FOLLOW_35_in_instrList374:BitSet = new BitSet([0x30070000, 0x00000001, 0x00A7E300, 0x00000000]);
        public static const FOLLOW_instr_in_instrList376:BitSet = new BitSet([0x00000002, 0x00000008]);
        public static const FOLLOW_35_in_instrList382:BitSet = new BitSet([0x00000002, 0x00000008]);
        public static const FOLLOW_exp_in_instr412:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_ret_in_instr417:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_assignExp_in_exp430:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_condExp_in_exp436:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_reference_in_assignExp449:BitSet = new BitSet([0x00000000, 0x0000FFF0]);
        public static const FOLLOW_36_in_assignExp458:BitSet = new BitSet([0x20070000, 0x00000000, 0x0027E300, 0x00000000]);
        public static const FOLLOW_exp_in_assignExp460:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_37_in_assignExp479:BitSet = new BitSet([0x20070000, 0x00000000, 0x0027E300, 0x00000000]);
        public static const FOLLOW_exp_in_assignExp481:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_38_in_assignExp499:BitSet = new BitSet([0x20070000, 0x00000000, 0x0027E300, 0x00000000]);
        public static const FOLLOW_exp_in_assignExp501:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_39_in_assignExp519:BitSet = new BitSet([0x20070000, 0x00000000, 0x0027E300, 0x00000000]);
        public static const FOLLOW_exp_in_assignExp521:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_40_in_assignExp539:BitSet = new BitSet([0x20070000, 0x00000000, 0x0027E300, 0x00000000]);
        public static const FOLLOW_exp_in_assignExp541:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_41_in_assignExp559:BitSet = new BitSet([0x20070000, 0x00000000, 0x0027E300, 0x00000000]);
        public static const FOLLOW_exp_in_assignExp561:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_42_in_assignExp579:BitSet = new BitSet([0x20070000, 0x00000000, 0x0027E300, 0x00000000]);
        public static const FOLLOW_exp_in_assignExp581:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_43_in_assignExp599:BitSet = new BitSet([0x20070000, 0x00000000, 0x0027E300, 0x00000000]);
        public static const FOLLOW_exp_in_assignExp601:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_44_in_assignExp619:BitSet = new BitSet([0x20070000, 0x00000000, 0x0027E300, 0x00000000]);
        public static const FOLLOW_exp_in_assignExp621:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_45_in_assignExp639:BitSet = new BitSet([0x20070000, 0x00000000, 0x0027E300, 0x00000000]);
        public static const FOLLOW_exp_in_assignExp641:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_46_in_assignExp659:BitSet = new BitSet([0x20070000, 0x00000000, 0x0027E300, 0x00000000]);
        public static const FOLLOW_exp_in_assignExp661:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_47_in_assignExp679:BitSet = new BitSet([0x20070000, 0x00000000, 0x0027E300, 0x00000000]);
        public static const FOLLOW_exp_in_assignExp681:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_logicalOr_in_condExp712:BitSet = new BitSet([0x00000002, 0x00010000]);
        public static const FOLLOW_48_in_condExp730:BitSet = new BitSet([0x20070000, 0x00000000, 0x0027E300, 0x00000000]);
        public static const FOLLOW_exp_in_condExp737:BitSet = new BitSet([0x00000000, 0x00020000]);
        public static const FOLLOW_49_in_condExp742:BitSet = new BitSet([0x20070000, 0x00000000, 0x0027E300, 0x00000000]);
        public static const FOLLOW_exp_in_condExp749:BitSet = new BitSet([0x00000002, 0x00010000]);
        public static const FOLLOW_logicalAnd_in_logicalOr783:BitSet = new BitSet([0x00000002, 0x000C0000]);
        public static const FOLLOW_50_in_logicalOr792:BitSet = new BitSet([0x20070000, 0x00000000, 0x0027E300, 0x00000000]);
        public static const FOLLOW_logicalAnd_in_logicalOr795:BitSet = new BitSet([0x00000002, 0x000C0000]);
        public static const FOLLOW_51_in_logicalOr801:BitSet = new BitSet([0x20070000, 0x00000000, 0x0027E300, 0x00000000]);
        public static const FOLLOW_logicalAnd_in_logicalOr804:BitSet = new BitSet([0x00000002, 0x000C0000]);
        public static const FOLLOW_bitwiseOr_in_logicalAnd821:BitSet = new BitSet([0x00000002, 0x00300000]);
        public static const FOLLOW_52_in_logicalAnd830:BitSet = new BitSet([0x20070000, 0x00000000, 0x0027E300, 0x00000000]);
        public static const FOLLOW_bitwiseOr_in_logicalAnd833:BitSet = new BitSet([0x00000002, 0x00300000]);
        public static const FOLLOW_53_in_logicalAnd839:BitSet = new BitSet([0x20070000, 0x00000000, 0x0027E300, 0x00000000]);
        public static const FOLLOW_bitwiseOr_in_logicalAnd842:BitSet = new BitSet([0x00000002, 0x00300000]);
        public static const FOLLOW_bitwiseXor_in_bitwiseOr858:BitSet = new BitSet([0x00000002, 0x00400000]);
        public static const FOLLOW_54_in_bitwiseOr867:BitSet = new BitSet([0x20070000, 0x00000000, 0x0027E300, 0x00000000]);
        public static const FOLLOW_bitwiseXor_in_bitwiseOr870:BitSet = new BitSet([0x00000002, 0x00400000]);
        public static const FOLLOW_bitwiseAnd_in_bitwiseXor886:BitSet = new BitSet([0x00000002, 0x00800000]);
        public static const FOLLOW_55_in_bitwiseXor895:BitSet = new BitSet([0x20070000, 0x00000000, 0x0027E300, 0x00000000]);
        public static const FOLLOW_bitwiseAnd_in_bitwiseXor898:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_equalExp_in_bitwiseAnd914:BitSet = new BitSet([0x00000002, 0x01000000]);
        public static const FOLLOW_56_in_bitwiseAnd923:BitSet = new BitSet([0x20070000, 0x00000000, 0x0027E300, 0x00000000]);
        public static const FOLLOW_equalExp_in_bitwiseAnd926:BitSet = new BitSet([0x00000002, 0x01000000]);
        public static const FOLLOW_relExp_in_equalExp942:BitSet = new BitSet([0x00000002, 0x1E000000]);
        public static const FOLLOW_57_in_equalExp951:BitSet = new BitSet([0x20070000, 0x00000000, 0x0027E300, 0x00000000]);
        public static const FOLLOW_relExp_in_equalExp954:BitSet = new BitSet([0x00000002, 0x1E000000]);
        public static const FOLLOW_58_in_equalExp960:BitSet = new BitSet([0x20070000, 0x00000000, 0x0027E300, 0x00000000]);
        public static const FOLLOW_relExp_in_equalExp963:BitSet = new BitSet([0x00000002, 0x1E000000]);
        public static const FOLLOW_59_in_equalExp969:BitSet = new BitSet([0x20070000, 0x00000000, 0x0027E300, 0x00000000]);
        public static const FOLLOW_relExp_in_equalExp972:BitSet = new BitSet([0x00000002, 0x1E000000]);
        public static const FOLLOW_60_in_equalExp978:BitSet = new BitSet([0x20070000, 0x00000000, 0x0027E300, 0x00000000]);
        public static const FOLLOW_relExp_in_equalExp981:BitSet = new BitSet([0x00000002, 0x1E000000]);
        public static const FOLLOW_shiftExp_in_relExp998:BitSet = new BitSet([0x00000002, 0xE0000000, 0x0000001F, 0x00000000]);
        public static const FOLLOW_61_in_relExp1007:BitSet = new BitSet([0x20070000, 0x00000000, 0x0027E300, 0x00000000]);
        public static const FOLLOW_shiftExp_in_relExp1010:BitSet = new BitSet([0x00000002, 0xE0000000, 0x0000001F, 0x00000000]);
        public static const FOLLOW_62_in_relExp1016:BitSet = new BitSet([0x20070000, 0x00000000, 0x0027E300, 0x00000000]);
        public static const FOLLOW_shiftExp_in_relExp1019:BitSet = new BitSet([0x00000002, 0xE0000000, 0x0000001F, 0x00000000]);
        public static const FOLLOW_63_in_relExp1025:BitSet = new BitSet([0x20070000, 0x00000000, 0x0027E300, 0x00000000]);
        public static const FOLLOW_shiftExp_in_relExp1028:BitSet = new BitSet([0x00000002, 0xE0000000, 0x0000001F, 0x00000000]);
        public static const FOLLOW_64_in_relExp1034:BitSet = new BitSet([0x20070000, 0x00000000, 0x0027E300, 0x00000000]);
        public static const FOLLOW_shiftExp_in_relExp1037:BitSet = new BitSet([0x00000002, 0xE0000000, 0x0000001F, 0x00000000]);
        public static const FOLLOW_65_in_relExp1043:BitSet = new BitSet([0x20070000, 0x00000000, 0x0027E300, 0x00000000]);
        public static const FOLLOW_shiftExp_in_relExp1046:BitSet = new BitSet([0x00000002, 0xE0000000, 0x0000001F, 0x00000000]);
        public static const FOLLOW_66_in_relExp1052:BitSet = new BitSet([0x20070000, 0x00000000, 0x0027E300, 0x00000000]);
        public static const FOLLOW_shiftExp_in_relExp1055:BitSet = new BitSet([0x00000002, 0xE0000000, 0x0000001F, 0x00000000]);
        public static const FOLLOW_67_in_relExp1061:BitSet = new BitSet([0x20070000, 0x00000000, 0x0027E300, 0x00000000]);
        public static const FOLLOW_shiftExp_in_relExp1064:BitSet = new BitSet([0x00000002, 0xE0000000, 0x0000001F, 0x00000000]);
        public static const FOLLOW_68_in_relExp1070:BitSet = new BitSet([0x20070000, 0x00000000, 0x0027E300, 0x00000000]);
        public static const FOLLOW_shiftExp_in_relExp1073:BitSet = new BitSet([0x00000002, 0xE0000000, 0x0000001F, 0x00000000]);
        public static const FOLLOW_addExp_in_shiftExp1089:BitSet = new BitSet([0x00000002, 0x00000000, 0x000000E0, 0x00000000]);
        public static const FOLLOW_69_in_shiftExp1098:BitSet = new BitSet([0x20070000, 0x00000000, 0x0027E300, 0x00000000]);
        public static const FOLLOW_addExp_in_shiftExp1101:BitSet = new BitSet([0x00000002, 0x00000000, 0x000000E0, 0x00000000]);
        public static const FOLLOW_70_in_shiftExp1107:BitSet = new BitSet([0x20070000, 0x00000000, 0x0027E300, 0x00000000]);
        public static const FOLLOW_addExp_in_shiftExp1110:BitSet = new BitSet([0x00000002, 0x00000000, 0x000000E0, 0x00000000]);
        public static const FOLLOW_71_in_shiftExp1116:BitSet = new BitSet([0x20070000, 0x00000000, 0x0027E300, 0x00000000]);
        public static const FOLLOW_addExp_in_shiftExp1119:BitSet = new BitSet([0x00000002, 0x00000000, 0x000000E0, 0x00000000]);
        public static const FOLLOW_multExp_in_addExp1135:BitSet = new BitSet([0x00000002, 0x00000000, 0x00000300, 0x00000000]);
        public static const FOLLOW_72_in_addExp1144:BitSet = new BitSet([0x20070000, 0x00000000, 0x0027E300, 0x00000000]);
        public static const FOLLOW_multExp_in_addExp1147:BitSet = new BitSet([0x00000002, 0x00000000, 0x00000300, 0x00000000]);
        public static const FOLLOW_73_in_addExp1153:BitSet = new BitSet([0x20070000, 0x00000000, 0x0027E300, 0x00000000]);
        public static const FOLLOW_multExp_in_addExp1156:BitSet = new BitSet([0x00000002, 0x00000000, 0x00000300, 0x00000000]);
        public static const FOLLOW_unaryExp_in_multExp1174:BitSet = new BitSet([0x00000002, 0x00000000, 0x00001C00, 0x00000000]);
        public static const FOLLOW_74_in_multExp1183:BitSet = new BitSet([0x20070000, 0x00000000, 0x0027E300, 0x00000000]);
        public static const FOLLOW_unaryExp_in_multExp1186:BitSet = new BitSet([0x00000002, 0x00000000, 0x00001C00, 0x00000000]);
        public static const FOLLOW_75_in_multExp1192:BitSet = new BitSet([0x20070000, 0x00000000, 0x0027E300, 0x00000000]);
        public static const FOLLOW_unaryExp_in_multExp1195:BitSet = new BitSet([0x00000002, 0x00000000, 0x00001C00, 0x00000000]);
        public static const FOLLOW_76_in_multExp1201:BitSet = new BitSet([0x20070000, 0x00000000, 0x0027E300, 0x00000000]);
        public static const FOLLOW_unaryExp_in_multExp1204:BitSet = new BitSet([0x00000002, 0x00000000, 0x00001C00, 0x00000000]);
        public static const FOLLOW_72_in_unaryExp1223:BitSet = new BitSet([0x20070000, 0x00000000, 0x0027E300, 0x00000000]);
        public static const FOLLOW_atom_in_unaryExp1226:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_73_in_unaryExp1231:BitSet = new BitSet([0x20070000, 0x00000000, 0x0027E300, 0x00000000]);
        public static const FOLLOW_atom_in_unaryExp1234:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_77_in_unaryExp1239:BitSet = new BitSet([0x20070000, 0x00000000, 0x0027E300, 0x00000000]);
        public static const FOLLOW_atom_in_unaryExp1242:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_78_in_unaryExp1247:BitSet = new BitSet([0x20070000, 0x00000000, 0x0027E300, 0x00000000]);
        public static const FOLLOW_atom_in_unaryExp1250:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_atom_in_unaryExp1256:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_NumberLiteral_in_atom1268:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_StringLiteral_in_atom1273:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_79_in_atom1278:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_80_in_atom1283:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_81_in_atom1288:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_referenceOrFuncCall_in_atom1293:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_funcDef_in_atom1298:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_29_in_atom1303:BitSet = new BitSet([0x20070000, 0x00000000, 0x0027E300, 0x00000000]);
        public static const FOLLOW_exp_in_atom1306:BitSet = new BitSet([0x40000000, 0x00000000]);
        public static const FOLLOW_30_in_atom1308:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_object_in_reference1323:BitSet = new BitSet([0x20000002, 0x00000000, 0x00140000, 0x00000000]);
        public static const FOLLOW_82_in_reference1342:BitSet = new BitSet([0x20070000, 0x00000000, 0x0027E300, 0x00000000]);
        public static const FOLLOW_exp_in_reference1346:BitSet = new BitSet([0x00000000, 0x00000000, 0x00080000, 0x00000000]);
        public static const FOLLOW_83_in_reference1348:BitSet = new BitSet([0x20000002, 0x00000000, 0x00140000, 0x00000000]);
        public static const FOLLOW_84_in_reference1372:BitSet = new BitSet([0x00040000, 0x00000000]);
        public static const FOLLOW_Identifier_in_reference1376:BitSet = new BitSet([0x20000002, 0x00000000, 0x00140000, 0x00000000]);
        public static const FOLLOW_29_in_reference1398:BitSet = new BitSet([0x60070000, 0x00000000, 0x0027E300, 0x00000000]);
        public static const FOLLOW_params_in_reference1402:BitSet = new BitSet([0x40000000, 0x00000000]);
        public static const FOLLOW_30_in_reference1405:BitSet = new BitSet([0x00000000, 0x00000000, 0x00040000, 0x00000000]);
        public static const FOLLOW_82_in_reference1410:BitSet = new BitSet([0x20070000, 0x00000000, 0x0027E300, 0x00000000]);
        public static const FOLLOW_exp_in_reference1414:BitSet = new BitSet([0x00000000, 0x00000000, 0x00080000, 0x00000000]);
        public static const FOLLOW_83_in_reference1416:BitSet = new BitSet([0x20000002, 0x00000000, 0x00140000, 0x00000000]);
        public static const FOLLOW_29_in_reference1447:BitSet = new BitSet([0x60070000, 0x00000000, 0x0027E300, 0x00000000]);
        public static const FOLLOW_params_in_reference1451:BitSet = new BitSet([0x40000000, 0x00000000]);
        public static const FOLLOW_30_in_reference1454:BitSet = new BitSet([0x00000000, 0x00000000, 0x00100000, 0x00000000]);
        public static const FOLLOW_84_in_reference1459:BitSet = new BitSet([0x00040000, 0x00000000]);
        public static const FOLLOW_Identifier_in_reference1463:BitSet = new BitSet([0x20000002, 0x00000000, 0x00140000, 0x00000000]);
        public static const FOLLOW_object_in_referenceOrFuncCall1503:BitSet = new BitSet([0x20000002, 0x00000000, 0x00140000, 0x00000000]);
        public static const FOLLOW_82_in_referenceOrFuncCall1522:BitSet = new BitSet([0x20070000, 0x00000000, 0x0027E300, 0x00000000]);
        public static const FOLLOW_exp_in_referenceOrFuncCall1526:BitSet = new BitSet([0x00000000, 0x00000000, 0x00080000, 0x00000000]);
        public static const FOLLOW_83_in_referenceOrFuncCall1528:BitSet = new BitSet([0x20000002, 0x00000000, 0x00140000, 0x00000000]);
        public static const FOLLOW_84_in_referenceOrFuncCall1548:BitSet = new BitSet([0x00040000, 0x00000000]);
        public static const FOLLOW_Identifier_in_referenceOrFuncCall1552:BitSet = new BitSet([0x20000002, 0x00000000, 0x00140000, 0x00000000]);
        public static const FOLLOW_29_in_referenceOrFuncCall1571:BitSet = new BitSet([0x20070000, 0x00000000, 0x0027E300, 0x00000000]);
        public static const FOLLOW_params_in_referenceOrFuncCall1575:BitSet = new BitSet([0x40000000, 0x00000000]);
        public static const FOLLOW_30_in_referenceOrFuncCall1577:BitSet = new BitSet([0x20000002, 0x00000000, 0x00140000, 0x00000000]);
        public static const FOLLOW_29_in_referenceOrFuncCall1596:BitSet = new BitSet([0x40000000, 0x00000000]);
        public static const FOLLOW_30_in_referenceOrFuncCall1598:BitSet = new BitSet([0x20000002, 0x00000000, 0x00140000, 0x00000000]);
        public static const FOLLOW_85_in_funcDef1627:BitSet = new BitSet([0x20000000, 0x00000000]);
        public static const FOLLOW_29_in_funcDef1636:BitSet = new BitSet([0x00040000, 0x00000000]);
        public static const FOLLOW_args_in_funcDef1640:BitSet = new BitSet([0x40000000, 0x00000000]);
        public static const FOLLOW_30_in_funcDef1642:BitSet = new BitSet([0x00000000, 0x00000002]);
        public static const FOLLOW_block_in_funcDef1646:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_29_in_funcDef1666:BitSet = new BitSet([0x40000000, 0x00000000]);
        public static const FOLLOW_30_in_funcDef1668:BitSet = new BitSet([0x00000000, 0x00000002]);
        public static const FOLLOW_block_in_funcDef1672:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_Identifier_in_args1699:BitSet = new BitSet([0x00000002, 0x00000000, 0x00400000, 0x00000000]);
        public static const FOLLOW_86_in_args1708:BitSet = new BitSet([0x00040000, 0x00000000]);
        public static const FOLLOW_Identifier_in_args1714:BitSet = new BitSet([0x00000002, 0x00000000, 0x00400000, 0x00000000]);
        public static const FOLLOW_Identifier_in_object1731:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_array_in_object1736:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_exp_in_params1748:BitSet = new BitSet([0x00000002, 0x00000000, 0x00400000, 0x00000000]);
        public static const FOLLOW_86_in_params1757:BitSet = new BitSet([0x20070000, 0x00000000, 0x0027E300, 0x00000000]);
        public static const FOLLOW_exp_in_params1763:BitSet = new BitSet([0x00000002, 0x00000000, 0x00400000, 0x00000000]);
        public static const FOLLOW_82_in_array1780:BitSet = new BitSet([0x20070000, 0x00000000, 0x0027E300, 0x00000000]);
        public static const FOLLOW_items_in_array1784:BitSet = new BitSet([0x00000000, 0x00000000, 0x00080000, 0x00000000]);
        public static const FOLLOW_83_in_array1786:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_82_in_array1802:BitSet = new BitSet([0x00000000, 0x00000000, 0x00080000, 0x00000000]);
        public static const FOLLOW_83_in_array1804:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_exp_in_items1826:BitSet = new BitSet([0x00000002, 0x00000000, 0x00400000, 0x00000000]);
        public static const FOLLOW_86_in_items1835:BitSet = new BitSet([0x20070000, 0x00000000, 0x0027E300, 0x00000000]);
        public static const FOLLOW_exp_in_items1841:BitSet = new BitSet([0x00000002, 0x00000000, 0x00400000, 0x00000000]);
        public static const FOLLOW_87_in_ret1859:BitSet = new BitSet([0x20070000, 0x00000000, 0x0027E300, 0x00000000]);
        public static const FOLLOW_exp_in_ret1863:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_87_in_ret1879:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_28_in_synpred5_Expression215:BitSet = new BitSet([0x20000000, 0x00000000]);
        public static const FOLLOW_29_in_synpred5_Expression217:BitSet = new BitSet([0x20070000, 0x00000000, 0x0027E300, 0x00000000]);
        public static const FOLLOW_exp_in_synpred5_Expression219:BitSet = new BitSet([0x40000000, 0x00000000]);
        public static const FOLLOW_30_in_synpred5_Expression221:BitSet = new BitSet([0x00000000, 0x00000002]);
        public static const FOLLOW_block_in_synpred5_Expression225:BitSet = new BitSet([0x80000000, 0x00000000]);
        public static const FOLLOW_31_in_synpred5_Expression227:BitSet = new BitSet([0x00000000, 0x00000002]);
        public static const FOLLOW_block_in_synpred5_Expression231:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_28_in_synpred6_Expression250:BitSet = new BitSet([0x20000000, 0x00000000]);
        public static const FOLLOW_29_in_synpred6_Expression252:BitSet = new BitSet([0x20070000, 0x00000000, 0x0027E300, 0x00000000]);
        public static const FOLLOW_exp_in_synpred6_Expression254:BitSet = new BitSet([0x40000000, 0x00000000]);
        public static const FOLLOW_30_in_synpred6_Expression256:BitSet = new BitSet([0x00000000, 0x00000002]);
        public static const FOLLOW_block_in_synpred6_Expression258:BitSet = new BitSet([0x80000000, 0x00000000]);
        public static const FOLLOW_31_in_synpred6_Expression260:BitSet = new BitSet([0x10000000, 0x00000000]);
        public static const FOLLOW_ifStmt_in_synpred6_Expression262:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_35_in_synpred7_Expression374:BitSet = new BitSet([0x30070000, 0x00000001, 0x00A7E300, 0x00000000]);
        public static const FOLLOW_instr_in_synpred7_Expression376:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_35_in_synpred8_Expression382:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_assignExp_in_synpred10_Expression430:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_48_in_synpred22_Expression730:BitSet = new BitSet([0x20070000, 0x00000000, 0x0027E300, 0x00000000]);
        public static const FOLLOW_exp_in_synpred22_Expression737:BitSet = new BitSet([0x00000000, 0x00020000]);
        public static const FOLLOW_49_in_synpred22_Expression742:BitSet = new BitSet([0x20070000, 0x00000000, 0x0027E300, 0x00000000]);
        public static const FOLLOW_exp_in_synpred22_Expression749:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_72_in_synpred45_Expression1144:BitSet = new BitSet([0x20070000, 0x00000000, 0x0027E300, 0x00000000]);
        public static const FOLLOW_multExp_in_synpred45_Expression1147:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_73_in_synpred46_Expression1153:BitSet = new BitSet([0x20070000, 0x00000000, 0x0027E300, 0x00000000]);
        public static const FOLLOW_multExp_in_synpred46_Expression1156:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_29_in_synpred64_Expression1398:BitSet = new BitSet([0x60070000, 0x00000000, 0x0027E300, 0x00000000]);
        public static const FOLLOW_params_in_synpred64_Expression1402:BitSet = new BitSet([0x40000000, 0x00000000]);
        public static const FOLLOW_30_in_synpred64_Expression1405:BitSet = new BitSet([0x00000000, 0x00000000, 0x00040000, 0x00000000]);
        public static const FOLLOW_82_in_synpred64_Expression1410:BitSet = new BitSet([0x20070000, 0x00000000, 0x0027E300, 0x00000000]);
        public static const FOLLOW_exp_in_synpred64_Expression1414:BitSet = new BitSet([0x00000000, 0x00000000, 0x00080000, 0x00000000]);
        public static const FOLLOW_83_in_synpred64_Expression1416:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_29_in_synpred66_Expression1447:BitSet = new BitSet([0x60070000, 0x00000000, 0x0027E300, 0x00000000]);
        public static const FOLLOW_params_in_synpred66_Expression1451:BitSet = new BitSet([0x40000000, 0x00000000]);
        public static const FOLLOW_30_in_synpred66_Expression1454:BitSet = new BitSet([0x00000000, 0x00000000, 0x00100000, 0x00000000]);
        public static const FOLLOW_84_in_synpred66_Expression1459:BitSet = new BitSet([0x00040000, 0x00000000]);
        public static const FOLLOW_Identifier_in_synpred66_Expression1463:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_82_in_synpred67_Expression1522:BitSet = new BitSet([0x20070000, 0x00000000, 0x0027E300, 0x00000000]);
        public static const FOLLOW_exp_in_synpred67_Expression1526:BitSet = new BitSet([0x00000000, 0x00000000, 0x00080000, 0x00000000]);
        public static const FOLLOW_83_in_synpred67_Expression1528:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_29_in_synpred69_Expression1571:BitSet = new BitSet([0x20070000, 0x00000000, 0x0027E300, 0x00000000]);
        public static const FOLLOW_params_in_synpred69_Expression1575:BitSet = new BitSet([0x40000000, 0x00000000]);
        public static const FOLLOW_30_in_synpred69_Expression1577:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_29_in_synpred70_Expression1596:BitSet = new BitSet([0x40000000, 0x00000000]);
        public static const FOLLOW_30_in_synpred70_Expression1598:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_87_in_synpred77_Expression1859:BitSet = new BitSet([0x20070000, 0x00000000, 0x0027E300, 0x00000000]);
        public static const FOLLOW_exp_in_synpred77_Expression1863:BitSet = new BitSet([0x00000002, 0x00000000]);

    }
}