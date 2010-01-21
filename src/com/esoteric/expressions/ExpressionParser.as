// $ANTLR 3.2 Sep 23, 2009 12:02:23 C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g 2010-01-21 16:39:34
package com.esoteric.expressions {
    import org.antlr.runtime.*;
        

    import org.antlr.runtime.tree.*;


    public class ExpressionParser extends Parser {
        public static const tokenNames:Array = [
            "<invalid>", "<EOR>", "<DOWN>", "<UP>", "StmtList", "ExpList", "FuncCall", "PropRef", "PropExp", "CondExp", "CreateArray", "IfStmt", "WhileStmt", "ForStmt", "FuncDef", "NumberLiteral", "StringLiteral", "Identifier", "LineComment", "MultilineComment", "Digit", "Exponent", "HexDigit", "EscapeSequence", "WhiteSpace", "Letter", "UnicodeEscapeChar", "'if'", "'('", "')'", "'else'", "'while'", "'{'", "'}'", "';'", "'='", "'*='", "'/='", "'%='", "'+='", "'-='", "'<<='", "'>>='", "'>>>='", "'&='", "'^='", "'|='", "'?'", "':'", "'||'", "'or'", "'&&'", "'and'", "'|'", "'^'", "'&'", "'=='", "'!='", "'==='", "'!=='", "'<'", "'lt'", "'>'", "'gt'", "'<='", "'lte'", "'>='", "'gte'", "'<<'", "'>>'", "'>>>'", "'+'", "'-'", "'*'", "'/'", "'%'", "'~'", "'!'", "'true'", "'false'", "'['", "']'", "'.'", "'function'", "','"
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
        public static const T__27:int=27;
        public static const T__62:int=62;
        public static const ExpList:int=5;
        public static const T__63:int=63;
        public static const Exponent:int=21;
        public static const LineComment:int=18;
        public static const T__61:int=61;
        public static const EOF:int=-1;
        public static const T__60:int=60;
        public static const HexDigit:int=22;
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
        public static const WhiteSpace:int=24;
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
        public static const UnicodeEscapeChar:int=26;
        public static const NumberLiteral:int=15;
        public static const T__48:int=48;
        public static const T__49:int=49;
        public static const Digit:int=20;
        public static const T__84:int=84;
        public static const StringLiteral:int=16;
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
        public static const MultilineComment:int=19;
        public static const T__75:int=75;
        public static const T__74:int=74;
        public static const Letter:int=25;
        public static const EscapeSequence:int=23;
        public static const T__73:int=73;
        public static const T__79:int=79;
        public static const T__78:int=78;
        public static const T__77:int=77;

        // delegates
        // delegators


            public function ExpressionParser(input:TokenStream, state:RecognizerSharedState = null) {
                super(input, state);

                dfa5 = new DFA(this, 5,
                            "()* loopback of 81:3: ( ';' exp | ';' )*",
                            DFA5_eot, DFA5_eof, DFA5_min,
                            DFA5_max, DFA5_accept, DFA5_special,
                            DFA5_transition, DFA5_specialStateTransition);

                dfa6 = new DFA(this, 6,
                            "87:1: exp : ( assignExp | condExp );",
                            DFA6_eot, DFA6_eof, DFA6_min,
                            DFA6_max, DFA6_accept, DFA6_special,
                            DFA6_transition, DFA6_specialStateTransition);

                dfa17 = new DFA(this, 17,
                            "()* loopback of 192:3: ( '+' multExp | '-' multExp )*",
                            DFA17_eot, DFA17_eof, DFA17_min,
                            DFA17_max, DFA17_accept, DFA17_special,
                            DFA17_transition, DFA17_specialStateTransition);

                dfa23 = new DFA(this, 23,
                            "()* loopback of 227:3: ( '[' e= exp ']' -> ^( PropExp $reference $e) | '.' i= Identifier -> ^( PropRef $reference $i) | '(' (p= params )? ')' '[' e= exp ']' -> ^( PropExp ^( FuncCall $reference $p) $e) | '(' (p= params )? ')' '.' i= Identifier -> ^( PropRef ^( FuncCall $reference $p) $i) )*",
                            DFA23_eot, DFA23_eof, DFA23_min,
                            DFA23_max, DFA23_accept, DFA23_special,
                            DFA23_transition, DFA23_specialStateTransition);

                dfa24 = new DFA(this, 24,
                            "()* loopback of 242:3: ( '[' e= exp ']' -> ^( PropExp $referenceOrFuncCall $e) | '.' i= Identifier -> ^( PropRef $referenceOrFuncCall $i) | '(' p= params ')' -> ^( FuncCall $referenceOrFuncCall $p) | '(' ')' -> ^( FuncCall $referenceOrFuncCall) )*",
                            DFA24_eot, DFA24_eof, DFA24_min,
                            DFA24_max, DFA24_accept, DFA24_special,
                            DFA24_transition, DFA24_specialStateTransition);

                this.state.ruleMemo = new Array(104+1);
                 
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
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:47:1: main : ( stmtList EOF | EOF );
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
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:48:2: ( stmtList EOF | EOF )
                var alt1:int=2;
                var LA1_0:int = input.LA(1);

                if ( ((LA1_0>=15 && LA1_0<=17)||(LA1_0>=27 && LA1_0<=28)||LA1_0==31||(LA1_0>=71 && LA1_0<=72)||(LA1_0>=76 && LA1_0<=80)||LA1_0==83) ) {
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
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:48:4: stmtList EOF
                        {
                        root_0 = CommonTree(adaptor.nil());

                        pushFollow(FOLLOW_stmtList_in_main124);
                        stmtList1=stmtList();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) root_0 = CommonTree(adaptor.becomeRoot(stmtList1.tree, root_0));
                        EOF2=Token(matchStream(input,EOF,FOLLOW_EOF_in_main127)); if (this.state.failed) return retval;

                        }
                        break;
                    case 2 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:49:4: EOF
                        {
                        root_0 = CommonTree(adaptor.nil());

                        EOF3=Token(matchStream(input,EOF,FOLLOW_EOF_in_main133)); if (this.state.failed) return retval;
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
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:52:1: stmtList : stmt ( stmt )* -> ^( StmtList ( stmt )+ ) ;
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
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:53:2: ( stmt ( stmt )* -> ^( StmtList ( stmt )+ ) )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:53:4: stmt ( stmt )*
                {
                pushFollow(FOLLOW_stmt_in_stmtList145);
                stmt4=stmt();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) stream_stmt.add(stmt4.tree);
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:54:3: ( stmt )*
                loop2:
                do {
                    var alt2:int=2;
                    var LA2_0:int = input.LA(1);

                    if ( ((LA2_0>=15 && LA2_0<=17)||(LA2_0>=27 && LA2_0<=28)||LA2_0==31||(LA2_0>=71 && LA2_0<=72)||(LA2_0>=76 && LA2_0<=80)||LA2_0==83) ) {
                        alt2=1;
                    }


                    switch (alt2) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:55:4: stmt
                	    {
                	    pushFollow(FOLLOW_stmt_in_stmtList154);
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
                // 56:10: -> ^( StmtList ( stmt )+ )
                {
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:56:13: ^( StmtList ( stmt )+ )
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
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:59:1: stmt : ( ifStmt | whileStmt | expList );
        public final function stmt():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var stmt_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var ifStmt6:ParserRuleReturnScope = null;

            var whileStmt7:ParserRuleReturnScope = null;

            var expList8:ParserRuleReturnScope = null;



            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 3) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:60:2: ( ifStmt | whileStmt | expList )
                var alt3:int=3;
                switch ( input.LA(1) ) {
                case 27:
                    {
                    alt3=1;
                    }
                    break;
                case 31:
                    {
                    alt3=2;
                    }
                    break;
                case NumberLiteral:
                case StringLiteral:
                case Identifier:
                case 28:
                case 71:
                case 72:
                case 76:
                case 77:
                case 78:
                case 79:
                case 80:
                case 83:
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
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:60:4: ifStmt
                        {
                        root_0 = CommonTree(adaptor.nil());

                        pushFollow(FOLLOW_ifStmt_in_stmt186);
                        ifStmt6=ifStmt();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) root_0 = CommonTree(adaptor.becomeRoot(ifStmt6.tree, root_0));

                        }
                        break;
                    case 2 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:61:4: whileStmt
                        {
                        root_0 = CommonTree(adaptor.nil());

                        pushFollow(FOLLOW_whileStmt_in_stmt192);
                        whileStmt7=whileStmt();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) root_0 = CommonTree(adaptor.becomeRoot(whileStmt7.tree, root_0));

                        }
                        break;
                    case 3 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:62:4: expList
                        {
                        root_0 = CommonTree(adaptor.nil());

                        pushFollow(FOLLOW_expList_in_stmt198);
                        expList8=expList();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) root_0 = CommonTree(adaptor.becomeRoot(expList8.tree, root_0));

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
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:65:1: ifStmt : ( 'if' '(' exp ')' l= block 'else' r= block -> ^( IfStmt exp $l $r) | 'if' '(' exp ')' block 'else' ifStmt -> ^( IfStmt exp block ifStmt ) | 'if' '(' exp ')' block -> ^( IfStmt exp block ) );
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
            var stream_27:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 27");
            var stream_28:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 28");
            var stream_29:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 29");
            var stream_exp:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule exp");
            var stream_block:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule block");
            var stream_ifStmt:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule ifStmt");
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 4) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:66:2: ( 'if' '(' exp ')' l= block 'else' r= block -> ^( IfStmt exp $l $r) | 'if' '(' exp ')' block 'else' ifStmt -> ^( IfStmt exp block ifStmt ) | 'if' '(' exp ')' block -> ^( IfStmt exp block ) )
                var alt4:int=3;
                var LA4_0:int = input.LA(1);

                if ( (LA4_0==27) ) {
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
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:66:4: 'if' '(' exp ')' l= block 'else' r= block
                        {
                        string_literal9=Token(matchStream(input,27,FOLLOW_27_in_ifStmt211)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_27.add(string_literal9);

                        char_literal10=Token(matchStream(input,28,FOLLOW_28_in_ifStmt213)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_28.add(char_literal10);

                        pushFollow(FOLLOW_exp_in_ifStmt215);
                        exp11=exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_exp.add(exp11.tree);
                        char_literal12=Token(matchStream(input,29,FOLLOW_29_in_ifStmt217)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_29.add(char_literal12);

                        pushFollow(FOLLOW_block_in_ifStmt221);
                        l=block();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_block.add(l.tree);
                        string_literal13=Token(matchStream(input,30,FOLLOW_30_in_ifStmt223)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_30.add(string_literal13);

                        pushFollow(FOLLOW_block_in_ifStmt227);
                        r=block();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_block.add(r.tree);


                        // AST REWRITE
                        // elements: r, exp, l
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
                        // 66:44: -> ^( IfStmt exp $l $r)
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:66:47: ^( IfStmt exp $l $r)
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
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:67:4: 'if' '(' exp ')' block 'else' ifStmt
                        {
                        string_literal14=Token(matchStream(input,27,FOLLOW_27_in_ifStmt246)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_27.add(string_literal14);

                        char_literal15=Token(matchStream(input,28,FOLLOW_28_in_ifStmt248)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_28.add(char_literal15);

                        pushFollow(FOLLOW_exp_in_ifStmt250);
                        exp16=exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_exp.add(exp16.tree);
                        char_literal17=Token(matchStream(input,29,FOLLOW_29_in_ifStmt252)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_29.add(char_literal17);

                        pushFollow(FOLLOW_block_in_ifStmt254);
                        block18=block();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_block.add(block18.tree);
                        string_literal19=Token(matchStream(input,30,FOLLOW_30_in_ifStmt256)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_30.add(string_literal19);

                        pushFollow(FOLLOW_ifStmt_in_ifStmt258);
                        ifStmt20=ifStmt();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_ifStmt.add(ifStmt20.tree);


                        // AST REWRITE
                        // elements: block, ifStmt, exp
                        // token labels: 
                        // rule labels: retval
                        // token list labels: 
                        // rule list labels: 
                        if ( this.state.backtracking==0 ) {
                        retval.tree = root_0;
                        var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                        root_0 = CommonTree(adaptor.nil());
                        // 67:41: -> ^( IfStmt exp block ifStmt )
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:67:44: ^( IfStmt exp block ifStmt )
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
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:68:4: 'if' '(' exp ')' block
                        {
                        string_literal21=Token(matchStream(input,27,FOLLOW_27_in_ifStmt275)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_27.add(string_literal21);

                        char_literal22=Token(matchStream(input,28,FOLLOW_28_in_ifStmt277)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_28.add(char_literal22);

                        pushFollow(FOLLOW_exp_in_ifStmt279);
                        exp23=exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_exp.add(exp23.tree);
                        char_literal24=Token(matchStream(input,29,FOLLOW_29_in_ifStmt281)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_29.add(char_literal24);

                        pushFollow(FOLLOW_block_in_ifStmt283);
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
                        // 68:29: -> ^( IfStmt exp block )
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:68:32: ^( IfStmt exp block )
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
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:71:1: whileStmt : 'while' '(' exp ')' block -> ^( WhileStmt exp block ) ;
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
            var stream_31:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 31");
            var stream_28:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 28");
            var stream_29:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 29");
            var stream_exp:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule exp");
            var stream_block:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule block");
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 5) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:72:2: ( 'while' '(' exp ')' block -> ^( WhileStmt exp block ) )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:72:4: 'while' '(' exp ')' block
                {
                string_literal26=Token(matchStream(input,31,FOLLOW_31_in_whileStmt307)); if (this.state.failed) return retval; 
                if ( this.state.backtracking==0 ) stream_31.add(string_literal26);

                char_literal27=Token(matchStream(input,28,FOLLOW_28_in_whileStmt309)); if (this.state.failed) return retval; 
                if ( this.state.backtracking==0 ) stream_28.add(char_literal27);

                pushFollow(FOLLOW_exp_in_whileStmt311);
                exp28=exp();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) stream_exp.add(exp28.tree);
                char_literal29=Token(matchStream(input,29,FOLLOW_29_in_whileStmt313)); if (this.state.failed) return retval; 
                if ( this.state.backtracking==0 ) stream_29.add(char_literal29);

                pushFollow(FOLLOW_block_in_whileStmt315);
                block30=block();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) stream_block.add(block30.tree);


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
                // 72:31: -> ^( WhileStmt exp block )
                {
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:72:34: ^( WhileStmt exp block )
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
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:75:1: block : '{' stmtList '}' -> ^( stmtList ) ;
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
            var stream_32:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 32");
            var stream_33:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 33");
            var stream_stmtList:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule stmtList");
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 6) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:76:2: ( '{' stmtList '}' -> ^( stmtList ) )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:76:4: '{' stmtList '}'
                {
                char_literal31=Token(matchStream(input,32,FOLLOW_32_in_block338)); if (this.state.failed) return retval; 
                if ( this.state.backtracking==0 ) stream_32.add(char_literal31);

                pushFollow(FOLLOW_stmtList_in_block340);
                stmtList32=stmtList();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) stream_stmtList.add(stmtList32.tree);
                char_literal33=Token(matchStream(input,33,FOLLOW_33_in_block342)); if (this.state.failed) return retval; 
                if ( this.state.backtracking==0 ) stream_33.add(char_literal33);



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
                // 76:23: -> ^( stmtList )
                {
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:76:26: ^( stmtList )
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

        // $ANTLR start expList
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:79:1: expList : exp ( ';' exp | ';' )* -> ^( ExpList ( exp )+ ) ;
        public final function expList():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var expList_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var char_literal35:Token=null;
            var char_literal37:Token=null;
            var exp34:ParserRuleReturnScope = null;

            var exp36:ParserRuleReturnScope = null;


            var char_literal35_tree:CommonTree=null;
            var char_literal37_tree:CommonTree=null;
            var stream_34:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 34");
            var stream_exp:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule exp");
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 7) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:80:2: ( exp ( ';' exp | ';' )* -> ^( ExpList ( exp )+ ) )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:80:4: exp ( ';' exp | ';' )*
                {
                pushFollow(FOLLOW_exp_in_expList361);
                exp34=exp();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) stream_exp.add(exp34.tree);
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:81:3: ( ';' exp | ';' )*
                loop5:
                do {
                    var alt5:int=3;
                    alt5 = dfa5.predict(input);
                    switch (alt5) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:82:4: ';' exp
                	    {
                	    char_literal35=Token(matchStream(input,34,FOLLOW_34_in_expList370)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_34.add(char_literal35);

                	    pushFollow(FOLLOW_exp_in_expList372);
                	    exp36=exp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) stream_exp.add(exp36.tree);

                	    }
                	    break;
                	case 2 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:83:5: ';'
                	    {
                	    char_literal37=Token(matchStream(input,34,FOLLOW_34_in_expList378)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_34.add(char_literal37);


                	    }
                	    break;

                	default :
                	    break loop5;
                    }
                } while (true);



                // AST REWRITE
                // elements: exp
                // token labels: 
                // rule labels: retval
                // token list labels: 
                // rule list labels: 
                if ( this.state.backtracking==0 ) {
                retval.tree = root_0;
                var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                root_0 = CommonTree(adaptor.nil());
                // 84:10: -> ^( ExpList ( exp )+ )
                {
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:84:13: ^( ExpList ( exp )+ )
                    {
                    var root_1:CommonTree = CommonTree(adaptor.nil());
                    root_1 = CommonTree(adaptor.becomeRoot(CommonTree(adaptor.create(ExpList, "ExpList")), root_1));

                    if ( !(stream_exp.hasNext) ) {
                        throw new RewriteEarlyExitException();
                    }
                    while ( stream_exp.hasNext ) {
                        adaptor.addChild(root_1, stream_exp.nextTree());

                    }
                    stream_exp.reset();

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
                if ( this.state.backtracking>0 ) { memoize(input, 7, expList_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end expList

        // $ANTLR start exp
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:87:1: exp : ( assignExp | condExp );
        public final function exp():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var exp_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var assignExp38:ParserRuleReturnScope = null;

            var condExp39:ParserRuleReturnScope = null;



            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 8) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:88:2: ( assignExp | condExp )
                var alt6:int=2;
                alt6 = dfa6.predict(input);
                switch (alt6) {
                    case 1 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:88:4: assignExp
                        {
                        root_0 = CommonTree(adaptor.nil());

                        pushFollow(FOLLOW_assignExp_in_exp408);
                        assignExp38=assignExp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) root_0 = CommonTree(adaptor.becomeRoot(assignExp38.tree, root_0));

                        }
                        break;
                    case 2 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:89:4: condExp
                        {
                        root_0 = CommonTree(adaptor.nil());

                        pushFollow(FOLLOW_condExp_in_exp414);
                        condExp39=condExp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) root_0 = CommonTree(adaptor.becomeRoot(condExp39.tree, root_0));

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
                if ( this.state.backtracking>0 ) { memoize(input, 8, exp_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end exp

        // $ANTLR start assignExp
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:92:1: assignExp : reference ( '=' exp -> ^( '=' exp reference ) | '*=' exp -> ^( '*=' exp reference ) | '/=' exp -> ^( '/=' exp reference ) | '%=' exp -> ^( '%=' exp reference ) | '+=' exp -> ^( '+=' exp reference ) | '-=' exp -> ^( '-=' exp reference ) | '<<=' exp -> ^( '<<=' exp reference ) | '>>=' exp -> ^( '>>=' exp reference ) | '>>>=' exp -> ^( '>>>=' exp reference ) | '&=' exp -> ^( '&=' exp reference ) | '^=' exp -> ^( '^=' exp reference ) | '|=' exp -> ^( '|=' exp reference ) ) ;
        public final function assignExp():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var assignExp_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var char_literal41:Token=null;
            var string_literal43:Token=null;
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
            var reference40:ParserRuleReturnScope = null;

            var exp42:ParserRuleReturnScope = null;

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


            var char_literal41_tree:CommonTree=null;
            var string_literal43_tree:CommonTree=null;
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
            var stream_43:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 43");
            var stream_45:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 45");
            var stream_42:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 42");
            var stream_44:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 44");
            var stream_41:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 41");
            var stream_40:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 40");
            var stream_46:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 46");
            var stream_35:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 35");
            var stream_36:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 36");
            var stream_39:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 39");
            var stream_37:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 37");
            var stream_38:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 38");
            var stream_exp:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule exp");
            var stream_reference:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule reference");
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 9) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:93:2: ( reference ( '=' exp -> ^( '=' exp reference ) | '*=' exp -> ^( '*=' exp reference ) | '/=' exp -> ^( '/=' exp reference ) | '%=' exp -> ^( '%=' exp reference ) | '+=' exp -> ^( '+=' exp reference ) | '-=' exp -> ^( '-=' exp reference ) | '<<=' exp -> ^( '<<=' exp reference ) | '>>=' exp -> ^( '>>=' exp reference ) | '>>>=' exp -> ^( '>>>=' exp reference ) | '&=' exp -> ^( '&=' exp reference ) | '^=' exp -> ^( '^=' exp reference ) | '|=' exp -> ^( '|=' exp reference ) ) )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:93:4: reference ( '=' exp -> ^( '=' exp reference ) | '*=' exp -> ^( '*=' exp reference ) | '/=' exp -> ^( '/=' exp reference ) | '%=' exp -> ^( '%=' exp reference ) | '+=' exp -> ^( '+=' exp reference ) | '-=' exp -> ^( '-=' exp reference ) | '<<=' exp -> ^( '<<=' exp reference ) | '>>=' exp -> ^( '>>=' exp reference ) | '>>>=' exp -> ^( '>>>=' exp reference ) | '&=' exp -> ^( '&=' exp reference ) | '^=' exp -> ^( '^=' exp reference ) | '|=' exp -> ^( '|=' exp reference ) )
                {
                pushFollow(FOLLOW_reference_in_assignExp427);
                reference40=reference();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) stream_reference.add(reference40.tree);
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:94:3: ( '=' exp -> ^( '=' exp reference ) | '*=' exp -> ^( '*=' exp reference ) | '/=' exp -> ^( '/=' exp reference ) | '%=' exp -> ^( '%=' exp reference ) | '+=' exp -> ^( '+=' exp reference ) | '-=' exp -> ^( '-=' exp reference ) | '<<=' exp -> ^( '<<=' exp reference ) | '>>=' exp -> ^( '>>=' exp reference ) | '>>>=' exp -> ^( '>>>=' exp reference ) | '&=' exp -> ^( '&=' exp reference ) | '^=' exp -> ^( '^=' exp reference ) | '|=' exp -> ^( '|=' exp reference ) )
                var alt7:int=12;
                switch ( input.LA(1) ) {
                case 35:
                    {
                    alt7=1;
                    }
                    break;
                case 36:
                    {
                    alt7=2;
                    }
                    break;
                case 37:
                    {
                    alt7=3;
                    }
                    break;
                case 38:
                    {
                    alt7=4;
                    }
                    break;
                case 39:
                    {
                    alt7=5;
                    }
                    break;
                case 40:
                    {
                    alt7=6;
                    }
                    break;
                case 41:
                    {
                    alt7=7;
                    }
                    break;
                case 42:
                    {
                    alt7=8;
                    }
                    break;
                case 43:
                    {
                    alt7=9;
                    }
                    break;
                case 44:
                    {
                    alt7=10;
                    }
                    break;
                case 45:
                    {
                    alt7=11;
                    }
                    break;
                case 46:
                    {
                    alt7=12;
                    }
                    break;
                default:
                    if (this.state.backtracking>0) {this.state.failed=true; return retval;}
                    throw new NoViableAltException("", 7, 0, input);

                }

                switch (alt7) {
                    case 1 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:95:4: '=' exp
                        {
                        char_literal41=Token(matchStream(input,35,FOLLOW_35_in_assignExp436)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_35.add(char_literal41);

                        pushFollow(FOLLOW_exp_in_assignExp438);
                        exp42=exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_exp.add(exp42.tree);


                        // AST REWRITE
                        // elements: reference, exp, 35
                        // token labels: 
                        // rule labels: retval
                        // token list labels: 
                        // rule list labels: 
                        if ( this.state.backtracking==0 ) {
                        retval.tree = root_0;
                        var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                        root_0 = CommonTree(adaptor.nil());
                        // 95:15: -> ^( '=' exp reference )
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:95:18: ^( '=' exp reference )
                            {
                            var root_1:CommonTree = CommonTree(adaptor.nil());
                            root_1 = CommonTree(adaptor.becomeRoot(stream_35.nextNode(), root_1));

                            adaptor.addChild(root_1, stream_exp.nextTree());
                            adaptor.addChild(root_1, stream_reference.nextTree());

                            adaptor.addChild(root_0, root_1);
                            }

                        }

                        retval.tree = root_0;}
                        }
                        break;
                    case 2 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:96:5: '*=' exp
                        {
                        string_literal43=Token(matchStream(input,36,FOLLOW_36_in_assignExp457)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_36.add(string_literal43);

                        pushFollow(FOLLOW_exp_in_assignExp459);
                        exp44=exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_exp.add(exp44.tree);


                        // AST REWRITE
                        // elements: reference, exp, 36
                        // token labels: 
                        // rule labels: retval
                        // token list labels: 
                        // rule list labels: 
                        if ( this.state.backtracking==0 ) {
                        retval.tree = root_0;
                        var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                        root_0 = CommonTree(adaptor.nil());
                        // 96:16: -> ^( '*=' exp reference )
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:96:19: ^( '*=' exp reference )
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
                    case 3 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:97:5: '/=' exp
                        {
                        string_literal45=Token(matchStream(input,37,FOLLOW_37_in_assignExp477)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_37.add(string_literal45);

                        pushFollow(FOLLOW_exp_in_assignExp479);
                        exp46=exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_exp.add(exp46.tree);


                        // AST REWRITE
                        // elements: reference, exp, 37
                        // token labels: 
                        // rule labels: retval
                        // token list labels: 
                        // rule list labels: 
                        if ( this.state.backtracking==0 ) {
                        retval.tree = root_0;
                        var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                        root_0 = CommonTree(adaptor.nil());
                        // 97:16: -> ^( '/=' exp reference )
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:97:19: ^( '/=' exp reference )
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
                    case 4 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:98:5: '%=' exp
                        {
                        string_literal47=Token(matchStream(input,38,FOLLOW_38_in_assignExp497)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_38.add(string_literal47);

                        pushFollow(FOLLOW_exp_in_assignExp499);
                        exp48=exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_exp.add(exp48.tree);


                        // AST REWRITE
                        // elements: reference, exp, 38
                        // token labels: 
                        // rule labels: retval
                        // token list labels: 
                        // rule list labels: 
                        if ( this.state.backtracking==0 ) {
                        retval.tree = root_0;
                        var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                        root_0 = CommonTree(adaptor.nil());
                        // 98:16: -> ^( '%=' exp reference )
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:98:19: ^( '%=' exp reference )
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
                    case 5 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:99:5: '+=' exp
                        {
                        string_literal49=Token(matchStream(input,39,FOLLOW_39_in_assignExp517)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_39.add(string_literal49);

                        pushFollow(FOLLOW_exp_in_assignExp519);
                        exp50=exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_exp.add(exp50.tree);


                        // AST REWRITE
                        // elements: reference, 39, exp
                        // token labels: 
                        // rule labels: retval
                        // token list labels: 
                        // rule list labels: 
                        if ( this.state.backtracking==0 ) {
                        retval.tree = root_0;
                        var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                        root_0 = CommonTree(adaptor.nil());
                        // 99:16: -> ^( '+=' exp reference )
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:99:19: ^( '+=' exp reference )
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
                    case 6 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:100:5: '-=' exp
                        {
                        string_literal51=Token(matchStream(input,40,FOLLOW_40_in_assignExp537)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_40.add(string_literal51);

                        pushFollow(FOLLOW_exp_in_assignExp539);
                        exp52=exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_exp.add(exp52.tree);


                        // AST REWRITE
                        // elements: 40, exp, reference
                        // token labels: 
                        // rule labels: retval
                        // token list labels: 
                        // rule list labels: 
                        if ( this.state.backtracking==0 ) {
                        retval.tree = root_0;
                        var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                        root_0 = CommonTree(adaptor.nil());
                        // 100:16: -> ^( '-=' exp reference )
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:100:19: ^( '-=' exp reference )
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
                    case 7 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:101:5: '<<=' exp
                        {
                        string_literal53=Token(matchStream(input,41,FOLLOW_41_in_assignExp557)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_41.add(string_literal53);

                        pushFollow(FOLLOW_exp_in_assignExp559);
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
                        // 101:17: -> ^( '<<=' exp reference )
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:101:20: ^( '<<=' exp reference )
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
                    case 8 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:102:5: '>>=' exp
                        {
                        string_literal55=Token(matchStream(input,42,FOLLOW_42_in_assignExp577)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_42.add(string_literal55);

                        pushFollow(FOLLOW_exp_in_assignExp579);
                        exp56=exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_exp.add(exp56.tree);


                        // AST REWRITE
                        // elements: 42, reference, exp
                        // token labels: 
                        // rule labels: retval
                        // token list labels: 
                        // rule list labels: 
                        if ( this.state.backtracking==0 ) {
                        retval.tree = root_0;
                        var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                        root_0 = CommonTree(adaptor.nil());
                        // 102:17: -> ^( '>>=' exp reference )
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:102:20: ^( '>>=' exp reference )
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
                    case 9 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:103:5: '>>>=' exp
                        {
                        string_literal57=Token(matchStream(input,43,FOLLOW_43_in_assignExp597)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_43.add(string_literal57);

                        pushFollow(FOLLOW_exp_in_assignExp599);
                        exp58=exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_exp.add(exp58.tree);


                        // AST REWRITE
                        // elements: reference, 43, exp
                        // token labels: 
                        // rule labels: retval
                        // token list labels: 
                        // rule list labels: 
                        if ( this.state.backtracking==0 ) {
                        retval.tree = root_0;
                        var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                        root_0 = CommonTree(adaptor.nil());
                        // 103:18: -> ^( '>>>=' exp reference )
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:103:21: ^( '>>>=' exp reference )
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
                    case 10 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:104:5: '&=' exp
                        {
                        string_literal59=Token(matchStream(input,44,FOLLOW_44_in_assignExp617)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_44.add(string_literal59);

                        pushFollow(FOLLOW_exp_in_assignExp619);
                        exp60=exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_exp.add(exp60.tree);


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
                        // 104:16: -> ^( '&=' exp reference )
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:104:19: ^( '&=' exp reference )
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
                    case 11 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:105:5: '^=' exp
                        {
                        string_literal61=Token(matchStream(input,45,FOLLOW_45_in_assignExp637)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_45.add(string_literal61);

                        pushFollow(FOLLOW_exp_in_assignExp639);
                        exp62=exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_exp.add(exp62.tree);


                        // AST REWRITE
                        // elements: 45, exp, reference
                        // token labels: 
                        // rule labels: retval
                        // token list labels: 
                        // rule list labels: 
                        if ( this.state.backtracking==0 ) {
                        retval.tree = root_0;
                        var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                        root_0 = CommonTree(adaptor.nil());
                        // 105:16: -> ^( '^=' exp reference )
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:105:19: ^( '^=' exp reference )
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
                    case 12 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:106:5: '|=' exp
                        {
                        string_literal63=Token(matchStream(input,46,FOLLOW_46_in_assignExp657)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_46.add(string_literal63);

                        pushFollow(FOLLOW_exp_in_assignExp659);
                        exp64=exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_exp.add(exp64.tree);


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
                        // 106:16: -> ^( '|=' exp reference )
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:106:19: ^( '|=' exp reference )
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
                if ( this.state.backtracking>0 ) { memoize(input, 9, assignExp_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end assignExp

        // $ANTLR start condExp
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:110:1: condExp : (l= logicalOr -> $l) ( '?' e1= exp ':' e2= exp -> ^( CondExp $condExp $e1 $e2) )* ;
        public final function condExp():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var condExp_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var char_literal65:Token=null;
            var char_literal66:Token=null;
            var l:ParserRuleReturnScope = null;

            var e1:ParserRuleReturnScope = null;

            var e2:ParserRuleReturnScope = null;


            var char_literal65_tree:CommonTree=null;
            var char_literal66_tree:CommonTree=null;
            var stream_48:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 48");
            var stream_47:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 47");
            var stream_exp:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule exp");
            var stream_logicalOr:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule logicalOr");
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 10) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:111:2: ( (l= logicalOr -> $l) ( '?' e1= exp ':' e2= exp -> ^( CondExp $condExp $e1 $e2) )* )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:111:4: (l= logicalOr -> $l) ( '?' e1= exp ':' e2= exp -> ^( CondExp $condExp $e1 $e2) )*
                {
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:111:4: (l= logicalOr -> $l)
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:111:5: l= logicalOr
                {
                pushFollow(FOLLOW_logicalOr_in_condExp690);
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
                // 111:20: -> $l
                {
                    adaptor.addChild(root_0, stream_l.nextTree());

                }

                retval.tree = root_0;}
                }

                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:112:3: ( '?' e1= exp ':' e2= exp -> ^( CondExp $condExp $e1 $e2) )*
                loop8:
                do {
                    var alt8:int=2;
                    var LA8_0:int = input.LA(1);

                    if ( (LA8_0==47) ) {
                        var LA8_2:int = input.LA(2);

                        if ( (synpred21_Expression()) ) {
                            alt8=1;
                        }


                    }


                    switch (alt8) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:113:4: '?' e1= exp ':' e2= exp
                	    {
                	    char_literal65=Token(matchStream(input,47,FOLLOW_47_in_condExp708)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_47.add(char_literal65);

                	    pushFollow(FOLLOW_exp_in_condExp715);
                	    e1=exp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) stream_exp.add(e1.tree);
                	    char_literal66=Token(matchStream(input,48,FOLLOW_48_in_condExp720)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_48.add(char_literal66);

                	    pushFollow(FOLLOW_exp_in_condExp727);
                	    e2=exp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) stream_exp.add(e2.tree);


                	    // AST REWRITE
                	    // elements: e1, e2, condExp
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
                	    // 116:14: -> ^( CondExp $condExp $e1 $e2)
                	    {
                	        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:116:17: ^( CondExp $condExp $e1 $e2)
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
                	    break loop8;
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
                if ( this.state.backtracking>0 ) { memoize(input, 10, condExp_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end condExp

        // $ANTLR start logicalOr
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:120:1: logicalOr : logicalAnd ( '||' logicalAnd | 'or' logicalAnd )* ;
        public final function logicalOr():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var logicalOr_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var string_literal68:Token=null;
            var string_literal70:Token=null;
            var logicalAnd67:ParserRuleReturnScope = null;

            var logicalAnd69:ParserRuleReturnScope = null;

            var logicalAnd71:ParserRuleReturnScope = null;


            var string_literal68_tree:CommonTree=null;
            var string_literal70_tree:CommonTree=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 11) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:121:2: ( logicalAnd ( '||' logicalAnd | 'or' logicalAnd )* )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:121:4: logicalAnd ( '||' logicalAnd | 'or' logicalAnd )*
                {
                root_0 = CommonTree(adaptor.nil());

                pushFollow(FOLLOW_logicalAnd_in_logicalOr761);
                logicalAnd67=logicalAnd();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) adaptor.addChild(root_0, logicalAnd67.tree);
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:122:3: ( '||' logicalAnd | 'or' logicalAnd )*
                loop9:
                do {
                    var alt9:int=3;
                    var LA9_0:int = input.LA(1);

                    if ( (LA9_0==49) ) {
                        alt9=1;
                    }
                    else if ( (LA9_0==50) ) {
                        alt9=2;
                    }


                    switch (alt9) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:123:4: '||' logicalAnd
                	    {
                	    string_literal68=Token(matchStream(input,49,FOLLOW_49_in_logicalOr770)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    string_literal68_tree = CommonTree(adaptor.create(string_literal68));
                	    root_0 = CommonTree(adaptor.becomeRoot(string_literal68_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_logicalAnd_in_logicalOr773);
                	    logicalAnd69=logicalAnd();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, logicalAnd69.tree);

                	    }
                	    break;
                	case 2 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:124:5: 'or' logicalAnd
                	    {
                	    string_literal70=Token(matchStream(input,50,FOLLOW_50_in_logicalOr779)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    string_literal70_tree = CommonTree(adaptor.create(string_literal70));
                	    root_0 = CommonTree(adaptor.becomeRoot(string_literal70_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_logicalAnd_in_logicalOr782);
                	    logicalAnd71=logicalAnd();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, logicalAnd71.tree);

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
                if ( this.state.backtracking>0 ) { memoize(input, 11, logicalOr_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end logicalOr

        // $ANTLR start logicalAnd
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:128:1: logicalAnd : bitwiseOr ( '&&' bitwiseOr | 'and' bitwiseOr )* ;
        public final function logicalAnd():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var logicalAnd_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var string_literal73:Token=null;
            var string_literal75:Token=null;
            var bitwiseOr72:ParserRuleReturnScope = null;

            var bitwiseOr74:ParserRuleReturnScope = null;

            var bitwiseOr76:ParserRuleReturnScope = null;


            var string_literal73_tree:CommonTree=null;
            var string_literal75_tree:CommonTree=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 12) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:129:2: ( bitwiseOr ( '&&' bitwiseOr | 'and' bitwiseOr )* )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:129:4: bitwiseOr ( '&&' bitwiseOr | 'and' bitwiseOr )*
                {
                root_0 = CommonTree(adaptor.nil());

                pushFollow(FOLLOW_bitwiseOr_in_logicalAnd799);
                bitwiseOr72=bitwiseOr();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) adaptor.addChild(root_0, bitwiseOr72.tree);
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:130:3: ( '&&' bitwiseOr | 'and' bitwiseOr )*
                loop10:
                do {
                    var alt10:int=3;
                    var LA10_0:int = input.LA(1);

                    if ( (LA10_0==51) ) {
                        alt10=1;
                    }
                    else if ( (LA10_0==52) ) {
                        alt10=2;
                    }


                    switch (alt10) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:131:4: '&&' bitwiseOr
                	    {
                	    string_literal73=Token(matchStream(input,51,FOLLOW_51_in_logicalAnd808)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    string_literal73_tree = CommonTree(adaptor.create(string_literal73));
                	    root_0 = CommonTree(adaptor.becomeRoot(string_literal73_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_bitwiseOr_in_logicalAnd811);
                	    bitwiseOr74=bitwiseOr();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, bitwiseOr74.tree);

                	    }
                	    break;
                	case 2 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:132:5: 'and' bitwiseOr
                	    {
                	    string_literal75=Token(matchStream(input,52,FOLLOW_52_in_logicalAnd817)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    string_literal75_tree = CommonTree(adaptor.create(string_literal75));
                	    root_0 = CommonTree(adaptor.becomeRoot(string_literal75_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_bitwiseOr_in_logicalAnd820);
                	    bitwiseOr76=bitwiseOr();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, bitwiseOr76.tree);

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
                if ( this.state.backtracking>0 ) { memoize(input, 12, logicalAnd_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end logicalAnd

        // $ANTLR start bitwiseOr
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:136:1: bitwiseOr : bitwiseXor ( '|' bitwiseXor )* ;
        public final function bitwiseOr():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var bitwiseOr_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var char_literal78:Token=null;
            var bitwiseXor77:ParserRuleReturnScope = null;

            var bitwiseXor79:ParserRuleReturnScope = null;


            var char_literal78_tree:CommonTree=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 13) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:137:2: ( bitwiseXor ( '|' bitwiseXor )* )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:137:4: bitwiseXor ( '|' bitwiseXor )*
                {
                root_0 = CommonTree(adaptor.nil());

                pushFollow(FOLLOW_bitwiseXor_in_bitwiseOr836);
                bitwiseXor77=bitwiseXor();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) adaptor.addChild(root_0, bitwiseXor77.tree);
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:138:3: ( '|' bitwiseXor )*
                loop11:
                do {
                    var alt11:int=2;
                    var LA11_0:int = input.LA(1);

                    if ( (LA11_0==53) ) {
                        alt11=1;
                    }


                    switch (alt11) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:139:4: '|' bitwiseXor
                	    {
                	    char_literal78=Token(matchStream(input,53,FOLLOW_53_in_bitwiseOr845)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    char_literal78_tree = CommonTree(adaptor.create(char_literal78));
                	    root_0 = CommonTree(adaptor.becomeRoot(char_literal78_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_bitwiseXor_in_bitwiseOr848);
                	    bitwiseXor79=bitwiseXor();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, bitwiseXor79.tree);

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
                if ( this.state.backtracking>0 ) { memoize(input, 13, bitwiseOr_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end bitwiseOr

        // $ANTLR start bitwiseXor
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:143:1: bitwiseXor : bitwiseAnd ( '^' bitwiseAnd )? ;
        public final function bitwiseXor():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var bitwiseXor_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var char_literal81:Token=null;
            var bitwiseAnd80:ParserRuleReturnScope = null;

            var bitwiseAnd82:ParserRuleReturnScope = null;


            var char_literal81_tree:CommonTree=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 14) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:144:2: ( bitwiseAnd ( '^' bitwiseAnd )? )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:144:4: bitwiseAnd ( '^' bitwiseAnd )?
                {
                root_0 = CommonTree(adaptor.nil());

                pushFollow(FOLLOW_bitwiseAnd_in_bitwiseXor864);
                bitwiseAnd80=bitwiseAnd();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) adaptor.addChild(root_0, bitwiseAnd80.tree);
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:145:3: ( '^' bitwiseAnd )?
                var alt12:int=2;
                var LA12_0:int = input.LA(1);

                if ( (LA12_0==54) ) {
                    alt12=1;
                }
                switch (alt12) {
                    case 1 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:146:4: '^' bitwiseAnd
                        {
                        char_literal81=Token(matchStream(input,54,FOLLOW_54_in_bitwiseXor873)); if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                        char_literal81_tree = CommonTree(adaptor.create(char_literal81));
                        root_0 = CommonTree(adaptor.becomeRoot(char_literal81_tree, root_0));
                        }
                        pushFollow(FOLLOW_bitwiseAnd_in_bitwiseXor876);
                        bitwiseAnd82=bitwiseAnd();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) adaptor.addChild(root_0, bitwiseAnd82.tree);

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
                if ( this.state.backtracking>0 ) { memoize(input, 14, bitwiseXor_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end bitwiseXor

        // $ANTLR start bitwiseAnd
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:150:1: bitwiseAnd : equalExp ( '&' equalExp )* ;
        public final function bitwiseAnd():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var bitwiseAnd_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var char_literal84:Token=null;
            var equalExp83:ParserRuleReturnScope = null;

            var equalExp85:ParserRuleReturnScope = null;


            var char_literal84_tree:CommonTree=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 15) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:151:2: ( equalExp ( '&' equalExp )* )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:151:4: equalExp ( '&' equalExp )*
                {
                root_0 = CommonTree(adaptor.nil());

                pushFollow(FOLLOW_equalExp_in_bitwiseAnd892);
                equalExp83=equalExp();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) adaptor.addChild(root_0, equalExp83.tree);
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:152:3: ( '&' equalExp )*
                loop13:
                do {
                    var alt13:int=2;
                    var LA13_0:int = input.LA(1);

                    if ( (LA13_0==55) ) {
                        alt13=1;
                    }


                    switch (alt13) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:153:4: '&' equalExp
                	    {
                	    char_literal84=Token(matchStream(input,55,FOLLOW_55_in_bitwiseAnd901)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    char_literal84_tree = CommonTree(adaptor.create(char_literal84));
                	    root_0 = CommonTree(adaptor.becomeRoot(char_literal84_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_equalExp_in_bitwiseAnd904);
                	    equalExp85=equalExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, equalExp85.tree);

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
                if ( this.state.backtracking>0 ) { memoize(input, 15, bitwiseAnd_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end bitwiseAnd

        // $ANTLR start equalExp
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:157:1: equalExp : relExp ( '==' relExp | '!=' relExp | '===' relExp | '!==' relExp )* ;
        public final function equalExp():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var equalExp_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var string_literal87:Token=null;
            var string_literal89:Token=null;
            var string_literal91:Token=null;
            var string_literal93:Token=null;
            var relExp86:ParserRuleReturnScope = null;

            var relExp88:ParserRuleReturnScope = null;

            var relExp90:ParserRuleReturnScope = null;

            var relExp92:ParserRuleReturnScope = null;

            var relExp94:ParserRuleReturnScope = null;


            var string_literal87_tree:CommonTree=null;
            var string_literal89_tree:CommonTree=null;
            var string_literal91_tree:CommonTree=null;
            var string_literal93_tree:CommonTree=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 16) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:158:2: ( relExp ( '==' relExp | '!=' relExp | '===' relExp | '!==' relExp )* )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:158:4: relExp ( '==' relExp | '!=' relExp | '===' relExp | '!==' relExp )*
                {
                root_0 = CommonTree(adaptor.nil());

                pushFollow(FOLLOW_relExp_in_equalExp920);
                relExp86=relExp();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) adaptor.addChild(root_0, relExp86.tree);
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:159:3: ( '==' relExp | '!=' relExp | '===' relExp | '!==' relExp )*
                loop14:
                do {
                    var alt14:int=5;
                    switch ( input.LA(1) ) {
                    case 56:
                        {
                        alt14=1;
                        }
                        break;
                    case 57:
                        {
                        alt14=2;
                        }
                        break;
                    case 58:
                        {
                        alt14=3;
                        }
                        break;
                    case 59:
                        {
                        alt14=4;
                        }
                        break;

                    }

                    switch (alt14) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:160:4: '==' relExp
                	    {
                	    string_literal87=Token(matchStream(input,56,FOLLOW_56_in_equalExp929)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    string_literal87_tree = CommonTree(adaptor.create(string_literal87));
                	    root_0 = CommonTree(adaptor.becomeRoot(string_literal87_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_relExp_in_equalExp932);
                	    relExp88=relExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, relExp88.tree);

                	    }
                	    break;
                	case 2 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:161:5: '!=' relExp
                	    {
                	    string_literal89=Token(matchStream(input,57,FOLLOW_57_in_equalExp938)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    string_literal89_tree = CommonTree(adaptor.create(string_literal89));
                	    root_0 = CommonTree(adaptor.becomeRoot(string_literal89_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_relExp_in_equalExp941);
                	    relExp90=relExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, relExp90.tree);

                	    }
                	    break;
                	case 3 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:162:5: '===' relExp
                	    {
                	    string_literal91=Token(matchStream(input,58,FOLLOW_58_in_equalExp947)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    string_literal91_tree = CommonTree(adaptor.create(string_literal91));
                	    root_0 = CommonTree(adaptor.becomeRoot(string_literal91_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_relExp_in_equalExp950);
                	    relExp92=relExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, relExp92.tree);

                	    }
                	    break;
                	case 4 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:163:5: '!==' relExp
                	    {
                	    string_literal93=Token(matchStream(input,59,FOLLOW_59_in_equalExp956)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    string_literal93_tree = CommonTree(adaptor.create(string_literal93));
                	    root_0 = CommonTree(adaptor.becomeRoot(string_literal93_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_relExp_in_equalExp959);
                	    relExp94=relExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, relExp94.tree);

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
                if ( this.state.backtracking>0 ) { memoize(input, 16, equalExp_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end equalExp

        // $ANTLR start relExp
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:167:1: relExp : shiftExp ( '<' shiftExp | 'lt' shiftExp | '>' shiftExp | 'gt' shiftExp | '<=' shiftExp | 'lte' shiftExp | '>=' shiftExp | 'gte' shiftExp )* ;
        public final function relExp():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var relExp_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var char_literal96:Token=null;
            var string_literal98:Token=null;
            var char_literal100:Token=null;
            var string_literal102:Token=null;
            var string_literal104:Token=null;
            var string_literal106:Token=null;
            var string_literal108:Token=null;
            var string_literal110:Token=null;
            var shiftExp95:ParserRuleReturnScope = null;

            var shiftExp97:ParserRuleReturnScope = null;

            var shiftExp99:ParserRuleReturnScope = null;

            var shiftExp101:ParserRuleReturnScope = null;

            var shiftExp103:ParserRuleReturnScope = null;

            var shiftExp105:ParserRuleReturnScope = null;

            var shiftExp107:ParserRuleReturnScope = null;

            var shiftExp109:ParserRuleReturnScope = null;

            var shiftExp111:ParserRuleReturnScope = null;


            var char_literal96_tree:CommonTree=null;
            var string_literal98_tree:CommonTree=null;
            var char_literal100_tree:CommonTree=null;
            var string_literal102_tree:CommonTree=null;
            var string_literal104_tree:CommonTree=null;
            var string_literal106_tree:CommonTree=null;
            var string_literal108_tree:CommonTree=null;
            var string_literal110_tree:CommonTree=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 17) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:168:2: ( shiftExp ( '<' shiftExp | 'lt' shiftExp | '>' shiftExp | 'gt' shiftExp | '<=' shiftExp | 'lte' shiftExp | '>=' shiftExp | 'gte' shiftExp )* )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:168:4: shiftExp ( '<' shiftExp | 'lt' shiftExp | '>' shiftExp | 'gt' shiftExp | '<=' shiftExp | 'lte' shiftExp | '>=' shiftExp | 'gte' shiftExp )*
                {
                root_0 = CommonTree(adaptor.nil());

                pushFollow(FOLLOW_shiftExp_in_relExp976);
                shiftExp95=shiftExp();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) adaptor.addChild(root_0, shiftExp95.tree);
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:169:3: ( '<' shiftExp | 'lt' shiftExp | '>' shiftExp | 'gt' shiftExp | '<=' shiftExp | 'lte' shiftExp | '>=' shiftExp | 'gte' shiftExp )*
                loop15:
                do {
                    var alt15:int=9;
                    switch ( input.LA(1) ) {
                    case 60:
                        {
                        alt15=1;
                        }
                        break;
                    case 61:
                        {
                        alt15=2;
                        }
                        break;
                    case 62:
                        {
                        alt15=3;
                        }
                        break;
                    case 63:
                        {
                        alt15=4;
                        }
                        break;
                    case 64:
                        {
                        alt15=5;
                        }
                        break;
                    case 65:
                        {
                        alt15=6;
                        }
                        break;
                    case 66:
                        {
                        alt15=7;
                        }
                        break;
                    case 67:
                        {
                        alt15=8;
                        }
                        break;

                    }

                    switch (alt15) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:170:4: '<' shiftExp
                	    {
                	    char_literal96=Token(matchStream(input,60,FOLLOW_60_in_relExp985)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    char_literal96_tree = CommonTree(adaptor.create(char_literal96));
                	    root_0 = CommonTree(adaptor.becomeRoot(char_literal96_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_shiftExp_in_relExp988);
                	    shiftExp97=shiftExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, shiftExp97.tree);

                	    }
                	    break;
                	case 2 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:171:5: 'lt' shiftExp
                	    {
                	    string_literal98=Token(matchStream(input,61,FOLLOW_61_in_relExp994)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    string_literal98_tree = CommonTree(adaptor.create(string_literal98));
                	    root_0 = CommonTree(adaptor.becomeRoot(string_literal98_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_shiftExp_in_relExp997);
                	    shiftExp99=shiftExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, shiftExp99.tree);

                	    }
                	    break;
                	case 3 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:172:5: '>' shiftExp
                	    {
                	    char_literal100=Token(matchStream(input,62,FOLLOW_62_in_relExp1003)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    char_literal100_tree = CommonTree(adaptor.create(char_literal100));
                	    root_0 = CommonTree(adaptor.becomeRoot(char_literal100_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_shiftExp_in_relExp1006);
                	    shiftExp101=shiftExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, shiftExp101.tree);

                	    }
                	    break;
                	case 4 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:173:5: 'gt' shiftExp
                	    {
                	    string_literal102=Token(matchStream(input,63,FOLLOW_63_in_relExp1012)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    string_literal102_tree = CommonTree(adaptor.create(string_literal102));
                	    root_0 = CommonTree(adaptor.becomeRoot(string_literal102_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_shiftExp_in_relExp1015);
                	    shiftExp103=shiftExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, shiftExp103.tree);

                	    }
                	    break;
                	case 5 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:174:5: '<=' shiftExp
                	    {
                	    string_literal104=Token(matchStream(input,64,FOLLOW_64_in_relExp1021)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    string_literal104_tree = CommonTree(adaptor.create(string_literal104));
                	    root_0 = CommonTree(adaptor.becomeRoot(string_literal104_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_shiftExp_in_relExp1024);
                	    shiftExp105=shiftExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, shiftExp105.tree);

                	    }
                	    break;
                	case 6 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:175:5: 'lte' shiftExp
                	    {
                	    string_literal106=Token(matchStream(input,65,FOLLOW_65_in_relExp1030)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    string_literal106_tree = CommonTree(adaptor.create(string_literal106));
                	    root_0 = CommonTree(adaptor.becomeRoot(string_literal106_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_shiftExp_in_relExp1033);
                	    shiftExp107=shiftExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, shiftExp107.tree);

                	    }
                	    break;
                	case 7 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:176:5: '>=' shiftExp
                	    {
                	    string_literal108=Token(matchStream(input,66,FOLLOW_66_in_relExp1039)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    string_literal108_tree = CommonTree(adaptor.create(string_literal108));
                	    root_0 = CommonTree(adaptor.becomeRoot(string_literal108_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_shiftExp_in_relExp1042);
                	    shiftExp109=shiftExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, shiftExp109.tree);

                	    }
                	    break;
                	case 8 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:177:5: 'gte' shiftExp
                	    {
                	    string_literal110=Token(matchStream(input,67,FOLLOW_67_in_relExp1048)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    string_literal110_tree = CommonTree(adaptor.create(string_literal110));
                	    root_0 = CommonTree(adaptor.becomeRoot(string_literal110_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_shiftExp_in_relExp1051);
                	    shiftExp111=shiftExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, shiftExp111.tree);

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
                if ( this.state.backtracking>0 ) { memoize(input, 17, relExp_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end relExp

        // $ANTLR start shiftExp
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:181:1: shiftExp : addExp ( '<<' addExp | '>>' addExp | '>>>' addExp )* ;
        public final function shiftExp():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var shiftExp_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var string_literal113:Token=null;
            var string_literal115:Token=null;
            var string_literal117:Token=null;
            var addExp112:ParserRuleReturnScope = null;

            var addExp114:ParserRuleReturnScope = null;

            var addExp116:ParserRuleReturnScope = null;

            var addExp118:ParserRuleReturnScope = null;


            var string_literal113_tree:CommonTree=null;
            var string_literal115_tree:CommonTree=null;
            var string_literal117_tree:CommonTree=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 18) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:182:2: ( addExp ( '<<' addExp | '>>' addExp | '>>>' addExp )* )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:182:4: addExp ( '<<' addExp | '>>' addExp | '>>>' addExp )*
                {
                root_0 = CommonTree(adaptor.nil());

                pushFollow(FOLLOW_addExp_in_shiftExp1067);
                addExp112=addExp();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) adaptor.addChild(root_0, addExp112.tree);
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:183:3: ( '<<' addExp | '>>' addExp | '>>>' addExp )*
                loop16:
                do {
                    var alt16:int=4;
                    switch ( input.LA(1) ) {
                    case 68:
                        {
                        alt16=1;
                        }
                        break;
                    case 69:
                        {
                        alt16=2;
                        }
                        break;
                    case 70:
                        {
                        alt16=3;
                        }
                        break;

                    }

                    switch (alt16) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:184:4: '<<' addExp
                	    {
                	    string_literal113=Token(matchStream(input,68,FOLLOW_68_in_shiftExp1076)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    string_literal113_tree = CommonTree(adaptor.create(string_literal113));
                	    root_0 = CommonTree(adaptor.becomeRoot(string_literal113_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_addExp_in_shiftExp1079);
                	    addExp114=addExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, addExp114.tree);

                	    }
                	    break;
                	case 2 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:185:5: '>>' addExp
                	    {
                	    string_literal115=Token(matchStream(input,69,FOLLOW_69_in_shiftExp1085)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    string_literal115_tree = CommonTree(adaptor.create(string_literal115));
                	    root_0 = CommonTree(adaptor.becomeRoot(string_literal115_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_addExp_in_shiftExp1088);
                	    addExp116=addExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, addExp116.tree);

                	    }
                	    break;
                	case 3 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:186:5: '>>>' addExp
                	    {
                	    string_literal117=Token(matchStream(input,70,FOLLOW_70_in_shiftExp1094)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    string_literal117_tree = CommonTree(adaptor.create(string_literal117));
                	    root_0 = CommonTree(adaptor.becomeRoot(string_literal117_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_addExp_in_shiftExp1097);
                	    addExp118=addExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, addExp118.tree);

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
                if ( this.state.backtracking>0 ) { memoize(input, 18, shiftExp_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end shiftExp

        // $ANTLR start addExp
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:190:1: addExp : multExp ( '+' multExp | '-' multExp )* ;
        public final function addExp():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var addExp_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var char_literal120:Token=null;
            var char_literal122:Token=null;
            var multExp119:ParserRuleReturnScope = null;

            var multExp121:ParserRuleReturnScope = null;

            var multExp123:ParserRuleReturnScope = null;


            var char_literal120_tree:CommonTree=null;
            var char_literal122_tree:CommonTree=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 19) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:191:2: ( multExp ( '+' multExp | '-' multExp )* )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:191:4: multExp ( '+' multExp | '-' multExp )*
                {
                root_0 = CommonTree(adaptor.nil());

                pushFollow(FOLLOW_multExp_in_addExp1113);
                multExp119=multExp();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) adaptor.addChild(root_0, multExp119.tree);
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:192:3: ( '+' multExp | '-' multExp )*
                loop17:
                do {
                    var alt17:int=3;
                    alt17 = dfa17.predict(input);
                    switch (alt17) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:193:4: '+' multExp
                	    {
                	    char_literal120=Token(matchStream(input,71,FOLLOW_71_in_addExp1122)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    char_literal120_tree = CommonTree(adaptor.create(char_literal120));
                	    root_0 = CommonTree(adaptor.becomeRoot(char_literal120_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_multExp_in_addExp1125);
                	    multExp121=multExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, multExp121.tree);

                	    }
                	    break;
                	case 2 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:194:5: '-' multExp
                	    {
                	    char_literal122=Token(matchStream(input,72,FOLLOW_72_in_addExp1131)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    char_literal122_tree = CommonTree(adaptor.create(char_literal122));
                	    root_0 = CommonTree(adaptor.becomeRoot(char_literal122_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_multExp_in_addExp1134);
                	    multExp123=multExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, multExp123.tree);

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
                if ( this.state.backtracking>0 ) { memoize(input, 19, addExp_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end addExp

        // $ANTLR start multExp
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:198:1: multExp : unaryExp ( '*' unaryExp | '/' unaryExp | '%' unaryExp )* ;
        public final function multExp():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var multExp_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var char_literal125:Token=null;
            var char_literal127:Token=null;
            var char_literal129:Token=null;
            var unaryExp124:ParserRuleReturnScope = null;

            var unaryExp126:ParserRuleReturnScope = null;

            var unaryExp128:ParserRuleReturnScope = null;

            var unaryExp130:ParserRuleReturnScope = null;


            var char_literal125_tree:CommonTree=null;
            var char_literal127_tree:CommonTree=null;
            var char_literal129_tree:CommonTree=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 20) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:199:2: ( unaryExp ( '*' unaryExp | '/' unaryExp | '%' unaryExp )* )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:199:5: unaryExp ( '*' unaryExp | '/' unaryExp | '%' unaryExp )*
                {
                root_0 = CommonTree(adaptor.nil());

                pushFollow(FOLLOW_unaryExp_in_multExp1152);
                unaryExp124=unaryExp();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) adaptor.addChild(root_0, unaryExp124.tree);
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:200:3: ( '*' unaryExp | '/' unaryExp | '%' unaryExp )*
                loop18:
                do {
                    var alt18:int=4;
                    switch ( input.LA(1) ) {
                    case 73:
                        {
                        alt18=1;
                        }
                        break;
                    case 74:
                        {
                        alt18=2;
                        }
                        break;
                    case 75:
                        {
                        alt18=3;
                        }
                        break;

                    }

                    switch (alt18) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:201:4: '*' unaryExp
                	    {
                	    char_literal125=Token(matchStream(input,73,FOLLOW_73_in_multExp1161)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    char_literal125_tree = CommonTree(adaptor.create(char_literal125));
                	    root_0 = CommonTree(adaptor.becomeRoot(char_literal125_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_unaryExp_in_multExp1164);
                	    unaryExp126=unaryExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, unaryExp126.tree);

                	    }
                	    break;
                	case 2 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:202:5: '/' unaryExp
                	    {
                	    char_literal127=Token(matchStream(input,74,FOLLOW_74_in_multExp1170)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    char_literal127_tree = CommonTree(adaptor.create(char_literal127));
                	    root_0 = CommonTree(adaptor.becomeRoot(char_literal127_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_unaryExp_in_multExp1173);
                	    unaryExp128=unaryExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, unaryExp128.tree);

                	    }
                	    break;
                	case 3 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:203:5: '%' unaryExp
                	    {
                	    char_literal129=Token(matchStream(input,75,FOLLOW_75_in_multExp1179)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    char_literal129_tree = CommonTree(adaptor.create(char_literal129));
                	    root_0 = CommonTree(adaptor.becomeRoot(char_literal129_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_unaryExp_in_multExp1182);
                	    unaryExp130=unaryExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, unaryExp130.tree);

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
                if ( this.state.backtracking>0 ) { memoize(input, 20, multExp_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end multExp

        // $ANTLR start unaryExp
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:207:1: unaryExp : ( '+' atom | '-' atom | '~' atom | '!' atom | atom );
        public final function unaryExp():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var unaryExp_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var char_literal131:Token=null;
            var char_literal133:Token=null;
            var char_literal135:Token=null;
            var char_literal137:Token=null;
            var atom132:ParserRuleReturnScope = null;

            var atom134:ParserRuleReturnScope = null;

            var atom136:ParserRuleReturnScope = null;

            var atom138:ParserRuleReturnScope = null;

            var atom139:ParserRuleReturnScope = null;


            var char_literal131_tree:CommonTree=null;
            var char_literal133_tree:CommonTree=null;
            var char_literal135_tree:CommonTree=null;
            var char_literal137_tree:CommonTree=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 21) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:208:2: ( '+' atom | '-' atom | '~' atom | '!' atom | atom )
                var alt19:int=5;
                switch ( input.LA(1) ) {
                case 71:
                    {
                    alt19=1;
                    }
                    break;
                case 72:
                    {
                    alt19=2;
                    }
                    break;
                case 76:
                    {
                    alt19=3;
                    }
                    break;
                case 77:
                    {
                    alt19=4;
                    }
                    break;
                case NumberLiteral:
                case StringLiteral:
                case Identifier:
                case 28:
                case 78:
                case 79:
                case 80:
                case 83:
                    {
                    alt19=5;
                    }
                    break;
                default:
                    if (this.state.backtracking>0) {this.state.failed=true; return retval;}
                    throw new NoViableAltException("", 19, 0, input);

                }

                switch (alt19) {
                    case 1 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:208:4: '+' atom
                        {
                        root_0 = CommonTree(adaptor.nil());

                        char_literal131=Token(matchStream(input,71,FOLLOW_71_in_unaryExp1201)); if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                        char_literal131_tree = CommonTree(adaptor.create(char_literal131));
                        root_0 = CommonTree(adaptor.becomeRoot(char_literal131_tree, root_0));
                        }
                        pushFollow(FOLLOW_atom_in_unaryExp1204);
                        atom132=atom();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) adaptor.addChild(root_0, atom132.tree);

                        }
                        break;
                    case 2 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:209:4: '-' atom
                        {
                        root_0 = CommonTree(adaptor.nil());

                        char_literal133=Token(matchStream(input,72,FOLLOW_72_in_unaryExp1209)); if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                        char_literal133_tree = CommonTree(adaptor.create(char_literal133));
                        root_0 = CommonTree(adaptor.becomeRoot(char_literal133_tree, root_0));
                        }
                        pushFollow(FOLLOW_atom_in_unaryExp1212);
                        atom134=atom();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) adaptor.addChild(root_0, atom134.tree);

                        }
                        break;
                    case 3 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:210:4: '~' atom
                        {
                        root_0 = CommonTree(adaptor.nil());

                        char_literal135=Token(matchStream(input,76,FOLLOW_76_in_unaryExp1217)); if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                        char_literal135_tree = CommonTree(adaptor.create(char_literal135));
                        root_0 = CommonTree(adaptor.becomeRoot(char_literal135_tree, root_0));
                        }
                        pushFollow(FOLLOW_atom_in_unaryExp1220);
                        atom136=atom();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) adaptor.addChild(root_0, atom136.tree);

                        }
                        break;
                    case 4 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:211:4: '!' atom
                        {
                        root_0 = CommonTree(adaptor.nil());

                        char_literal137=Token(matchStream(input,77,FOLLOW_77_in_unaryExp1225)); if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                        char_literal137_tree = CommonTree(adaptor.create(char_literal137));
                        root_0 = CommonTree(adaptor.becomeRoot(char_literal137_tree, root_0));
                        }
                        pushFollow(FOLLOW_atom_in_unaryExp1228);
                        atom138=atom();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) adaptor.addChild(root_0, atom138.tree);

                        }
                        break;
                    case 5 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:212:5: atom
                        {
                        root_0 = CommonTree(adaptor.nil());

                        pushFollow(FOLLOW_atom_in_unaryExp1234);
                        atom139=atom();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) adaptor.addChild(root_0, atom139.tree);

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
                if ( this.state.backtracking>0 ) { memoize(input, 21, unaryExp_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end unaryExp

        // $ANTLR start atom
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:215:1: atom : ( NumberLiteral | StringLiteral | 'true' | 'false' | referenceOrFuncCall | funcDef | '(' exp ')' );
        public final function atom():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var atom_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var NumberLiteral140:Token=null;
            var StringLiteral141:Token=null;
            var string_literal142:Token=null;
            var string_literal143:Token=null;
            var char_literal146:Token=null;
            var char_literal148:Token=null;
            var referenceOrFuncCall144:ParserRuleReturnScope = null;

            var funcDef145:ParserRuleReturnScope = null;

            var exp147:ParserRuleReturnScope = null;


            var NumberLiteral140_tree:CommonTree=null;
            var StringLiteral141_tree:CommonTree=null;
            var string_literal142_tree:CommonTree=null;
            var string_literal143_tree:CommonTree=null;
            var char_literal146_tree:CommonTree=null;
            var char_literal148_tree:CommonTree=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 22) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:216:2: ( NumberLiteral | StringLiteral | 'true' | 'false' | referenceOrFuncCall | funcDef | '(' exp ')' )
                var alt20:int=7;
                switch ( input.LA(1) ) {
                case NumberLiteral:
                    {
                    alt20=1;
                    }
                    break;
                case StringLiteral:
                    {
                    alt20=2;
                    }
                    break;
                case 78:
                    {
                    alt20=3;
                    }
                    break;
                case 79:
                    {
                    alt20=4;
                    }
                    break;
                case Identifier:
                case 80:
                    {
                    alt20=5;
                    }
                    break;
                case 83:
                    {
                    alt20=6;
                    }
                    break;
                case 28:
                    {
                    alt20=7;
                    }
                    break;
                default:
                    if (this.state.backtracking>0) {this.state.failed=true; return retval;}
                    throw new NoViableAltException("", 20, 0, input);

                }

                switch (alt20) {
                    case 1 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:216:4: NumberLiteral
                        {
                        root_0 = CommonTree(adaptor.nil());

                        NumberLiteral140=Token(matchStream(input,NumberLiteral,FOLLOW_NumberLiteral_in_atom1246)); if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                        NumberLiteral140_tree = CommonTree(adaptor.create(NumberLiteral140));
                        adaptor.addChild(root_0, NumberLiteral140_tree);
                        }

                        }
                        break;
                    case 2 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:217:4: StringLiteral
                        {
                        root_0 = CommonTree(adaptor.nil());

                        StringLiteral141=Token(matchStream(input,StringLiteral,FOLLOW_StringLiteral_in_atom1251)); if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                        StringLiteral141_tree = CommonTree(adaptor.create(StringLiteral141));
                        adaptor.addChild(root_0, StringLiteral141_tree);
                        }

                        }
                        break;
                    case 3 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:218:4: 'true'
                        {
                        root_0 = CommonTree(adaptor.nil());

                        string_literal142=Token(matchStream(input,78,FOLLOW_78_in_atom1256)); if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                        string_literal142_tree = CommonTree(adaptor.create(string_literal142));
                        adaptor.addChild(root_0, string_literal142_tree);
                        }

                        }
                        break;
                    case 4 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:219:4: 'false'
                        {
                        root_0 = CommonTree(adaptor.nil());

                        string_literal143=Token(matchStream(input,79,FOLLOW_79_in_atom1261)); if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                        string_literal143_tree = CommonTree(adaptor.create(string_literal143));
                        adaptor.addChild(root_0, string_literal143_tree);
                        }

                        }
                        break;
                    case 5 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:220:4: referenceOrFuncCall
                        {
                        root_0 = CommonTree(adaptor.nil());

                        pushFollow(FOLLOW_referenceOrFuncCall_in_atom1266);
                        referenceOrFuncCall144=referenceOrFuncCall();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) adaptor.addChild(root_0, referenceOrFuncCall144.tree);

                        }
                        break;
                    case 6 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:221:4: funcDef
                        {
                        root_0 = CommonTree(adaptor.nil());

                        pushFollow(FOLLOW_funcDef_in_atom1271);
                        funcDef145=funcDef();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) adaptor.addChild(root_0, funcDef145.tree);

                        }
                        break;
                    case 7 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:222:4: '(' exp ')'
                        {
                        root_0 = CommonTree(adaptor.nil());

                        char_literal146=Token(matchStream(input,28,FOLLOW_28_in_atom1276)); if (this.state.failed) return retval;
                        pushFollow(FOLLOW_exp_in_atom1279);
                        exp147=exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) adaptor.addChild(root_0, exp147.tree);
                        char_literal148=Token(matchStream(input,29,FOLLOW_29_in_atom1281)); if (this.state.failed) return retval;

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
                if ( this.state.backtracking>0 ) { memoize(input, 22, atom_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end atom

        // $ANTLR start reference
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:225:1: reference : (l= object -> $l) ( '[' e= exp ']' -> ^( PropExp $reference $e) | '.' i= Identifier -> ^( PropRef $reference $i) | '(' (p= params )? ')' '[' e= exp ']' -> ^( PropExp ^( FuncCall $reference $p) $e) | '(' (p= params )? ')' '.' i= Identifier -> ^( PropRef ^( FuncCall $reference $p) $i) )* ;
        public final function reference():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var reference_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var i:Token=null;
            var char_literal149:Token=null;
            var char_literal150:Token=null;
            var char_literal151:Token=null;
            var char_literal152:Token=null;
            var char_literal153:Token=null;
            var char_literal154:Token=null;
            var char_literal155:Token=null;
            var char_literal156:Token=null;
            var char_literal157:Token=null;
            var char_literal158:Token=null;
            var l:ParserRuleReturnScope = null;

            var e:ParserRuleReturnScope = null;

            var p:ParserRuleReturnScope = null;


            var i_tree:CommonTree=null;
            var char_literal149_tree:CommonTree=null;
            var char_literal150_tree:CommonTree=null;
            var char_literal151_tree:CommonTree=null;
            var char_literal152_tree:CommonTree=null;
            var char_literal153_tree:CommonTree=null;
            var char_literal154_tree:CommonTree=null;
            var char_literal155_tree:CommonTree=null;
            var char_literal156_tree:CommonTree=null;
            var char_literal157_tree:CommonTree=null;
            var char_literal158_tree:CommonTree=null;
            var stream_82:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 82");
            var stream_80:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 80");
            var stream_81:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 81");
            var stream_Identifier:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token Identifier");
            var stream_28:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 28");
            var stream_29:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 29");
            var stream_exp:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule exp");
            var stream_object:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule object");
            var stream_params:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule params");
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 23) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:226:2: ( (l= object -> $l) ( '[' e= exp ']' -> ^( PropExp $reference $e) | '.' i= Identifier -> ^( PropRef $reference $i) | '(' (p= params )? ')' '[' e= exp ']' -> ^( PropExp ^( FuncCall $reference $p) $e) | '(' (p= params )? ')' '.' i= Identifier -> ^( PropRef ^( FuncCall $reference $p) $i) )* )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:226:4: (l= object -> $l) ( '[' e= exp ']' -> ^( PropExp $reference $e) | '.' i= Identifier -> ^( PropRef $reference $i) | '(' (p= params )? ')' '[' e= exp ']' -> ^( PropExp ^( FuncCall $reference $p) $e) | '(' (p= params )? ')' '.' i= Identifier -> ^( PropRef ^( FuncCall $reference $p) $i) )*
                {
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:226:4: (l= object -> $l)
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:226:5: l= object
                {
                pushFollow(FOLLOW_object_in_reference1296);
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
                // 226:18: -> $l
                {
                    adaptor.addChild(root_0, stream_l.nextTree());

                }

                retval.tree = root_0;}
                }

                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:227:3: ( '[' e= exp ']' -> ^( PropExp $reference $e) | '.' i= Identifier -> ^( PropRef $reference $i) | '(' (p= params )? ')' '[' e= exp ']' -> ^( PropExp ^( FuncCall $reference $p) $e) | '(' (p= params )? ')' '.' i= Identifier -> ^( PropRef ^( FuncCall $reference $p) $i) )*
                loop23:
                do {
                    var alt23:int=5;
                    alt23 = dfa23.predict(input);
                    switch (alt23) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:228:4: '[' e= exp ']'
                	    {
                	    char_literal149=Token(matchStream(input,80,FOLLOW_80_in_reference1315)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_80.add(char_literal149);

                	    pushFollow(FOLLOW_exp_in_reference1319);
                	    e=exp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) stream_exp.add(e.tree);
                	    char_literal150=Token(matchStream(input,81,FOLLOW_81_in_reference1321)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_81.add(char_literal150);



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
                	    // 228:20: -> ^( PropExp $reference $e)
                	    {
                	        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:228:23: ^( PropExp $reference $e)
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
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:230:5: '.' i= Identifier
                	    {
                	    char_literal151=Token(matchStream(input,82,FOLLOW_82_in_reference1345)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_82.add(char_literal151);

                	    i=Token(matchStream(input,Identifier,FOLLOW_Identifier_in_reference1349)); if (this.state.failed) return retval; 
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
                	    // 230:23: -> ^( PropRef $reference $i)
                	    {
                	        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:230:26: ^( PropRef $reference $i)
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
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:232:5: '(' (p= params )? ')' '[' e= exp ']'
                	    {
                	    char_literal152=Token(matchStream(input,28,FOLLOW_28_in_reference1371)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_28.add(char_literal152);

                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:232:10: (p= params )?
                	    var alt21:int=2;
                	    var LA21_0:int = input.LA(1);

                	    if ( ((LA21_0>=15 && LA21_0<=17)||LA21_0==28||(LA21_0>=71 && LA21_0<=72)||(LA21_0>=76 && LA21_0<=80)||LA21_0==83) ) {
                	        alt21=1;
                	    }
                	    switch (alt21) {
                	        case 1 :
                	            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:0:0: p= params
                	            {
                	            pushFollow(FOLLOW_params_in_reference1375);
                	            p=params();

                	            state._fsp = state._fsp - 1;
                	            if (this.state.failed) return retval;
                	            if ( this.state.backtracking==0 ) stream_params.add(p.tree);

                	            }
                	            break;

                	    }

                	    char_literal153=Token(matchStream(input,29,FOLLOW_29_in_reference1378)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_29.add(char_literal153);

                	    char_literal154=Token(matchStream(input,80,FOLLOW_80_in_reference1383)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_80.add(char_literal154);

                	    pushFollow(FOLLOW_exp_in_reference1387);
                	    e=exp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) stream_exp.add(e.tree);
                	    char_literal155=Token(matchStream(input,81,FOLLOW_81_in_reference1389)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_81.add(char_literal155);



                	    // AST REWRITE
                	    // elements: reference, e, p
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
                	    // 233:20: -> ^( PropExp ^( FuncCall $reference $p) $e)
                	    {
                	        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:233:23: ^( PropExp ^( FuncCall $reference $p) $e)
                	        {
                	        var root_1:CommonTree = CommonTree(adaptor.nil());
                	        root_1 = CommonTree(adaptor.becomeRoot(CommonTree(adaptor.create(PropExp, "PropExp")), root_1));

                	        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:233:33: ^( FuncCall $reference $p)
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
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:235:5: '(' (p= params )? ')' '.' i= Identifier
                	    {
                	    char_literal156=Token(matchStream(input,28,FOLLOW_28_in_reference1420)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_28.add(char_literal156);

                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:235:10: (p= params )?
                	    var alt22:int=2;
                	    var LA22_0:int = input.LA(1);

                	    if ( ((LA22_0>=15 && LA22_0<=17)||LA22_0==28||(LA22_0>=71 && LA22_0<=72)||(LA22_0>=76 && LA22_0<=80)||LA22_0==83) ) {
                	        alt22=1;
                	    }
                	    switch (alt22) {
                	        case 1 :
                	            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:0:0: p= params
                	            {
                	            pushFollow(FOLLOW_params_in_reference1424);
                	            p=params();

                	            state._fsp = state._fsp - 1;
                	            if (this.state.failed) return retval;
                	            if ( this.state.backtracking==0 ) stream_params.add(p.tree);

                	            }
                	            break;

                	    }

                	    char_literal157=Token(matchStream(input,29,FOLLOW_29_in_reference1427)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_29.add(char_literal157);

                	    char_literal158=Token(matchStream(input,82,FOLLOW_82_in_reference1432)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_82.add(char_literal158);

                	    i=Token(matchStream(input,Identifier,FOLLOW_Identifier_in_reference1436)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_Identifier.add(i);



                	    // AST REWRITE
                	    // elements: i, reference, p
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
                	    // 236:22: -> ^( PropRef ^( FuncCall $reference $p) $i)
                	    {
                	        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:236:25: ^( PropRef ^( FuncCall $reference $p) $i)
                	        {
                	        var root_1:CommonTree = CommonTree(adaptor.nil());
                	        root_1 = CommonTree(adaptor.becomeRoot(CommonTree(adaptor.create(PropRef, "PropRef")), root_1));

                	        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:236:35: ^( FuncCall $reference $p)
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
                	    break loop23;
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
                if ( this.state.backtracking>0 ) { memoize(input, 23, reference_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end reference

        // $ANTLR start referenceOrFuncCall
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:240:1: referenceOrFuncCall : (l= object -> $l) ( '[' e= exp ']' -> ^( PropExp $referenceOrFuncCall $e) | '.' i= Identifier -> ^( PropRef $referenceOrFuncCall $i) | '(' p= params ')' -> ^( FuncCall $referenceOrFuncCall $p) | '(' ')' -> ^( FuncCall $referenceOrFuncCall) )* ;
        public final function referenceOrFuncCall():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var referenceOrFuncCall_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var i:Token=null;
            var char_literal159:Token=null;
            var char_literal160:Token=null;
            var char_literal161:Token=null;
            var char_literal162:Token=null;
            var char_literal163:Token=null;
            var char_literal164:Token=null;
            var char_literal165:Token=null;
            var l:ParserRuleReturnScope = null;

            var e:ParserRuleReturnScope = null;

            var p:ParserRuleReturnScope = null;


            var i_tree:CommonTree=null;
            var char_literal159_tree:CommonTree=null;
            var char_literal160_tree:CommonTree=null;
            var char_literal161_tree:CommonTree=null;
            var char_literal162_tree:CommonTree=null;
            var char_literal163_tree:CommonTree=null;
            var char_literal164_tree:CommonTree=null;
            var char_literal165_tree:CommonTree=null;
            var stream_82:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 82");
            var stream_80:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 80");
            var stream_81:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 81");
            var stream_Identifier:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token Identifier");
            var stream_28:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 28");
            var stream_29:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 29");
            var stream_exp:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule exp");
            var stream_object:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule object");
            var stream_params:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule params");
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 24) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:241:2: ( (l= object -> $l) ( '[' e= exp ']' -> ^( PropExp $referenceOrFuncCall $e) | '.' i= Identifier -> ^( PropRef $referenceOrFuncCall $i) | '(' p= params ')' -> ^( FuncCall $referenceOrFuncCall $p) | '(' ')' -> ^( FuncCall $referenceOrFuncCall) )* )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:241:4: (l= object -> $l) ( '[' e= exp ']' -> ^( PropExp $referenceOrFuncCall $e) | '.' i= Identifier -> ^( PropRef $referenceOrFuncCall $i) | '(' p= params ')' -> ^( FuncCall $referenceOrFuncCall $p) | '(' ')' -> ^( FuncCall $referenceOrFuncCall) )*
                {
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:241:4: (l= object -> $l)
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:241:5: l= object
                {
                pushFollow(FOLLOW_object_in_referenceOrFuncCall1476);
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
                // 241:18: -> $l
                {
                    adaptor.addChild(root_0, stream_l.nextTree());

                }

                retval.tree = root_0;}
                }

                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:242:3: ( '[' e= exp ']' -> ^( PropExp $referenceOrFuncCall $e) | '.' i= Identifier -> ^( PropRef $referenceOrFuncCall $i) | '(' p= params ')' -> ^( FuncCall $referenceOrFuncCall $p) | '(' ')' -> ^( FuncCall $referenceOrFuncCall) )*
                loop24:
                do {
                    var alt24:int=5;
                    alt24 = dfa24.predict(input);
                    switch (alt24) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:243:4: '[' e= exp ']'
                	    {
                	    char_literal159=Token(matchStream(input,80,FOLLOW_80_in_referenceOrFuncCall1495)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_80.add(char_literal159);

                	    pushFollow(FOLLOW_exp_in_referenceOrFuncCall1499);
                	    e=exp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) stream_exp.add(e.tree);
                	    char_literal160=Token(matchStream(input,81,FOLLOW_81_in_referenceOrFuncCall1501)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_81.add(char_literal160);



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
                	    // 243:20: -> ^( PropExp $referenceOrFuncCall $e)
                	    {
                	        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:243:23: ^( PropExp $referenceOrFuncCall $e)
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
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:244:5: '.' i= Identifier
                	    {
                	    char_literal161=Token(matchStream(input,82,FOLLOW_82_in_referenceOrFuncCall1521)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_82.add(char_literal161);

                	    i=Token(matchStream(input,Identifier,FOLLOW_Identifier_in_referenceOrFuncCall1525)); if (this.state.failed) return retval; 
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
                	    // 244:23: -> ^( PropRef $referenceOrFuncCall $i)
                	    {
                	        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:244:26: ^( PropRef $referenceOrFuncCall $i)
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
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:245:5: '(' p= params ')'
                	    {
                	    char_literal162=Token(matchStream(input,28,FOLLOW_28_in_referenceOrFuncCall1544)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_28.add(char_literal162);

                	    pushFollow(FOLLOW_params_in_referenceOrFuncCall1548);
                	    p=params();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) stream_params.add(p.tree);
                	    char_literal163=Token(matchStream(input,29,FOLLOW_29_in_referenceOrFuncCall1550)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_29.add(char_literal163);



                	    // AST REWRITE
                	    // elements: p, referenceOrFuncCall
                	    // token labels: 
                	    // rule labels: retval, p
                	    // token list labels: 
                	    // rule list labels: 
                	    if ( this.state.backtracking==0 ) {
                	    retval.tree = root_0;
                	    var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);
                	    var stream_p:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule p",p!=null?p.tree:null);

                	    root_0 = CommonTree(adaptor.nil());
                	    // 245:23: -> ^( FuncCall $referenceOrFuncCall $p)
                	    {
                	        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:245:26: ^( FuncCall $referenceOrFuncCall $p)
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
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:246:5: '(' ')'
                	    {
                	    char_literal164=Token(matchStream(input,28,FOLLOW_28_in_referenceOrFuncCall1569)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_28.add(char_literal164);

                	    char_literal165=Token(matchStream(input,29,FOLLOW_29_in_referenceOrFuncCall1571)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_29.add(char_literal165);



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
                	    // 246:16: -> ^( FuncCall $referenceOrFuncCall)
                	    {
                	        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:246:19: ^( FuncCall $referenceOrFuncCall)
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
                if ( this.state.backtracking>0 ) { memoize(input, 24, referenceOrFuncCall_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end referenceOrFuncCall

        // $ANTLR start funcDef
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:250:1: funcDef : 'function' ( '(' a= args ')' b= block -> ^( FuncDef $a $b) | '(' ')' b= block -> ^( FuncDef $b) ) ;
        public final function funcDef():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var funcDef_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var string_literal166:Token=null;
            var char_literal167:Token=null;
            var char_literal168:Token=null;
            var char_literal169:Token=null;
            var char_literal170:Token=null;
            var a:ParserRuleReturnScope = null;

            var b:ParserRuleReturnScope = null;


            var string_literal166_tree:CommonTree=null;
            var char_literal167_tree:CommonTree=null;
            var char_literal168_tree:CommonTree=null;
            var char_literal169_tree:CommonTree=null;
            var char_literal170_tree:CommonTree=null;
            var stream_83:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 83");
            var stream_28:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 28");
            var stream_29:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 29");
            var stream_args:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule args");
            var stream_block:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule block");
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 25) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:251:2: ( 'function' ( '(' a= args ')' b= block -> ^( FuncDef $a $b) | '(' ')' b= block -> ^( FuncDef $b) ) )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:251:4: 'function' ( '(' a= args ')' b= block -> ^( FuncDef $a $b) | '(' ')' b= block -> ^( FuncDef $b) )
                {
                string_literal166=Token(matchStream(input,83,FOLLOW_83_in_funcDef1600)); if (this.state.failed) return retval; 
                if ( this.state.backtracking==0 ) stream_83.add(string_literal166);

                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:252:3: ( '(' a= args ')' b= block -> ^( FuncDef $a $b) | '(' ')' b= block -> ^( FuncDef $b) )
                var alt25:int=2;
                var LA25_0:int = input.LA(1);

                if ( (LA25_0==28) ) {
                    var LA25_1:int = input.LA(2);

                    if ( (LA25_1==29) ) {
                        alt25=2;
                    }
                    else if ( (LA25_1==17) ) {
                        alt25=1;
                    }
                    else {
                        if (this.state.backtracking>0) {this.state.failed=true; return retval;}
                        throw new NoViableAltException("", 25, 1, input);

                    }
                }
                else {
                    if (this.state.backtracking>0) {this.state.failed=true; return retval;}
                    throw new NoViableAltException("", 25, 0, input);

                }
                switch (alt25) {
                    case 1 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:253:4: '(' a= args ')' b= block
                        {
                        char_literal167=Token(matchStream(input,28,FOLLOW_28_in_funcDef1609)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_28.add(char_literal167);

                        pushFollow(FOLLOW_args_in_funcDef1613);
                        a=args();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_args.add(a.tree);
                        char_literal168=Token(matchStream(input,29,FOLLOW_29_in_funcDef1615)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_29.add(char_literal168);

                        pushFollow(FOLLOW_block_in_funcDef1619);
                        b=block();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_block.add(b.tree);


                        // AST REWRITE
                        // elements: a, b
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
                        // 253:28: -> ^( FuncDef $a $b)
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:253:31: ^( FuncDef $a $b)
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
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:254:5: '(' ')' b= block
                        {
                        char_literal169=Token(matchStream(input,28,FOLLOW_28_in_funcDef1639)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_28.add(char_literal169);

                        char_literal170=Token(matchStream(input,29,FOLLOW_29_in_funcDef1641)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_29.add(char_literal170);

                        pushFollow(FOLLOW_block_in_funcDef1645);
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
                        // 254:23: -> ^( FuncDef $b)
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:254:26: ^( FuncDef $b)
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
                if ( this.state.backtracking>0 ) { memoize(input, 25, funcDef_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end funcDef

        // $ANTLR start args
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:258:1: args : Identifier ( ',' Identifier )* ;
        public final function args():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var args_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var Identifier171:Token=null;
            var char_literal172:Token=null;
            var Identifier173:Token=null;

            var Identifier171_tree:CommonTree=null;
            var char_literal172_tree:CommonTree=null;
            var Identifier173_tree:CommonTree=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 26) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:259:2: ( Identifier ( ',' Identifier )* )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:259:4: Identifier ( ',' Identifier )*
                {
                root_0 = CommonTree(adaptor.nil());

                Identifier171=Token(matchStream(input,Identifier,FOLLOW_Identifier_in_args1672)); if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) {
                Identifier171_tree = CommonTree(adaptor.create(Identifier171));
                adaptor.addChild(root_0, Identifier171_tree);
                }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:260:3: ( ',' Identifier )*
                loop26:
                do {
                    var alt26:int=2;
                    var LA26_0:int = input.LA(1);

                    if ( (LA26_0==84) ) {
                        alt26=1;
                    }


                    switch (alt26) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:261:4: ',' Identifier
                	    {
                	    char_literal172=Token(matchStream(input,84,FOLLOW_84_in_args1681)); if (this.state.failed) return retval;
                	    Identifier173=Token(matchStream(input,Identifier,FOLLOW_Identifier_in_args1687)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    Identifier173_tree = CommonTree(adaptor.create(Identifier173));
                	    adaptor.addChild(root_0, Identifier173_tree);
                	    }

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
                if ( this.state.backtracking>0 ) { memoize(input, 26, args_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end args

        // $ANTLR start object
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:266:1: object : ( Identifier | array );
        public final function object():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var object_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var Identifier174:Token=null;
            var array175:ParserRuleReturnScope = null;


            var Identifier174_tree:CommonTree=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 27) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:267:2: ( Identifier | array )
                var alt27:int=2;
                var LA27_0:int = input.LA(1);

                if ( (LA27_0==17) ) {
                    alt27=1;
                }
                else if ( (LA27_0==80) ) {
                    alt27=2;
                }
                else {
                    if (this.state.backtracking>0) {this.state.failed=true; return retval;}
                    throw new NoViableAltException("", 27, 0, input);

                }
                switch (alt27) {
                    case 1 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:267:4: Identifier
                        {
                        root_0 = CommonTree(adaptor.nil());

                        Identifier174=Token(matchStream(input,Identifier,FOLLOW_Identifier_in_object1704)); if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                        Identifier174_tree = CommonTree(adaptor.create(Identifier174));
                        adaptor.addChild(root_0, Identifier174_tree);
                        }

                        }
                        break;
                    case 2 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:268:4: array
                        {
                        root_0 = CommonTree(adaptor.nil());

                        pushFollow(FOLLOW_array_in_object1709);
                        array175=array();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) adaptor.addChild(root_0, array175.tree);

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
                if ( this.state.backtracking>0 ) { memoize(input, 27, object_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end object

        // $ANTLR start params
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:271:1: params : exp ( ',' exp )* ;
        public final function params():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var params_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var char_literal177:Token=null;
            var exp176:ParserRuleReturnScope = null;

            var exp178:ParserRuleReturnScope = null;


            var char_literal177_tree:CommonTree=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 28) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:272:2: ( exp ( ',' exp )* )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:272:4: exp ( ',' exp )*
                {
                root_0 = CommonTree(adaptor.nil());

                pushFollow(FOLLOW_exp_in_params1721);
                exp176=exp();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) adaptor.addChild(root_0, exp176.tree);
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:273:3: ( ',' exp )*
                loop28:
                do {
                    var alt28:int=2;
                    var LA28_0:int = input.LA(1);

                    if ( (LA28_0==84) ) {
                        alt28=1;
                    }


                    switch (alt28) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:274:4: ',' exp
                	    {
                	    char_literal177=Token(matchStream(input,84,FOLLOW_84_in_params1730)); if (this.state.failed) return retval;
                	    pushFollow(FOLLOW_exp_in_params1736);
                	    exp178=exp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, exp178.tree);

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
                if ( this.state.backtracking>0 ) { memoize(input, 28, params_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end params

        // $ANTLR start array
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:279:1: array : ( '[' i= items ']' -> ^( CreateArray $i) | '[' ']' -> ^( CreateArray ) );
        public final function array():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var array_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var char_literal179:Token=null;
            var char_literal180:Token=null;
            var char_literal181:Token=null;
            var char_literal182:Token=null;
            var i:ParserRuleReturnScope = null;


            var char_literal179_tree:CommonTree=null;
            var char_literal180_tree:CommonTree=null;
            var char_literal181_tree:CommonTree=null;
            var char_literal182_tree:CommonTree=null;
            var stream_80:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 80");
            var stream_81:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 81");
            var stream_items:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule items");
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 29) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:280:2: ( '[' i= items ']' -> ^( CreateArray $i) | '[' ']' -> ^( CreateArray ) )
                var alt29:int=2;
                var LA29_0:int = input.LA(1);

                if ( (LA29_0==80) ) {
                    var LA29_1:int = input.LA(2);

                    if ( (LA29_1==81) ) {
                        alt29=2;
                    }
                    else if ( ((LA29_1>=15 && LA29_1<=17)||LA29_1==28||(LA29_1>=71 && LA29_1<=72)||(LA29_1>=76 && LA29_1<=80)||LA29_1==83) ) {
                        alt29=1;
                    }
                    else {
                        if (this.state.backtracking>0) {this.state.failed=true; return retval;}
                        throw new NoViableAltException("", 29, 1, input);

                    }
                }
                else {
                    if (this.state.backtracking>0) {this.state.failed=true; return retval;}
                    throw new NoViableAltException("", 29, 0, input);

                }
                switch (alt29) {
                    case 1 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:280:4: '[' i= items ']'
                        {
                        char_literal179=Token(matchStream(input,80,FOLLOW_80_in_array1753)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_80.add(char_literal179);

                        pushFollow(FOLLOW_items_in_array1757);
                        i=items();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_items.add(i.tree);
                        char_literal180=Token(matchStream(input,81,FOLLOW_81_in_array1759)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_81.add(char_literal180);



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
                        // 280:22: -> ^( CreateArray $i)
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:280:25: ^( CreateArray $i)
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
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:281:4: '[' ']'
                        {
                        char_literal181=Token(matchStream(input,80,FOLLOW_80_in_array1775)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_80.add(char_literal181);

                        char_literal182=Token(matchStream(input,81,FOLLOW_81_in_array1777)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_81.add(char_literal182);



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
                        // 281:16: -> ^( CreateArray )
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:281:19: ^( CreateArray )
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
                if ( this.state.backtracking>0 ) { memoize(input, 29, array_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end array

        // $ANTLR start items
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:284:1: items : exp ( ',' exp )* ;
        public final function items():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var items_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var char_literal184:Token=null;
            var exp183:ParserRuleReturnScope = null;

            var exp185:ParserRuleReturnScope = null;


            var char_literal184_tree:CommonTree=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 30) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:285:2: ( exp ( ',' exp )* )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:285:4: exp ( ',' exp )*
                {
                root_0 = CommonTree(adaptor.nil());

                pushFollow(FOLLOW_exp_in_items1799);
                exp183=exp();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) adaptor.addChild(root_0, exp183.tree);
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:286:3: ( ',' exp )*
                loop30:
                do {
                    var alt30:int=2;
                    var LA30_0:int = input.LA(1);

                    if ( (LA30_0==84) ) {
                        alt30=1;
                    }


                    switch (alt30) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:287:4: ',' exp
                	    {
                	    char_literal184=Token(matchStream(input,84,FOLLOW_84_in_items1808)); if (this.state.failed) return retval;
                	    pushFollow(FOLLOW_exp_in_items1814);
                	    exp185=exp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, exp185.tree);

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
                if ( this.state.backtracking>0 ) { memoize(input, 30, items_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end items

        // $ANTLR start synpred5_Expression
        public final function synpred5_Expression_fragment():void {
            var l:ParserRuleReturnScope = null;

            var r:ParserRuleReturnScope = null;


            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:66:4: ( 'if' '(' exp ')' l= block 'else' r= block )
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:66:4: 'if' '(' exp ')' l= block 'else' r= block
            {
            matchStream(input,27,FOLLOW_27_in_synpred5_Expression211); if (this.state.failed) return ;
            matchStream(input,28,FOLLOW_28_in_synpred5_Expression213); if (this.state.failed) return ;
            pushFollow(FOLLOW_exp_in_synpred5_Expression215);
            exp();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;
            matchStream(input,29,FOLLOW_29_in_synpred5_Expression217); if (this.state.failed) return ;
            pushFollow(FOLLOW_block_in_synpred5_Expression221);
            l=block();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;
            matchStream(input,30,FOLLOW_30_in_synpred5_Expression223); if (this.state.failed) return ;
            pushFollow(FOLLOW_block_in_synpred5_Expression227);
            r=block();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;

            }
        }
        // $ANTLR end synpred5_Expression

        // $ANTLR start synpred6_Expression
        public final function synpred6_Expression_fragment():void {
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:67:4: ( 'if' '(' exp ')' block 'else' ifStmt )
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:67:4: 'if' '(' exp ')' block 'else' ifStmt
            {
            matchStream(input,27,FOLLOW_27_in_synpred6_Expression246); if (this.state.failed) return ;
            matchStream(input,28,FOLLOW_28_in_synpred6_Expression248); if (this.state.failed) return ;
            pushFollow(FOLLOW_exp_in_synpred6_Expression250);
            exp();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;
            matchStream(input,29,FOLLOW_29_in_synpred6_Expression252); if (this.state.failed) return ;
            pushFollow(FOLLOW_block_in_synpred6_Expression254);
            block();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;
            matchStream(input,30,FOLLOW_30_in_synpred6_Expression256); if (this.state.failed) return ;
            pushFollow(FOLLOW_ifStmt_in_synpred6_Expression258);
            ifStmt();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;

            }
        }
        // $ANTLR end synpred6_Expression

        // $ANTLR start synpred7_Expression
        public final function synpred7_Expression_fragment():void {
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:82:4: ( ';' exp )
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:82:4: ';' exp
            {
            matchStream(input,34,FOLLOW_34_in_synpred7_Expression370); if (this.state.failed) return ;
            pushFollow(FOLLOW_exp_in_synpred7_Expression372);
            exp();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;

            }
        }
        // $ANTLR end synpred7_Expression

        // $ANTLR start synpred8_Expression
        public final function synpred8_Expression_fragment():void {
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:83:5: ( ';' )
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:83:5: ';'
            {
            matchStream(input,34,FOLLOW_34_in_synpred8_Expression378); if (this.state.failed) return ;

            }
        }
        // $ANTLR end synpred8_Expression

        // $ANTLR start synpred9_Expression
        public final function synpred9_Expression_fragment():void {
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:88:4: ( assignExp )
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:88:4: assignExp
            {
            pushFollow(FOLLOW_assignExp_in_synpred9_Expression408);
            assignExp();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;

            }
        }
        // $ANTLR end synpred9_Expression

        // $ANTLR start synpred21_Expression
        public final function synpred21_Expression_fragment():void {
            var e1:ParserRuleReturnScope = null;

            var e2:ParserRuleReturnScope = null;


            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:113:4: ( '?' e1= exp ':' e2= exp )
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:113:4: '?' e1= exp ':' e2= exp
            {
            matchStream(input,47,FOLLOW_47_in_synpred21_Expression708); if (this.state.failed) return ;
            pushFollow(FOLLOW_exp_in_synpred21_Expression715);
            e1=exp();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;
            matchStream(input,48,FOLLOW_48_in_synpred21_Expression720); if (this.state.failed) return ;
            pushFollow(FOLLOW_exp_in_synpred21_Expression727);
            e2=exp();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;

            }
        }
        // $ANTLR end synpred21_Expression

        // $ANTLR start synpred44_Expression
        public final function synpred44_Expression_fragment():void {
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:193:4: ( '+' multExp )
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:193:4: '+' multExp
            {
            matchStream(input,71,FOLLOW_71_in_synpred44_Expression1122); if (this.state.failed) return ;
            pushFollow(FOLLOW_multExp_in_synpred44_Expression1125);
            multExp();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;

            }
        }
        // $ANTLR end synpred44_Expression

        // $ANTLR start synpred45_Expression
        public final function synpred45_Expression_fragment():void {
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:194:5: ( '-' multExp )
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:194:5: '-' multExp
            {
            matchStream(input,72,FOLLOW_72_in_synpred45_Expression1131); if (this.state.failed) return ;
            pushFollow(FOLLOW_multExp_in_synpred45_Expression1134);
            multExp();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;

            }
        }
        // $ANTLR end synpred45_Expression

        // $ANTLR start synpred62_Expression
        public final function synpred62_Expression_fragment():void {
            var p:ParserRuleReturnScope = null;

            var e:ParserRuleReturnScope = null;


            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:232:5: ( '(' (p= params )? ')' '[' e= exp ']' )
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:232:5: '(' (p= params )? ')' '[' e= exp ']'
            {
            matchStream(input,28,FOLLOW_28_in_synpred62_Expression1371); if (this.state.failed) return ;
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:232:10: (p= params )?
            var alt31:int=2;
            var LA31_0:int = input.LA(1);

            if ( ((LA31_0>=15 && LA31_0<=17)||LA31_0==28||(LA31_0>=71 && LA31_0<=72)||(LA31_0>=76 && LA31_0<=80)||LA31_0==83) ) {
                alt31=1;
            }
            switch (alt31) {
                case 1 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:0:0: p= params
                    {
                    pushFollow(FOLLOW_params_in_synpred62_Expression1375);
                    p=params();

                    state._fsp = state._fsp - 1;
                    if (this.state.failed) return ;

                    }
                    break;

            }

            matchStream(input,29,FOLLOW_29_in_synpred62_Expression1378); if (this.state.failed) return ;
            matchStream(input,80,FOLLOW_80_in_synpred62_Expression1383); if (this.state.failed) return ;
            pushFollow(FOLLOW_exp_in_synpred62_Expression1387);
            e=exp();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;
            matchStream(input,81,FOLLOW_81_in_synpred62_Expression1389); if (this.state.failed) return ;

            }
        }
        // $ANTLR end synpred62_Expression

        // $ANTLR start synpred64_Expression
        public final function synpred64_Expression_fragment():void {
            var i:Token=null;
            var p:ParserRuleReturnScope = null;


            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:235:5: ( '(' (p= params )? ')' '.' i= Identifier )
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:235:5: '(' (p= params )? ')' '.' i= Identifier
            {
            matchStream(input,28,FOLLOW_28_in_synpred64_Expression1420); if (this.state.failed) return ;
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:235:10: (p= params )?
            var alt32:int=2;
            var LA32_0:int = input.LA(1);

            if ( ((LA32_0>=15 && LA32_0<=17)||LA32_0==28||(LA32_0>=71 && LA32_0<=72)||(LA32_0>=76 && LA32_0<=80)||LA32_0==83) ) {
                alt32=1;
            }
            switch (alt32) {
                case 1 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:0:0: p= params
                    {
                    pushFollow(FOLLOW_params_in_synpred64_Expression1424);
                    p=params();

                    state._fsp = state._fsp - 1;
                    if (this.state.failed) return ;

                    }
                    break;

            }

            matchStream(input,29,FOLLOW_29_in_synpred64_Expression1427); if (this.state.failed) return ;
            matchStream(input,82,FOLLOW_82_in_synpred64_Expression1432); if (this.state.failed) return ;
            i=Token(matchStream(input,Identifier,FOLLOW_Identifier_in_synpred64_Expression1436)); if (this.state.failed) return ;

            }
        }
        // $ANTLR end synpred64_Expression

        // $ANTLR start synpred65_Expression
        public final function synpred65_Expression_fragment():void {
            var e:ParserRuleReturnScope = null;


            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:243:4: ( '[' e= exp ']' )
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:243:4: '[' e= exp ']'
            {
            matchStream(input,80,FOLLOW_80_in_synpred65_Expression1495); if (this.state.failed) return ;
            pushFollow(FOLLOW_exp_in_synpred65_Expression1499);
            e=exp();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;
            matchStream(input,81,FOLLOW_81_in_synpred65_Expression1501); if (this.state.failed) return ;

            }
        }
        // $ANTLR end synpred65_Expression

        // $ANTLR start synpred67_Expression
        public final function synpred67_Expression_fragment():void {
            var p:ParserRuleReturnScope = null;


            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:245:5: ( '(' p= params ')' )
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:245:5: '(' p= params ')'
            {
            matchStream(input,28,FOLLOW_28_in_synpred67_Expression1544); if (this.state.failed) return ;
            pushFollow(FOLLOW_params_in_synpred67_Expression1548);
            p=params();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;
            matchStream(input,29,FOLLOW_29_in_synpred67_Expression1550); if (this.state.failed) return ;

            }
        }
        // $ANTLR end synpred67_Expression

        // $ANTLR start synpred68_Expression
        public final function synpred68_Expression_fragment():void {
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:246:5: ( '(' ')' )
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:246:5: '(' ')'
            {
            matchStream(input,28,FOLLOW_28_in_synpred68_Expression1569); if (this.state.failed) return ;
            matchStream(input,29,FOLLOW_29_in_synpred68_Expression1571); if (this.state.failed) return ;

            }
        }
        // $ANTLR end synpred68_Expression


           // Delegated rules

        public final function synpred65_Expression():Boolean {
            this.state.backtracking++;
            var start:int = input.mark();
            try {
                synpred65_Expression_fragment(); // can never throw exception
            } catch (re:RecognitionException) {
                trace("impossible: "+re);
            }
            var success:Boolean = !this.state.failed;
            input.rewindTo(start);
            this.state.backtracking--;
            this.state.failed=false;
            return success;
        }
        public final function synpred9_Expression():Boolean {
            this.state.backtracking++;
            var start:int = input.mark();
            try {
                synpred9_Expression_fragment(); // can never throw exception
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
        public final function synpred44_Expression():Boolean {
            this.state.backtracking++;
            var start:int = input.mark();
            try {
                synpred44_Expression_fragment(); // can never throw exception
            } catch (re:RecognitionException) {
                trace("impossible: "+re);
            }
            var success:Boolean = !this.state.failed;
            input.rewindTo(start);
            this.state.backtracking--;
            this.state.failed=false;
            return success;
        }
        public final function synpred21_Expression():Boolean {
            this.state.backtracking++;
            var start:int = input.mark();
            try {
                synpred21_Expression_fragment(); // can never throw exception
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
        public final function synpred62_Expression():Boolean {
            this.state.backtracking++;
            var start:int = input.mark();
            try {
                synpred62_Expression_fragment(); // can never throw exception
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
            DFA.unpackEncodedString("\x14\u80ff\xff");
        private const DFA5_eof:Array =
            DFA.unpackEncodedString("\x01\x01\x13\u80ff\xff");
        private const DFA5_min:Array =
            DFA.unpackEncodedString("\x01\x0f\x10\u80ff\xff\x01\x00\x02"+
            "\u80ff\xff", true);
        private const DFA5_max:Array =
            DFA.unpackEncodedString("\x01\x53\x10\u80ff\xff\x01\x00\x02"+
            "\u80ff\xff", true);
        private const DFA5_accept:Array =
            DFA.unpackEncodedString("\x01\u80ff\xff\x01\x03\x10\u80ff\xff"+
            "\x01\x01\x01\x02");
        private const DFA5_special:Array =
            DFA.unpackEncodedString("\x11\u80ff\xff\x01\x00\x02\u80ff\xff");
        private const DFA5_transition:Array = [
                DFA.unpackEncodedString("\x03\x01\x09\u80ff\xff\x02\x01"+
                "\x02\u80ff\xff\x01\x01\x01\u80ff\xff\x01\x01\x01\x11\x24"+
                "\u80ff\xff\x02\x01\x03\u80ff\xff\x05\x01\x02\u80ff\xff\x01"+
                "\x01"),
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
                            var LA5_17:int = input.LA(1);

                             
                            var index5_17:int = input.index;
                            input.rewind();
                            s = -1;
                            if ( (synpred7_Expression()) ) {s = 18;}

                            else if ( (synpred8_Expression()) ) {s = 19;}

                             
                            input.seek(index5_17);
                            if ( s>=0 ) return s;
                            break;
                }
                if (this.state.backtracking>0) {this.state.failed=true; return -1;}
                throw dfa.error(new NoViableAltException(dfa.description, 5, _s, input));
            }

        protected var dfa5:DFA;  // initialized in constructor

        private const DFA6_eot:Array =
            DFA.unpackEncodedString("\x0e\u80ff\xff");
        private const DFA6_eof:Array =
            DFA.unpackEncodedString("\x0e\u80ff\xff");
        private const DFA6_min:Array =
            DFA.unpackEncodedString("\x01\x0f\x02\x00\x0b\u80ff\xff", true);
        private const DFA6_max:Array =
            DFA.unpackEncodedString("\x01\x53\x02\x00\x0b\u80ff\xff", true);
        private const DFA6_accept:Array =
            DFA.unpackEncodedString("\x03\u80ff\xff\x01\x02\x09\u80ff\xff"+
            "\x01\x01");
        private const DFA6_special:Array =
            DFA.unpackEncodedString("\x01\u80ff\xff\x01\x00\x01\x01\x0b"+
            "\u80ff\xff");
        private const DFA6_transition:Array = [
                DFA.unpackEncodedString("\x02\x03\x01\x01\x0a\u80ff\xff"+
                "\x01\x03\x2a\u80ff\xff\x02\x03\x03\u80ff\xff\x04\x03\x01"+
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
                DFA.unpackEncodedString("")
        ];
            private function DFA6_specialStateTransition(dfa:DFA, s:int, _input:IntStream):int {
                var input:TokenStream = TokenStream(_input);
            	var _s:int = s;
                switch ( s ) {
                        case 0 : 
                            var LA6_1:int = input.LA(1);

                             
                            var index6_1:int = input.index;
                            input.rewind();
                            s = -1;
                            if ( (synpred9_Expression()) ) {s = 13;}

                            else if ( (true) ) {s = 3;}

                             
                            input.seek(index6_1);
                            if ( s>=0 ) return s;
                            break;
                        case 1 : 
                            var LA6_2:int = input.LA(1);

                             
                            var index6_2:int = input.index;
                            input.rewind();
                            s = -1;
                            if ( (synpred9_Expression()) ) {s = 13;}

                            else if ( (true) ) {s = 3;}

                             
                            input.seek(index6_2);
                            if ( s>=0 ) return s;
                            break;
                }
                if (this.state.backtracking>0) {this.state.failed=true; return -1;}
                throw dfa.error(new NoViableAltException(dfa.description, 6, _s, input));
            }

        protected var dfa6:DFA;  // initialized in constructor

        private const DFA17_eot:Array =
            DFA.unpackEncodedString("\x2f\u80ff\xff");
        private const DFA17_eof:Array =
            DFA.unpackEncodedString("\x01\x01\x2e\u80ff\xff");
        private const DFA17_min:Array =
            DFA.unpackEncodedString("\x01\x0f\x1d\u80ff\xff\x02\x00\x0f"+
            "\u80ff\xff", true);
        private const DFA17_max:Array =
            DFA.unpackEncodedString("\x01\x54\x1d\u80ff\xff\x02\x00\x0f"+
            "\u80ff\xff", true);
        private const DFA17_accept:Array =
            DFA.unpackEncodedString("\x01\u80ff\xff\x01\x03\x2b\u80ff\xff"+
            "\x01\x01\x01\x02");
        private const DFA17_special:Array =
            DFA.unpackEncodedString("\x1e\u80ff\xff\x01\x00\x01\x01\x0f"+
            "\u80ff\xff");
        private const DFA17_transition:Array = [
                DFA.unpackEncodedString("\x03\x01\x09\u80ff\xff\x03\x01"+
                "\x01\u80ff\xff\x01\x01\x01\u80ff\xff\x02\x01\x0c\u80ff\xff"+
                "\x18\x01\x01\x1e\x01\x1f\x03\u80ff\xff\x06\x01\x01\u80ff\xff"+
                "\x02\x01"),
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
                DFA.unpackEncodedString("")
        ];
            private function DFA17_specialStateTransition(dfa:DFA, s:int, _input:IntStream):int {
                var input:TokenStream = TokenStream(_input);
            	var _s:int = s;
                switch ( s ) {
                        case 0 : 
                            var LA17_30:int = input.LA(1);

                             
                            var index17_30:int = input.index;
                            input.rewind();
                            s = -1;
                            if ( (synpred44_Expression()) ) {s = 45;}

                            else if ( (true) ) {s = 1;}

                             
                            input.seek(index17_30);
                            if ( s>=0 ) return s;
                            break;
                        case 1 : 
                            var LA17_31:int = input.LA(1);

                             
                            var index17_31:int = input.index;
                            input.rewind();
                            s = -1;
                            if ( (synpred45_Expression()) ) {s = 46;}

                            else if ( (true) ) {s = 1;}

                             
                            input.seek(index17_31);
                            if ( s>=0 ) return s;
                            break;
                }
                if (this.state.backtracking>0) {this.state.failed=true; return -1;}
                throw dfa.error(new NoViableAltException(dfa.description, 17, _s, input));
            }

        protected var dfa17:DFA;  // initialized in constructor

        private const DFA23_eot:Array =
            DFA.unpackEncodedString("\x12\u80ff\xff");
        private const DFA23_eof:Array =
            DFA.unpackEncodedString("\x12\u80ff\xff");
        private const DFA23_min:Array =
            DFA.unpackEncodedString("\x01\x1c\x0e\u80ff\xff\x01\x00\x02"+
            "\u80ff\xff", true);
        private const DFA23_max:Array =
            DFA.unpackEncodedString("\x01\x52\x0e\u80ff\xff\x01\x00\x02"+
            "\u80ff\xff", true);
        private const DFA23_accept:Array =
            DFA.unpackEncodedString("\x01\u80ff\xff\x01\x05\x0b\u80ff\xff"+
            "\x01\x01\x01\x02\x01\u80ff\xff\x01\x03\x01\x04");
        private const DFA23_special:Array =
            DFA.unpackEncodedString("\x0f\u80ff\xff\x01\x00\x02\u80ff\xff");
        private const DFA23_transition:Array = [
                DFA.unpackEncodedString("\x01\x0f\x06\u80ff\xff\x0c\x01"+
                "\x21\u80ff\xff\x01\x0d\x01\u80ff\xff\x01\x0e"),
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
            private function DFA23_specialStateTransition(dfa:DFA, s:int, _input:IntStream):int {
                var input:TokenStream = TokenStream(_input);
            	var _s:int = s;
                switch ( s ) {
                        case 0 : 
                            var LA23_15:int = input.LA(1);

                             
                            var index23_15:int = input.index;
                            input.rewind();
                            s = -1;
                            if ( (synpred62_Expression()) ) {s = 16;}

                            else if ( (synpred64_Expression()) ) {s = 17;}

                             
                            input.seek(index23_15);
                            if ( s>=0 ) return s;
                            break;
                }
                if (this.state.backtracking>0) {this.state.failed=true; return -1;}
                throw dfa.error(new NoViableAltException(dfa.description, 23, _s, input));
            }

        protected var dfa23:DFA;  // initialized in constructor

        private const DFA24_eot:Array =
            DFA.unpackEncodedString("\x34\u80ff\xff");
        private const DFA24_eof:Array =
            DFA.unpackEncodedString("\x01\x01\x33\u80ff\xff");
        private const DFA24_min:Array =
            DFA.unpackEncodedString("\x01\x0f\x21\u80ff\xff\x01\x00\x07"+
            "\u80ff\xff\x01\x00\x09\u80ff\xff", true);
        private const DFA24_max:Array =
            DFA.unpackEncodedString("\x01\x54\x21\u80ff\xff\x01\x00\x07"+
            "\u80ff\xff\x01\x00\x09\u80ff\xff", true);
        private const DFA24_accept:Array =
            DFA.unpackEncodedString("\x01\u80ff\xff\x01\x05\x2e\u80ff\xff"+
            "\x01\x02\x01\x01\x01\x03\x01\x04");
        private const DFA24_special:Array =
            DFA.unpackEncodedString("\x22\u80ff\xff\x01\x00\x07\u80ff\xff"+
            "\x01\x01\x09\u80ff\xff");
        private const DFA24_transition:Array = [
                DFA.unpackEncodedString("\x03\x01\x09\u80ff\xff\x01\x01"+
                "\x01\x2a\x01\x01\x01\u80ff\xff\x01\x01\x01\u80ff\xff\x02"+
                "\x01\x0c\u80ff\xff\x21\x01\x01\x22\x01\x01\x01\x30\x02\x01"),
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
                DFA.unpackEncodedString("\x01\u80ff\xff"),
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
            private function DFA24_specialStateTransition(dfa:DFA, s:int, _input:IntStream):int {
                var input:TokenStream = TokenStream(_input);
            	var _s:int = s;
                switch ( s ) {
                        case 0 : 
                            var LA24_34:int = input.LA(1);

                             
                            var index24_34:int = input.index;
                            input.rewind();
                            s = -1;
                            if ( (synpred65_Expression()) ) {s = 49;}

                            else if ( (true) ) {s = 1;}

                             
                            input.seek(index24_34);
                            if ( s>=0 ) return s;
                            break;
                        case 1 : 
                            var LA24_42:int = input.LA(1);

                             
                            var index24_42:int = input.index;
                            input.rewind();
                            s = -1;
                            if ( (synpred67_Expression()) ) {s = 50;}

                            else if ( (synpred68_Expression()) ) {s = 51;}

                            else if ( (true) ) {s = 1;}

                             
                            input.seek(index24_42);
                            if ( s>=0 ) return s;
                            break;
                }
                if (this.state.backtracking>0) {this.state.failed=true; return -1;}
                throw dfa.error(new NoViableAltException(dfa.description, 24, _s, input));
            }

        protected var dfa24:DFA;  // initialized in constructor
     

        public static const FOLLOW_stmtList_in_main124:BitSet = new BitSet([0x00000000, 0x00000000]);
        public static const FOLLOW_EOF_in_main127:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_EOF_in_main133:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_stmt_in_stmtList145:BitSet = new BitSet([0x98038002, 0x00000000, 0x0009F180, 0x00000000]);
        public static const FOLLOW_stmt_in_stmtList154:BitSet = new BitSet([0x98038002, 0x00000000, 0x0009F180, 0x00000000]);
        public static const FOLLOW_ifStmt_in_stmt186:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_whileStmt_in_stmt192:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_expList_in_stmt198:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_27_in_ifStmt211:BitSet = new BitSet([0x10000000, 0x00000000]);
        public static const FOLLOW_28_in_ifStmt213:BitSet = new BitSet([0x98038000, 0x00000000, 0x0009F180, 0x00000000]);
        public static const FOLLOW_exp_in_ifStmt215:BitSet = new BitSet([0x20000000, 0x00000000]);
        public static const FOLLOW_29_in_ifStmt217:BitSet = new BitSet([0x00000000, 0x00000001]);
        public static const FOLLOW_block_in_ifStmt221:BitSet = new BitSet([0x40000000, 0x00000000]);
        public static const FOLLOW_30_in_ifStmt223:BitSet = new BitSet([0x00000000, 0x00000001]);
        public static const FOLLOW_block_in_ifStmt227:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_27_in_ifStmt246:BitSet = new BitSet([0x10000000, 0x00000000]);
        public static const FOLLOW_28_in_ifStmt248:BitSet = new BitSet([0x98038000, 0x00000000, 0x0009F180, 0x00000000]);
        public static const FOLLOW_exp_in_ifStmt250:BitSet = new BitSet([0x20000000, 0x00000000]);
        public static const FOLLOW_29_in_ifStmt252:BitSet = new BitSet([0x00000000, 0x00000001]);
        public static const FOLLOW_block_in_ifStmt254:BitSet = new BitSet([0x40000000, 0x00000000]);
        public static const FOLLOW_30_in_ifStmt256:BitSet = new BitSet([0x08000000, 0x00000000]);
        public static const FOLLOW_ifStmt_in_ifStmt258:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_27_in_ifStmt275:BitSet = new BitSet([0x10000000, 0x00000000]);
        public static const FOLLOW_28_in_ifStmt277:BitSet = new BitSet([0x98038000, 0x00000000, 0x0009F180, 0x00000000]);
        public static const FOLLOW_exp_in_ifStmt279:BitSet = new BitSet([0x20000000, 0x00000000]);
        public static const FOLLOW_29_in_ifStmt281:BitSet = new BitSet([0x00000000, 0x00000001]);
        public static const FOLLOW_block_in_ifStmt283:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_31_in_whileStmt307:BitSet = new BitSet([0x10000000, 0x00000000]);
        public static const FOLLOW_28_in_whileStmt309:BitSet = new BitSet([0x98038000, 0x00000000, 0x0009F180, 0x00000000]);
        public static const FOLLOW_exp_in_whileStmt311:BitSet = new BitSet([0x20000000, 0x00000000]);
        public static const FOLLOW_29_in_whileStmt313:BitSet = new BitSet([0x00000000, 0x00000001]);
        public static const FOLLOW_block_in_whileStmt315:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_32_in_block338:BitSet = new BitSet([0x98038000, 0x00000000, 0x0009F180, 0x00000000]);
        public static const FOLLOW_stmtList_in_block340:BitSet = new BitSet([0x00000000, 0x00000002]);
        public static const FOLLOW_33_in_block342:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_exp_in_expList361:BitSet = new BitSet([0x00000002, 0x00000004]);
        public static const FOLLOW_34_in_expList370:BitSet = new BitSet([0x98038000, 0x00000000, 0x0009F180, 0x00000000]);
        public static const FOLLOW_exp_in_expList372:BitSet = new BitSet([0x00000002, 0x00000004]);
        public static const FOLLOW_34_in_expList378:BitSet = new BitSet([0x00000002, 0x00000004]);
        public static const FOLLOW_assignExp_in_exp408:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_condExp_in_exp414:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_reference_in_assignExp427:BitSet = new BitSet([0x00000000, 0x00007FF8]);
        public static const FOLLOW_35_in_assignExp436:BitSet = new BitSet([0x98038000, 0x00000000, 0x0009F180, 0x00000000]);
        public static const FOLLOW_exp_in_assignExp438:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_36_in_assignExp457:BitSet = new BitSet([0x98038000, 0x00000000, 0x0009F180, 0x00000000]);
        public static const FOLLOW_exp_in_assignExp459:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_37_in_assignExp477:BitSet = new BitSet([0x98038000, 0x00000000, 0x0009F180, 0x00000000]);
        public static const FOLLOW_exp_in_assignExp479:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_38_in_assignExp497:BitSet = new BitSet([0x98038000, 0x00000000, 0x0009F180, 0x00000000]);
        public static const FOLLOW_exp_in_assignExp499:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_39_in_assignExp517:BitSet = new BitSet([0x98038000, 0x00000000, 0x0009F180, 0x00000000]);
        public static const FOLLOW_exp_in_assignExp519:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_40_in_assignExp537:BitSet = new BitSet([0x98038000, 0x00000000, 0x0009F180, 0x00000000]);
        public static const FOLLOW_exp_in_assignExp539:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_41_in_assignExp557:BitSet = new BitSet([0x98038000, 0x00000000, 0x0009F180, 0x00000000]);
        public static const FOLLOW_exp_in_assignExp559:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_42_in_assignExp577:BitSet = new BitSet([0x98038000, 0x00000000, 0x0009F180, 0x00000000]);
        public static const FOLLOW_exp_in_assignExp579:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_43_in_assignExp597:BitSet = new BitSet([0x98038000, 0x00000000, 0x0009F180, 0x00000000]);
        public static const FOLLOW_exp_in_assignExp599:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_44_in_assignExp617:BitSet = new BitSet([0x98038000, 0x00000000, 0x0009F180, 0x00000000]);
        public static const FOLLOW_exp_in_assignExp619:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_45_in_assignExp637:BitSet = new BitSet([0x98038000, 0x00000000, 0x0009F180, 0x00000000]);
        public static const FOLLOW_exp_in_assignExp639:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_46_in_assignExp657:BitSet = new BitSet([0x98038000, 0x00000000, 0x0009F180, 0x00000000]);
        public static const FOLLOW_exp_in_assignExp659:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_logicalOr_in_condExp690:BitSet = new BitSet([0x00000002, 0x00008000]);
        public static const FOLLOW_47_in_condExp708:BitSet = new BitSet([0x98038000, 0x00000000, 0x0009F180, 0x00000000]);
        public static const FOLLOW_exp_in_condExp715:BitSet = new BitSet([0x00000000, 0x00010000]);
        public static const FOLLOW_48_in_condExp720:BitSet = new BitSet([0x98038000, 0x00000000, 0x0009F180, 0x00000000]);
        public static const FOLLOW_exp_in_condExp727:BitSet = new BitSet([0x00000002, 0x00008000]);
        public static const FOLLOW_logicalAnd_in_logicalOr761:BitSet = new BitSet([0x00000002, 0x00060000]);
        public static const FOLLOW_49_in_logicalOr770:BitSet = new BitSet([0x98038000, 0x00000000, 0x0009F180, 0x00000000]);
        public static const FOLLOW_logicalAnd_in_logicalOr773:BitSet = new BitSet([0x00000002, 0x00060000]);
        public static const FOLLOW_50_in_logicalOr779:BitSet = new BitSet([0x98038000, 0x00000000, 0x0009F180, 0x00000000]);
        public static const FOLLOW_logicalAnd_in_logicalOr782:BitSet = new BitSet([0x00000002, 0x00060000]);
        public static const FOLLOW_bitwiseOr_in_logicalAnd799:BitSet = new BitSet([0x00000002, 0x00180000]);
        public static const FOLLOW_51_in_logicalAnd808:BitSet = new BitSet([0x98038000, 0x00000000, 0x0009F180, 0x00000000]);
        public static const FOLLOW_bitwiseOr_in_logicalAnd811:BitSet = new BitSet([0x00000002, 0x00180000]);
        public static const FOLLOW_52_in_logicalAnd817:BitSet = new BitSet([0x98038000, 0x00000000, 0x0009F180, 0x00000000]);
        public static const FOLLOW_bitwiseOr_in_logicalAnd820:BitSet = new BitSet([0x00000002, 0x00180000]);
        public static const FOLLOW_bitwiseXor_in_bitwiseOr836:BitSet = new BitSet([0x00000002, 0x00200000]);
        public static const FOLLOW_53_in_bitwiseOr845:BitSet = new BitSet([0x98038000, 0x00000000, 0x0009F180, 0x00000000]);
        public static const FOLLOW_bitwiseXor_in_bitwiseOr848:BitSet = new BitSet([0x00000002, 0x00200000]);
        public static const FOLLOW_bitwiseAnd_in_bitwiseXor864:BitSet = new BitSet([0x00000002, 0x00400000]);
        public static const FOLLOW_54_in_bitwiseXor873:BitSet = new BitSet([0x98038000, 0x00000000, 0x0009F180, 0x00000000]);
        public static const FOLLOW_bitwiseAnd_in_bitwiseXor876:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_equalExp_in_bitwiseAnd892:BitSet = new BitSet([0x00000002, 0x00800000]);
        public static const FOLLOW_55_in_bitwiseAnd901:BitSet = new BitSet([0x98038000, 0x00000000, 0x0009F180, 0x00000000]);
        public static const FOLLOW_equalExp_in_bitwiseAnd904:BitSet = new BitSet([0x00000002, 0x00800000]);
        public static const FOLLOW_relExp_in_equalExp920:BitSet = new BitSet([0x00000002, 0x0F000000]);
        public static const FOLLOW_56_in_equalExp929:BitSet = new BitSet([0x98038000, 0x00000000, 0x0009F180, 0x00000000]);
        public static const FOLLOW_relExp_in_equalExp932:BitSet = new BitSet([0x00000002, 0x0F000000]);
        public static const FOLLOW_57_in_equalExp938:BitSet = new BitSet([0x98038000, 0x00000000, 0x0009F180, 0x00000000]);
        public static const FOLLOW_relExp_in_equalExp941:BitSet = new BitSet([0x00000002, 0x0F000000]);
        public static const FOLLOW_58_in_equalExp947:BitSet = new BitSet([0x98038000, 0x00000000, 0x0009F180, 0x00000000]);
        public static const FOLLOW_relExp_in_equalExp950:BitSet = new BitSet([0x00000002, 0x0F000000]);
        public static const FOLLOW_59_in_equalExp956:BitSet = new BitSet([0x98038000, 0x00000000, 0x0009F180, 0x00000000]);
        public static const FOLLOW_relExp_in_equalExp959:BitSet = new BitSet([0x00000002, 0x0F000000]);
        public static const FOLLOW_shiftExp_in_relExp976:BitSet = new BitSet([0x00000002, 0xF0000000, 0x0000000F, 0x00000000]);
        public static const FOLLOW_60_in_relExp985:BitSet = new BitSet([0x98038000, 0x00000000, 0x0009F180, 0x00000000]);
        public static const FOLLOW_shiftExp_in_relExp988:BitSet = new BitSet([0x00000002, 0xF0000000, 0x0000000F, 0x00000000]);
        public static const FOLLOW_61_in_relExp994:BitSet = new BitSet([0x98038000, 0x00000000, 0x0009F180, 0x00000000]);
        public static const FOLLOW_shiftExp_in_relExp997:BitSet = new BitSet([0x00000002, 0xF0000000, 0x0000000F, 0x00000000]);
        public static const FOLLOW_62_in_relExp1003:BitSet = new BitSet([0x98038000, 0x00000000, 0x0009F180, 0x00000000]);
        public static const FOLLOW_shiftExp_in_relExp1006:BitSet = new BitSet([0x00000002, 0xF0000000, 0x0000000F, 0x00000000]);
        public static const FOLLOW_63_in_relExp1012:BitSet = new BitSet([0x98038000, 0x00000000, 0x0009F180, 0x00000000]);
        public static const FOLLOW_shiftExp_in_relExp1015:BitSet = new BitSet([0x00000002, 0xF0000000, 0x0000000F, 0x00000000]);
        public static const FOLLOW_64_in_relExp1021:BitSet = new BitSet([0x98038000, 0x00000000, 0x0009F180, 0x00000000]);
        public static const FOLLOW_shiftExp_in_relExp1024:BitSet = new BitSet([0x00000002, 0xF0000000, 0x0000000F, 0x00000000]);
        public static const FOLLOW_65_in_relExp1030:BitSet = new BitSet([0x98038000, 0x00000000, 0x0009F180, 0x00000000]);
        public static const FOLLOW_shiftExp_in_relExp1033:BitSet = new BitSet([0x00000002, 0xF0000000, 0x0000000F, 0x00000000]);
        public static const FOLLOW_66_in_relExp1039:BitSet = new BitSet([0x98038000, 0x00000000, 0x0009F180, 0x00000000]);
        public static const FOLLOW_shiftExp_in_relExp1042:BitSet = new BitSet([0x00000002, 0xF0000000, 0x0000000F, 0x00000000]);
        public static const FOLLOW_67_in_relExp1048:BitSet = new BitSet([0x98038000, 0x00000000, 0x0009F180, 0x00000000]);
        public static const FOLLOW_shiftExp_in_relExp1051:BitSet = new BitSet([0x00000002, 0xF0000000, 0x0000000F, 0x00000000]);
        public static const FOLLOW_addExp_in_shiftExp1067:BitSet = new BitSet([0x00000002, 0x00000000, 0x00000070, 0x00000000]);
        public static const FOLLOW_68_in_shiftExp1076:BitSet = new BitSet([0x98038000, 0x00000000, 0x0009F180, 0x00000000]);
        public static const FOLLOW_addExp_in_shiftExp1079:BitSet = new BitSet([0x00000002, 0x00000000, 0x00000070, 0x00000000]);
        public static const FOLLOW_69_in_shiftExp1085:BitSet = new BitSet([0x98038000, 0x00000000, 0x0009F180, 0x00000000]);
        public static const FOLLOW_addExp_in_shiftExp1088:BitSet = new BitSet([0x00000002, 0x00000000, 0x00000070, 0x00000000]);
        public static const FOLLOW_70_in_shiftExp1094:BitSet = new BitSet([0x98038000, 0x00000000, 0x0009F180, 0x00000000]);
        public static const FOLLOW_addExp_in_shiftExp1097:BitSet = new BitSet([0x00000002, 0x00000000, 0x00000070, 0x00000000]);
        public static const FOLLOW_multExp_in_addExp1113:BitSet = new BitSet([0x00000002, 0x00000000, 0x00000180, 0x00000000]);
        public static const FOLLOW_71_in_addExp1122:BitSet = new BitSet([0x98038000, 0x00000000, 0x0009F180, 0x00000000]);
        public static const FOLLOW_multExp_in_addExp1125:BitSet = new BitSet([0x00000002, 0x00000000, 0x00000180, 0x00000000]);
        public static const FOLLOW_72_in_addExp1131:BitSet = new BitSet([0x98038000, 0x00000000, 0x0009F180, 0x00000000]);
        public static const FOLLOW_multExp_in_addExp1134:BitSet = new BitSet([0x00000002, 0x00000000, 0x00000180, 0x00000000]);
        public static const FOLLOW_unaryExp_in_multExp1152:BitSet = new BitSet([0x00000002, 0x00000000, 0x00000E00, 0x00000000]);
        public static const FOLLOW_73_in_multExp1161:BitSet = new BitSet([0x98038000, 0x00000000, 0x0009F180, 0x00000000]);
        public static const FOLLOW_unaryExp_in_multExp1164:BitSet = new BitSet([0x00000002, 0x00000000, 0x00000E00, 0x00000000]);
        public static const FOLLOW_74_in_multExp1170:BitSet = new BitSet([0x98038000, 0x00000000, 0x0009F180, 0x00000000]);
        public static const FOLLOW_unaryExp_in_multExp1173:BitSet = new BitSet([0x00000002, 0x00000000, 0x00000E00, 0x00000000]);
        public static const FOLLOW_75_in_multExp1179:BitSet = new BitSet([0x98038000, 0x00000000, 0x0009F180, 0x00000000]);
        public static const FOLLOW_unaryExp_in_multExp1182:BitSet = new BitSet([0x00000002, 0x00000000, 0x00000E00, 0x00000000]);
        public static const FOLLOW_71_in_unaryExp1201:BitSet = new BitSet([0x98038000, 0x00000000, 0x0009F180, 0x00000000]);
        public static const FOLLOW_atom_in_unaryExp1204:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_72_in_unaryExp1209:BitSet = new BitSet([0x98038000, 0x00000000, 0x0009F180, 0x00000000]);
        public static const FOLLOW_atom_in_unaryExp1212:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_76_in_unaryExp1217:BitSet = new BitSet([0x98038000, 0x00000000, 0x0009F180, 0x00000000]);
        public static const FOLLOW_atom_in_unaryExp1220:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_77_in_unaryExp1225:BitSet = new BitSet([0x98038000, 0x00000000, 0x0009F180, 0x00000000]);
        public static const FOLLOW_atom_in_unaryExp1228:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_atom_in_unaryExp1234:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_NumberLiteral_in_atom1246:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_StringLiteral_in_atom1251:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_78_in_atom1256:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_79_in_atom1261:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_referenceOrFuncCall_in_atom1266:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_funcDef_in_atom1271:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_28_in_atom1276:BitSet = new BitSet([0x98038000, 0x00000000, 0x0009F180, 0x00000000]);
        public static const FOLLOW_exp_in_atom1279:BitSet = new BitSet([0x20000000, 0x00000000]);
        public static const FOLLOW_29_in_atom1281:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_object_in_reference1296:BitSet = new BitSet([0x10000002, 0x00000000, 0x00050000, 0x00000000]);
        public static const FOLLOW_80_in_reference1315:BitSet = new BitSet([0x98038000, 0x00000000, 0x0009F180, 0x00000000]);
        public static const FOLLOW_exp_in_reference1319:BitSet = new BitSet([0x00000000, 0x00000000, 0x00020000, 0x00000000]);
        public static const FOLLOW_81_in_reference1321:BitSet = new BitSet([0x10000002, 0x00000000, 0x00050000, 0x00000000]);
        public static const FOLLOW_82_in_reference1345:BitSet = new BitSet([0x00020000, 0x00000000]);
        public static const FOLLOW_Identifier_in_reference1349:BitSet = new BitSet([0x10000002, 0x00000000, 0x00050000, 0x00000000]);
        public static const FOLLOW_28_in_reference1371:BitSet = new BitSet([0xB8038000, 0x00000000, 0x0009F180, 0x00000000]);
        public static const FOLLOW_params_in_reference1375:BitSet = new BitSet([0x20000000, 0x00000000]);
        public static const FOLLOW_29_in_reference1378:BitSet = new BitSet([0x00000000, 0x00000000, 0x00010000, 0x00000000]);
        public static const FOLLOW_80_in_reference1383:BitSet = new BitSet([0x98038000, 0x00000000, 0x0009F180, 0x00000000]);
        public static const FOLLOW_exp_in_reference1387:BitSet = new BitSet([0x00000000, 0x00000000, 0x00020000, 0x00000000]);
        public static const FOLLOW_81_in_reference1389:BitSet = new BitSet([0x10000002, 0x00000000, 0x00050000, 0x00000000]);
        public static const FOLLOW_28_in_reference1420:BitSet = new BitSet([0xB8038000, 0x00000000, 0x0009F180, 0x00000000]);
        public static const FOLLOW_params_in_reference1424:BitSet = new BitSet([0x20000000, 0x00000000]);
        public static const FOLLOW_29_in_reference1427:BitSet = new BitSet([0x00000000, 0x00000000, 0x00040000, 0x00000000]);
        public static const FOLLOW_82_in_reference1432:BitSet = new BitSet([0x00020000, 0x00000000]);
        public static const FOLLOW_Identifier_in_reference1436:BitSet = new BitSet([0x10000002, 0x00000000, 0x00050000, 0x00000000]);
        public static const FOLLOW_object_in_referenceOrFuncCall1476:BitSet = new BitSet([0x10000002, 0x00000000, 0x00050000, 0x00000000]);
        public static const FOLLOW_80_in_referenceOrFuncCall1495:BitSet = new BitSet([0x98038000, 0x00000000, 0x0009F180, 0x00000000]);
        public static const FOLLOW_exp_in_referenceOrFuncCall1499:BitSet = new BitSet([0x00000000, 0x00000000, 0x00020000, 0x00000000]);
        public static const FOLLOW_81_in_referenceOrFuncCall1501:BitSet = new BitSet([0x10000002, 0x00000000, 0x00050000, 0x00000000]);
        public static const FOLLOW_82_in_referenceOrFuncCall1521:BitSet = new BitSet([0x00020000, 0x00000000]);
        public static const FOLLOW_Identifier_in_referenceOrFuncCall1525:BitSet = new BitSet([0x10000002, 0x00000000, 0x00050000, 0x00000000]);
        public static const FOLLOW_28_in_referenceOrFuncCall1544:BitSet = new BitSet([0x98038000, 0x00000000, 0x0009F180, 0x00000000]);
        public static const FOLLOW_params_in_referenceOrFuncCall1548:BitSet = new BitSet([0x20000000, 0x00000000]);
        public static const FOLLOW_29_in_referenceOrFuncCall1550:BitSet = new BitSet([0x10000002, 0x00000000, 0x00050000, 0x00000000]);
        public static const FOLLOW_28_in_referenceOrFuncCall1569:BitSet = new BitSet([0x20000000, 0x00000000]);
        public static const FOLLOW_29_in_referenceOrFuncCall1571:BitSet = new BitSet([0x10000002, 0x00000000, 0x00050000, 0x00000000]);
        public static const FOLLOW_83_in_funcDef1600:BitSet = new BitSet([0x10000000, 0x00000000]);
        public static const FOLLOW_28_in_funcDef1609:BitSet = new BitSet([0x00020000, 0x00000000]);
        public static const FOLLOW_args_in_funcDef1613:BitSet = new BitSet([0x20000000, 0x00000000]);
        public static const FOLLOW_29_in_funcDef1615:BitSet = new BitSet([0x00000000, 0x00000001]);
        public static const FOLLOW_block_in_funcDef1619:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_28_in_funcDef1639:BitSet = new BitSet([0x20000000, 0x00000000]);
        public static const FOLLOW_29_in_funcDef1641:BitSet = new BitSet([0x00000000, 0x00000001]);
        public static const FOLLOW_block_in_funcDef1645:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_Identifier_in_args1672:BitSet = new BitSet([0x00000002, 0x00000000, 0x00100000, 0x00000000]);
        public static const FOLLOW_84_in_args1681:BitSet = new BitSet([0x00020000, 0x00000000]);
        public static const FOLLOW_Identifier_in_args1687:BitSet = new BitSet([0x00000002, 0x00000000, 0x00100000, 0x00000000]);
        public static const FOLLOW_Identifier_in_object1704:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_array_in_object1709:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_exp_in_params1721:BitSet = new BitSet([0x00000002, 0x00000000, 0x00100000, 0x00000000]);
        public static const FOLLOW_84_in_params1730:BitSet = new BitSet([0x98038000, 0x00000000, 0x0009F180, 0x00000000]);
        public static const FOLLOW_exp_in_params1736:BitSet = new BitSet([0x00000002, 0x00000000, 0x00100000, 0x00000000]);
        public static const FOLLOW_80_in_array1753:BitSet = new BitSet([0x98038000, 0x00000000, 0x0009F180, 0x00000000]);
        public static const FOLLOW_items_in_array1757:BitSet = new BitSet([0x00000000, 0x00000000, 0x00020000, 0x00000000]);
        public static const FOLLOW_81_in_array1759:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_80_in_array1775:BitSet = new BitSet([0x00000000, 0x00000000, 0x00020000, 0x00000000]);
        public static const FOLLOW_81_in_array1777:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_exp_in_items1799:BitSet = new BitSet([0x00000002, 0x00000000, 0x00100000, 0x00000000]);
        public static const FOLLOW_84_in_items1808:BitSet = new BitSet([0x98038000, 0x00000000, 0x0009F180, 0x00000000]);
        public static const FOLLOW_exp_in_items1814:BitSet = new BitSet([0x00000002, 0x00000000, 0x00100000, 0x00000000]);
        public static const FOLLOW_27_in_synpred5_Expression211:BitSet = new BitSet([0x10000000, 0x00000000]);
        public static const FOLLOW_28_in_synpred5_Expression213:BitSet = new BitSet([0x98038000, 0x00000000, 0x0009F180, 0x00000000]);
        public static const FOLLOW_exp_in_synpred5_Expression215:BitSet = new BitSet([0x20000000, 0x00000000]);
        public static const FOLLOW_29_in_synpred5_Expression217:BitSet = new BitSet([0x00000000, 0x00000001]);
        public static const FOLLOW_block_in_synpred5_Expression221:BitSet = new BitSet([0x40000000, 0x00000000]);
        public static const FOLLOW_30_in_synpred5_Expression223:BitSet = new BitSet([0x00000000, 0x00000001]);
        public static const FOLLOW_block_in_synpred5_Expression227:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_27_in_synpred6_Expression246:BitSet = new BitSet([0x10000000, 0x00000000]);
        public static const FOLLOW_28_in_synpred6_Expression248:BitSet = new BitSet([0x98038000, 0x00000000, 0x0009F180, 0x00000000]);
        public static const FOLLOW_exp_in_synpred6_Expression250:BitSet = new BitSet([0x20000000, 0x00000000]);
        public static const FOLLOW_29_in_synpred6_Expression252:BitSet = new BitSet([0x00000000, 0x00000001]);
        public static const FOLLOW_block_in_synpred6_Expression254:BitSet = new BitSet([0x40000000, 0x00000000]);
        public static const FOLLOW_30_in_synpred6_Expression256:BitSet = new BitSet([0x08000000, 0x00000000]);
        public static const FOLLOW_ifStmt_in_synpred6_Expression258:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_34_in_synpred7_Expression370:BitSet = new BitSet([0x98038000, 0x00000000, 0x0009F180, 0x00000000]);
        public static const FOLLOW_exp_in_synpred7_Expression372:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_34_in_synpred8_Expression378:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_assignExp_in_synpred9_Expression408:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_47_in_synpred21_Expression708:BitSet = new BitSet([0x98038000, 0x00000000, 0x0009F180, 0x00000000]);
        public static const FOLLOW_exp_in_synpred21_Expression715:BitSet = new BitSet([0x00000000, 0x00010000]);
        public static const FOLLOW_48_in_synpred21_Expression720:BitSet = new BitSet([0x98038000, 0x00000000, 0x0009F180, 0x00000000]);
        public static const FOLLOW_exp_in_synpred21_Expression727:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_71_in_synpred44_Expression1122:BitSet = new BitSet([0x98038000, 0x00000000, 0x0009F180, 0x00000000]);
        public static const FOLLOW_multExp_in_synpred44_Expression1125:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_72_in_synpred45_Expression1131:BitSet = new BitSet([0x98038000, 0x00000000, 0x0009F180, 0x00000000]);
        public static const FOLLOW_multExp_in_synpred45_Expression1134:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_28_in_synpred62_Expression1371:BitSet = new BitSet([0xB8038000, 0x00000000, 0x0009F180, 0x00000000]);
        public static const FOLLOW_params_in_synpred62_Expression1375:BitSet = new BitSet([0x20000000, 0x00000000]);
        public static const FOLLOW_29_in_synpred62_Expression1378:BitSet = new BitSet([0x00000000, 0x00000000, 0x00010000, 0x00000000]);
        public static const FOLLOW_80_in_synpred62_Expression1383:BitSet = new BitSet([0x98038000, 0x00000000, 0x0009F180, 0x00000000]);
        public static const FOLLOW_exp_in_synpred62_Expression1387:BitSet = new BitSet([0x00000000, 0x00000000, 0x00020000, 0x00000000]);
        public static const FOLLOW_81_in_synpred62_Expression1389:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_28_in_synpred64_Expression1420:BitSet = new BitSet([0xB8038000, 0x00000000, 0x0009F180, 0x00000000]);
        public static const FOLLOW_params_in_synpred64_Expression1424:BitSet = new BitSet([0x20000000, 0x00000000]);
        public static const FOLLOW_29_in_synpred64_Expression1427:BitSet = new BitSet([0x00000000, 0x00000000, 0x00040000, 0x00000000]);
        public static const FOLLOW_82_in_synpred64_Expression1432:BitSet = new BitSet([0x00020000, 0x00000000]);
        public static const FOLLOW_Identifier_in_synpred64_Expression1436:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_80_in_synpred65_Expression1495:BitSet = new BitSet([0x98038000, 0x00000000, 0x0009F180, 0x00000000]);
        public static const FOLLOW_exp_in_synpred65_Expression1499:BitSet = new BitSet([0x00000000, 0x00000000, 0x00020000, 0x00000000]);
        public static const FOLLOW_81_in_synpred65_Expression1501:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_28_in_synpred67_Expression1544:BitSet = new BitSet([0x98038000, 0x00000000, 0x0009F180, 0x00000000]);
        public static const FOLLOW_params_in_synpred67_Expression1548:BitSet = new BitSet([0x20000000, 0x00000000]);
        public static const FOLLOW_29_in_synpred67_Expression1550:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_28_in_synpred68_Expression1569:BitSet = new BitSet([0x20000000, 0x00000000]);
        public static const FOLLOW_29_in_synpred68_Expression1571:BitSet = new BitSet([0x00000002, 0x00000000]);

    }
}