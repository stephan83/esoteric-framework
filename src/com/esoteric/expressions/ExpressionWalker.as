// $ANTLR 3.2 Sep 23, 2009 12:02:23 C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g 2010-01-21 17:46:53
package com.esoteric.expressions {
    import org.antlr.runtime.*;
        import org.antlr.runtime.tree.*;    

    public class ExpressionWalker extends TreeParser {
        public static const tokenNames:Array = [
            "<invalid>", "<EOR>", "<DOWN>", "<UP>", "StmtList", "ExpList", "FuncCall", "PropRef", "PropExp", "CondExp", "CreateArray", "IfStmt", "WhileStmt", "ForStmt", "FuncDef", "NumberLiteral", "StringLiteral", "Identifier", "LineComment", "MultilineComment", "Digit", "Exponent", "HexDigit", "EscapeSequence", "WhiteSpace", "Letter", "UnicodeEscapeChar", "'if'", "'('", "')'", "'else'", "'while'", "'{'", "'}'", "';'", "'='", "'*='", "'/='", "'%='", "'+='", "'-='", "'<<='", "'>>='", "'>>>='", "'&='", "'^='", "'|='", "'?'", "':'", "'||'", "'or'", "'&&'", "'and'", "'|'", "'^'", "'&'", "'=='", "'!='", "'==='", "'!=='", "'<'", "'lt'", "'>'", "'gt'", "'<='", "'lte'", "'>='", "'gte'", "'<<'", "'>>'", "'>>>'", "'+'", "'-'", "'*'", "'/'", "'%'", "'~'", "'!'", "'true'", "'false'", "'['", "']'", "'.'", "'function'", "','"
        ];
        public static const T__68:int=68;
        public static const T__69:int=69;
        public static const T__66:int=66;
        public static const T__67:int=67;
        public static const T__64:int=64;
        public static const T__29:int=29;
        public static const StmtList:int=4;
        public static const T__65:int=65;
        public static const T__28:int=28;
        public static const T__62:int=62;
        public static const T__27:int=27;
        public static const T__63:int=63;
        public static const ExpList:int=5;
        public static const LineComment:int=18;
        public static const Exponent:int=21;
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
        public static const T__46:int=46;
        public static const T__80:int=80;
        public static const T__47:int=47;
        public static const T__81:int=81;
        public static const T__44:int=44;
        public static const T__82:int=82;
        public static const T__45:int=45;
        public static const T__83:int=83;
        public static const UnicodeEscapeChar:int=26;
        public static const T__48:int=48;
        public static const NumberLiteral:int=15;
        public static const T__49:int=49;
        public static const Digit:int=20;
        public static const T__84:int=84;
        public static const StringLiteral:int=16;
        public static const T__30:int=30;
        public static const T__31:int=31;
        public static const T__32:int=32;
        public static const T__33:int=33;
        public static const T__71:int=71;
        public static const T__34:int=34;
        public static const T__72:int=72;
        public static const T__35:int=35;
        public static const T__36:int=36;
        public static const T__70:int=70;
        public static const T__37:int=37;
        public static const T__38:int=38;
        public static const FuncCall:int=6;
        public static const T__39:int=39;
        public static const PropRef:int=7;
        public static const T__76:int=76;
        public static const T__75:int=75;
        public static const MultilineComment:int=19;
        public static const T__74:int=74;
        public static const T__73:int=73;
        public static const EscapeSequence:int=23;
        public static const Letter:int=25;
        public static const T__79:int=79;
        public static const T__78:int=78;
        public static const T__77:int=77;

        // delegates
        // delegators


            public function ExpressionWalker(input:TreeNodeStream, state:RecognizerSharedState = null) {
                super(input, state);

                dfa10 = new DFA(this, 10,
                            "106:1: value : ( ^(o= ( '||' | 'or' | '&&' | 'and' | '|' | '^' | '&' | '==' | '!=' | '===' | '!==' | '<' | 'lt' | '>' | 'gt' | '<=' | 'lte' | '>=' | 'gte' | '<<' | '>>' | '>>>' | '+' | '-' | '*' | '/' | '%' ) exp exp ) | ^( CondExp exp exp exp ) | ^(o= ( '-' | '+' | '~' | '!' ) exp ) | ^(f= FuncCall ( exp )+ ) | ^( PropRef exp i= Identifier ) | ^( PropExp exp exp ) | NumberLiteral | StringLiteral | 'true' | 'false' | i= Identifier | ^(a= CreateArray ( exp )* ) | funcDef );",
                            DFA10_eot, DFA10_eof, DFA10_min,
                            DFA10_max, DFA10_accept, DFA10_special,
                            DFA10_transition, DFA10_specialStateTransition);

                this.state.ruleMemo = new Array(79+1);
                 
            }
            

        public override function get tokenNames():Array { return ExpressionWalker.tokenNames; }
        public override function get grammarFileName():String { return "C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g"; }


        	private var _codegen:ExpressionCodegen = new ExpressionCodegen();
        	
        	public function get instructions():Array { return _codegen.instructions; }
        			
        	private function cleanUpString(s:String):String
        	{
        		if (s.charAt(0) == '"')
        		{
        			var result:String = s.substr(1, s.length - 2).replace(/\\\"/g, '"');
        		}
        		else
        		{
        			result = s.substr(1, s.length - 2).replace(/\\\'/g, "'");
        		}
        		
        		result = result.replace(/\\\\/g, '\\');
        		result = result.replace(/\\b/g, '\b');
        		result = result.replace(/\\t/g, '\t');
        		result = result.replace(/\\n/g, '\n');
        		result = result.replace(/\\r/g, '\r');
        		
        		return result;
        	}


        // $ANTLR start main
        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:42:1: main : stmtList ;
        public final function main():void {
            var main_StartIndex:int = input.index;
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 1) ) { return ; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:42:6: ( stmtList )
                // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:42:8: stmtList
                {
                pushFollow(FOLLOW_stmtList_in_main63);
                stmtList();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return ;

                }

            }
            catch (re:RecognitionException) {
                reportError(re);
                recoverStream(input,re);
            }
            finally {
                if ( this.state.backtracking>0 ) { memoize(input, 1, main_StartIndex); }
            }
            return ;
        }
        // $ANTLR end main

        // $ANTLR start stmtList
        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:45:1: stmtList : ( ^( StmtList ( stmt )* ) | EOF );
        public final function stmtList():void {
            var stmtList_StartIndex:int = input.index;
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 2) ) { return ; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:45:9: ( ^( StmtList ( stmt )* ) | EOF )
                var alt2:int=2;
                var LA2_0:int = input.LA(1);

                if ( (LA2_0==4) ) {
                    alt2=1;
                }
                else if ( (LA2_0==-1) ) {
                    alt2=2;
                }
                else {
                    if (this.state.backtracking>0) {this.state.failed=true; return ;}
                    throw new NoViableAltException("", 2, 0, input);

                }
                switch (alt2) {
                    case 1 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:45:11: ^( StmtList ( stmt )* )
                        {
                        matchStream(input,StmtList,FOLLOW_StmtList_in_stmtList74); if (this.state.failed) return ;

                        if ( input.LA(1)==TokenConstants.DOWN ) {
                            matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return ;
                            // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:45:22: ( stmt )*
                            loop1:
                            do {
                                var alt1:int=2;
                                var LA1_0:int = input.LA(1);

                                if ( (LA1_0==5||(LA1_0>=11 && LA1_0<=12)) ) {
                                    alt1=1;
                                }


                                switch (alt1) {
                            	case 1 :
                            	    // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:0:0: stmt
                            	    {
                            	    pushFollow(FOLLOW_stmt_in_stmtList76);
                            	    stmt();

                            	    state._fsp = state._fsp - 1;
                            	    if (this.state.failed) return ;

                            	    }
                            	    break;

                            	default :
                            	    break loop1;
                                }
                            } while (true);


                            matchStream(input, TokenConstants.UP, null); if (this.state.failed) return ;
                        }

                        }
                        break;
                    case 2 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:46:4: EOF
                        {
                        matchStream(input,EOF,FOLLOW_EOF_in_stmtList83); if (this.state.failed) return ;

                        }
                        break;

                }
            }
            catch (re:RecognitionException) {
                reportError(re);
                recoverStream(input,re);
            }
            finally {
                if ( this.state.backtracking>0 ) { memoize(input, 2, stmtList_StartIndex); }
            }
            return ;
        }
        // $ANTLR end stmtList

        // $ANTLR start stmt
        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:49:1: stmt : ( expList | ifStmt | whileStmt );
        public final function stmt():void {
            var stmt_StartIndex:int = input.index;
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 3) ) { return ; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:49:6: ( expList | ifStmt | whileStmt )
                var alt3:int=3;
                switch ( input.LA(1) ) {
                case ExpList:
                    {
                    alt3=1;
                    }
                    break;
                case IfStmt:
                    {
                    alt3=2;
                    }
                    break;
                case WhileStmt:
                    {
                    alt3=3;
                    }
                    break;
                default:
                    if (this.state.backtracking>0) {this.state.failed=true; return ;}
                    throw new NoViableAltException("", 3, 0, input);

                }

                switch (alt3) {
                    case 1 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:49:8: expList
                        {
                        pushFollow(FOLLOW_expList_in_stmt94);
                        expList();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return ;

                        }
                        break;
                    case 2 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:50:4: ifStmt
                        {
                        pushFollow(FOLLOW_ifStmt_in_stmt99);
                        ifStmt();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return ;

                        }
                        break;
                    case 3 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:51:4: whileStmt
                        {
                        pushFollow(FOLLOW_whileStmt_in_stmt104);
                        whileStmt();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return ;

                        }
                        break;

                }
            }
            catch (re:RecognitionException) {
                reportError(re);
                recoverStream(input,re);
            }
            finally {
                if ( this.state.backtracking>0 ) { memoize(input, 3, stmt_StartIndex); }
            }
            return ;
        }
        // $ANTLR end stmt

        // $ANTLR start expList
        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:54:1: expList : ^( ExpList ( exp )* ) ;
        public final function expList():void {
            var expList_StartIndex:int = input.index;
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 4) ) { return ; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:54:9: ( ^( ExpList ( exp )* ) )
                // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:54:11: ^( ExpList ( exp )* )
                {
                matchStream(input,ExpList,FOLLOW_ExpList_in_expList116); if (this.state.failed) return ;

                if ( input.LA(1)==TokenConstants.DOWN ) {
                    matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return ;
                    // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:54:21: ( exp )*
                    loop4:
                    do {
                        var alt4:int=2;
                        var LA4_0:int = input.LA(1);

                        if ( ((LA4_0>=6 && LA4_0<=10)||(LA4_0>=14 && LA4_0<=17)||(LA4_0>=35 && LA4_0<=46)||(LA4_0>=49 && LA4_0<=79)) ) {
                            alt4=1;
                        }


                        switch (alt4) {
                    	case 1 :
                    	    // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:0:0: exp
                    	    {
                    	    pushFollow(FOLLOW_exp_in_expList118);
                    	    exp();

                    	    state._fsp = state._fsp - 1;
                    	    if (this.state.failed) return ;

                    	    }
                    	    break;

                    	default :
                    	    break loop4;
                        }
                    } while (true);


                    matchStream(input, TokenConstants.UP, null); if (this.state.failed) return ;
                }

                }

            }
            catch (re:RecognitionException) {
                reportError(re);
                recoverStream(input,re);
            }
            finally {
                if ( this.state.backtracking>0 ) { memoize(input, 4, expList_StartIndex); }
            }
            return ;
        }
        // $ANTLR end expList

        // $ANTLR start ifStmt
        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:57:1: ifStmt : ( ^( IfStmt exp stmtList stmtList ) | ^( IfStmt exp stmtList ifStmt ) | ^( IfStmt exp stmtList ) );
        public final function ifStmt():void {
            var ifStmt_StartIndex:int = input.index;
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 5) ) { return ; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:57:8: ( ^( IfStmt exp stmtList stmtList ) | ^( IfStmt exp stmtList ifStmt ) | ^( IfStmt exp stmtList ) )
                var alt5:int=3;
                var LA5_0:int = input.LA(1);

                if ( (LA5_0==11) ) {
                    var LA5_1:int = input.LA(2);

                    if ( (synpred6_ExpressionWalker()) ) {
                        alt5=1;
                    }
                    else if ( (synpred7_ExpressionWalker()) ) {
                        alt5=2;
                    }
                    else if ( (true) ) {
                        alt5=3;
                    }
                    else {
                        if (this.state.backtracking>0) {this.state.failed=true; return ;}
                        throw new NoViableAltException("", 5, 1, input);

                    }
                }
                else {
                    if (this.state.backtracking>0) {this.state.failed=true; return ;}
                    throw new NoViableAltException("", 5, 0, input);

                }
                switch (alt5) {
                    case 1 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:57:10: ^( IfStmt exp stmtList stmtList )
                        {
                        matchStream(input,IfStmt,FOLLOW_IfStmt_in_ifStmt136); if (this.state.failed) return ;

                        matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return ;
                        pushFollow(FOLLOW_exp_in_ifStmt141);
                        exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return ;
                        if ( this.state.backtracking==0 ) {
                           _codegen.beginif() 
                        }
                        pushFollow(FOLLOW_stmtList_in_ifStmt153);
                        stmtList();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return ;
                        if ( this.state.backtracking==0 ) {
                           _codegen.beginelse() 
                        }
                        pushFollow(FOLLOW_stmtList_in_ifStmt164);
                        stmtList();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return ;
                        if ( this.state.backtracking==0 ) {
                           _codegen.endif() 
                        }

                        matchStream(input, TokenConstants.UP, null); if (this.state.failed) return ;

                        }
                        break;
                    case 2 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:64:4: ^( IfStmt exp stmtList ifStmt )
                        {
                        matchStream(input,IfStmt,FOLLOW_IfStmt_in_ifStmt187); if (this.state.failed) return ;

                        matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return ;
                        pushFollow(FOLLOW_exp_in_ifStmt192);
                        exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return ;
                        if ( this.state.backtracking==0 ) {
                           _codegen.beginif() 
                        }
                        pushFollow(FOLLOW_stmtList_in_ifStmt204);
                        stmtList();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return ;
                        if ( this.state.backtracking==0 ) {
                           _codegen.beginelse() 
                        }
                        pushFollow(FOLLOW_ifStmt_in_ifStmt215);
                        ifStmt();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return ;
                        if ( this.state.backtracking==0 ) {
                           _codegen.endif() 
                        }

                        matchStream(input, TokenConstants.UP, null); if (this.state.failed) return ;

                        }
                        break;
                    case 3 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:71:4: ^( IfStmt exp stmtList )
                        {
                        matchStream(input,IfStmt,FOLLOW_IfStmt_in_ifStmt239); if (this.state.failed) return ;

                        matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return ;
                        pushFollow(FOLLOW_exp_in_ifStmt244);
                        exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return ;
                        if ( this.state.backtracking==0 ) {
                           _codegen.beginif() 
                        }
                        pushFollow(FOLLOW_stmtList_in_ifStmt256);
                        stmtList();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return ;
                        if ( this.state.backtracking==0 ) {
                           _codegen.endif(false) 
                        }

                        matchStream(input, TokenConstants.UP, null); if (this.state.failed) return ;

                        }
                        break;

                }
            }
            catch (re:RecognitionException) {
                reportError(re);
                recoverStream(input,re);
            }
            finally {
                if ( this.state.backtracking>0 ) { memoize(input, 5, ifStmt_StartIndex); }
            }
            return ;
        }
        // $ANTLR end ifStmt

        // $ANTLR start whileStmt
        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:78:1: whileStmt : ^( WhileStmt exp stmtList ) ;
        public final function whileStmt():void {
            var whileStmt_StartIndex:int = input.index;
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 6) ) { return ; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:79:2: ( ^( WhileStmt exp stmtList ) )
                // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:79:4: ^( WhileStmt exp stmtList )
                {
                matchStream(input,WhileStmt,FOLLOW_WhileStmt_in_whileStmt283); if (this.state.failed) return ;

                if ( this.state.backtracking==0 ) {
                   _codegen.prewhile() 
                }

                matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return ;
                pushFollow(FOLLOW_exp_in_whileStmt294);
                exp();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return ;
                if ( this.state.backtracking==0 ) {
                   _codegen.beginwhile() 
                }
                pushFollow(FOLLOW_stmtList_in_whileStmt306);
                stmtList();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return ;
                if ( this.state.backtracking==0 ) {
                   _codegen.endwhile() 
                }

                matchStream(input, TokenConstants.UP, null); if (this.state.failed) return ;

                }

            }
            catch (re:RecognitionException) {
                reportError(re);
                recoverStream(input,re);
            }
            finally {
                if ( this.state.backtracking>0 ) { memoize(input, 6, whileStmt_StartIndex); }
            }
            return ;
        }
        // $ANTLR end whileStmt

        // $ANTLR start exp
        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:86:1: exp : ( set | value );
        public final function exp():void {
            var exp_StartIndex:int = input.index;
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 7) ) { return ; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:86:5: ( set | value )
                var alt6:int=2;
                var LA6_0:int = input.LA(1);

                if ( ((LA6_0>=35 && LA6_0<=46)) ) {
                    alt6=1;
                }
                else if ( ((LA6_0>=6 && LA6_0<=10)||(LA6_0>=14 && LA6_0<=17)||(LA6_0>=49 && LA6_0<=79)) ) {
                    alt6=2;
                }
                else {
                    if (this.state.backtracking>0) {this.state.failed=true; return ;}
                    throw new NoViableAltException("", 6, 0, input);

                }
                switch (alt6) {
                    case 1 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:86:7: set
                        {
                        pushFollow(FOLLOW_set_in_exp326);
                        set();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return ;

                        }
                        break;
                    case 2 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:87:4: value
                        {
                        pushFollow(FOLLOW_value_in_exp331);
                        value();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return ;

                        }
                        break;

                }
            }
            catch (re:RecognitionException) {
                reportError(re);
                recoverStream(input,re);
            }
            finally {
                if ( this.state.backtracking>0 ) { memoize(input, 7, exp_StartIndex); }
            }
            return ;
        }
        // $ANTLR end exp

        // $ANTLR start set
        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:90:1: set : ^(o= ( '=' | '*=' | '/=' | '%=' | '+=' | '-=' | '<<=' | '>>=' | '>>>=' | '&=' | '^=' | '|=' ) exp ( seti | sete | setr ) ) ;
        public final function set():void {
            var set_StartIndex:int = input.index;
            var o:Object=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 8) ) { return ; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:90:5: ( ^(o= ( '=' | '*=' | '/=' | '%=' | '+=' | '-=' | '<<=' | '>>=' | '>>>=' | '&=' | '^=' | '|=' ) exp ( seti | sete | setr ) ) )
                // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:90:7: ^(o= ( '=' | '*=' | '/=' | '%=' | '+=' | '-=' | '<<=' | '>>=' | '>>>=' | '&=' | '^=' | '|=' ) exp ( seti | sete | setr ) )
                {
                o=Object(input.LT(1));
                if ( (input.LA(1)>=35 && input.LA(1)<=46) ) {
                    input.consume();
                    this.state.errorRecovery=false;this.state.failed=false;
                }
                else {
                    if (this.state.backtracking>0) {this.state.failed=true; return ;}
                    throw new MismatchedSetException(null,input);
                }


                matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return ;
                pushFollow(FOLLOW_exp_in_set400);
                exp();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return ;
                // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:92:8: ( seti | sete | setr )
                var alt7:int=3;
                switch ( input.LA(1) ) {
                case Identifier:
                    {
                    alt7=1;
                    }
                    break;
                case PropExp:
                    {
                    alt7=2;
                    }
                    break;
                case PropRef:
                    {
                    alt7=3;
                    }
                    break;
                default:
                    if (this.state.backtracking>0) {this.state.failed=true; return ;}
                    throw new NoViableAltException("", 7, 0, input);

                }

                switch (alt7) {
                    case 1 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:92:9: seti
                        {
                        pushFollow(FOLLOW_seti_in_set403);
                        seti();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return ;

                        }
                        break;
                    case 2 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:92:16: sete
                        {
                        pushFollow(FOLLOW_sete_in_set407);
                        sete();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return ;

                        }
                        break;
                    case 3 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:92:23: setr
                        {
                        pushFollow(FOLLOW_setr_in_set411);
                        setr();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return ;

                        }
                        break;

                }


                matchStream(input, TokenConstants.UP, null); if (this.state.failed) return ;
                if ( this.state.backtracking==0 ) {
                   _codegen.save((o!=null?o.text:null)); 
                }

                }

            }
            catch (re:RecognitionException) {
                reportError(re);
                recoverStream(input,re);
            }
            finally {
                if ( this.state.backtracking>0 ) { memoize(input, 8, set_StartIndex); }
            }
            return ;
        }
        // $ANTLR end set

        // $ANTLR start seti
        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:96:1: seti : i= Identifier ;
        public final function seti():void {
            var seti_StartIndex:int = input.index;
            var i:Object=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 9) ) { return ; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:96:6: (i= Identifier )
                // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:96:8: i= Identifier
                {
                i=Object(matchStream(input,Identifier,FOLLOW_Identifier_in_seti436)); if (this.state.failed) return ;
                if ( this.state.backtracking==0 ) {
                   _codegen.pushc();  
                }
                if ( this.state.backtracking==0 ) {
                   _codegen.push((i!=null?i.text:null)); 
                }

                }

            }
            catch (re:RecognitionException) {
                reportError(re);
                recoverStream(input,re);
            }
            finally {
                if ( this.state.backtracking>0 ) { memoize(input, 9, seti_StartIndex); }
            }
            return ;
        }
        // $ANTLR end seti

        // $ANTLR start sete
        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:100:1: sete : ^( PropExp exp exp ) ;
        public final function sete():void {
            var sete_StartIndex:int = input.index;
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 10) ) { return ; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:100:6: ( ^( PropExp exp exp ) )
                // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:100:8: ^( PropExp exp exp )
                {
                matchStream(input,PropExp,FOLLOW_PropExp_in_sete466); if (this.state.failed) return ;

                matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return ;
                pushFollow(FOLLOW_exp_in_sete468);
                exp();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return ;
                pushFollow(FOLLOW_exp_in_sete470);
                exp();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return ;

                matchStream(input, TokenConstants.UP, null); if (this.state.failed) return ;
                if ( this.state.backtracking==0 ) {
                    
                }

                }

            }
            catch (re:RecognitionException) {
                reportError(re);
                recoverStream(input,re);
            }
            finally {
                if ( this.state.backtracking>0 ) { memoize(input, 10, sete_StartIndex); }
            }
            return ;
        }
        // $ANTLR end sete

        // $ANTLR start setr
        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:103:1: setr : ^( PropRef exp i= Identifier ) ;
        public final function setr():void {
            var setr_StartIndex:int = input.index;
            var i:Object=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 11) ) { return ; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:103:6: ( ^( PropRef exp i= Identifier ) )
                // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:103:8: ^( PropRef exp i= Identifier )
                {
                matchStream(input,PropRef,FOLLOW_PropRef_in_setr488); if (this.state.failed) return ;

                matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return ;
                pushFollow(FOLLOW_exp_in_setr490);
                exp();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return ;
                i=Object(matchStream(input,Identifier,FOLLOW_Identifier_in_setr494)); if (this.state.failed) return ;

                matchStream(input, TokenConstants.UP, null); if (this.state.failed) return ;
                if ( this.state.backtracking==0 ) {
                   _codegen.push((i!=null?i.text:null));  
                }

                }

            }
            catch (re:RecognitionException) {
                reportError(re);
                recoverStream(input,re);
            }
            finally {
                if ( this.state.backtracking>0 ) { memoize(input, 11, setr_StartIndex); }
            }
            return ;
        }
        // $ANTLR end setr

        // $ANTLR start value
        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:106:1: value : ( ^(o= ( '||' | 'or' | '&&' | 'and' | '|' | '^' | '&' | '==' | '!=' | '===' | '!==' | '<' | 'lt' | '>' | 'gt' | '<=' | 'lte' | '>=' | 'gte' | '<<' | '>>' | '>>>' | '+' | '-' | '*' | '/' | '%' ) exp exp ) | ^( CondExp exp exp exp ) | ^(o= ( '-' | '+' | '~' | '!' ) exp ) | ^(f= FuncCall ( exp )+ ) | ^( PropRef exp i= Identifier ) | ^( PropExp exp exp ) | NumberLiteral | StringLiteral | 'true' | 'false' | i= Identifier | ^(a= CreateArray ( exp )* ) | funcDef );
        public final function value():TreeRuleReturnScope {
            var retval:TreeRuleReturnScope = new TreeRuleReturnScope();
            retval.start = input.LT(1);
            var value_StartIndex:int = input.index;
            var o:Object=null;
            var f:Object=null;
            var i:Object=null;
            var a:Object=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 12) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:106:7: ( ^(o= ( '||' | 'or' | '&&' | 'and' | '|' | '^' | '&' | '==' | '!=' | '===' | '!==' | '<' | 'lt' | '>' | 'gt' | '<=' | 'lte' | '>=' | 'gte' | '<<' | '>>' | '>>>' | '+' | '-' | '*' | '/' | '%' ) exp exp ) | ^( CondExp exp exp exp ) | ^(o= ( '-' | '+' | '~' | '!' ) exp ) | ^(f= FuncCall ( exp )+ ) | ^( PropRef exp i= Identifier ) | ^( PropExp exp exp ) | NumberLiteral | StringLiteral | 'true' | 'false' | i= Identifier | ^(a= CreateArray ( exp )* ) | funcDef )
                var alt10:int=13;
                alt10 = dfa10.predict(input);
                switch (alt10) {
                    case 1 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:106:9: ^(o= ( '||' | 'or' | '&&' | 'and' | '|' | '^' | '&' | '==' | '!=' | '===' | '!==' | '<' | 'lt' | '>' | 'gt' | '<=' | 'lte' | '>=' | 'gte' | '<<' | '>>' | '>>>' | '+' | '-' | '*' | '/' | '%' ) exp exp )
                        {
                        o=Object(input.LT(1));
                        if ( (input.LA(1)>=49 && input.LA(1)<=75) ) {
                            input.consume();
                            this.state.errorRecovery=false;this.state.failed=false;
                        }
                        else {
                            if (this.state.backtracking>0) {this.state.failed=true; return retval;}
                            throw new MismatchedSetException(null,input);
                        }


                        matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return retval;
                        pushFollow(FOLLOW_exp_in_value628);
                        exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        pushFollow(FOLLOW_exp_in_value630);
                        exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;

                        matchStream(input, TokenConstants.UP, null); if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                           _codegen.binop((o!=null?o.text:null)) 
                        }

                        }
                        break;
                    case 2 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:111:4: ^( CondExp exp exp exp )
                        {
                        matchStream(input,CondExp,FOLLOW_CondExp_in_value655); if (this.state.failed) return retval;

                        matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return retval;
                        pushFollow(FOLLOW_exp_in_value666);
                        exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                           _codegen.beginif() 
                        }
                        pushFollow(FOLLOW_exp_in_value678);
                        exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                           _codegen.beginelse() 
                        }
                        pushFollow(FOLLOW_exp_in_value690);
                        exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                           _codegen.endif() 
                        }

                        matchStream(input, TokenConstants.UP, null); if (this.state.failed) return retval;

                        }
                        break;
                    case 3 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:118:4: ^(o= ( '-' | '+' | '~' | '!' ) exp )
                        {
                        o=Object(input.LT(1));
                        if ( (input.LA(1)>=71 && input.LA(1)<=72)||(input.LA(1)>=76 && input.LA(1)<=77) ) {
                            input.consume();
                            this.state.errorRecovery=false;this.state.failed=false;
                        }
                        else {
                            if (this.state.backtracking>0) {this.state.failed=true; return retval;}
                            throw new MismatchedSetException(null,input);
                        }


                        matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return retval;
                        pushFollow(FOLLOW_exp_in_value735);
                        exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;

                        matchStream(input, TokenConstants.UP, null); if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                           _codegen.unaryop((o!=null?o.text:null)) 
                        }

                        }
                        break;
                    case 4 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:123:4: ^(f= FuncCall ( exp )+ )
                        {
                        f=Object(matchStream(input,FuncCall,FOLLOW_FuncCall_in_value758)); if (this.state.failed) return retval;

                        matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return retval;
                        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:123:17: ( exp )+
                        var cnt8:int=0;
                        loop8:
                        do {
                            var alt8:int=2;
                            var LA8_0:int = input.LA(1);

                            if ( ((LA8_0>=6 && LA8_0<=10)||(LA8_0>=14 && LA8_0<=17)||(LA8_0>=35 && LA8_0<=46)||(LA8_0>=49 && LA8_0<=79)) ) {
                                alt8=1;
                            }


                            switch (alt8) {
                        	case 1 :
                        	    // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:0:0: exp
                        	    {
                        	    pushFollow(FOLLOW_exp_in_value760);
                        	    exp();

                        	    state._fsp = state._fsp - 1;
                        	    if (this.state.failed) return retval;

                        	    }
                        	    break;

                        	default :
                        	    if ( cnt8 >= 1 ) break loop8;
                        	    if (this.state.backtracking>0) {this.state.failed=true; return retval;}
                                    throw new EarlyExitException(8, input);

                            }
                            cnt8++;
                        } while (true);


                        matchStream(input, TokenConstants.UP, null); if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                           _codegen.call(f.childCount - 1); 
                        }

                        }
                        break;
                    case 5 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:125:4: ^( PropRef exp i= Identifier )
                        {
                        matchStream(input,PropRef,FOLLOW_PropRef_in_value776); if (this.state.failed) return retval;

                        matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return retval;
                        pushFollow(FOLLOW_exp_in_value778);
                        exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        i=Object(matchStream(input,Identifier,FOLLOW_Identifier_in_value782)); if (this.state.failed) return retval;

                        matchStream(input, TokenConstants.UP, null); if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                           _codegen.push((i!=null?i.text:null)); 
                        }
                        if ( this.state.backtracking==0 ) {
                           _codegen.load(); 
                        }

                        }
                        break;
                    case 6 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:128:4: ^( PropExp exp exp )
                        {
                        matchStream(input,PropExp,FOLLOW_PropExp_in_value807); if (this.state.failed) return retval;

                        matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return retval;
                        pushFollow(FOLLOW_exp_in_value809);
                        exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        pushFollow(FOLLOW_exp_in_value811);
                        exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;

                        matchStream(input, TokenConstants.UP, null); if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                           _codegen.load(); 
                        }

                        }
                        break;
                    case 7 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:130:4: NumberLiteral
                        {
                        matchStream(input,NumberLiteral,FOLLOW_NumberLiteral_in_value825); if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                           _codegen.push(Number(input.tokenStream.toStringWithRange(
                            input.treeAdaptor.getTokenStartIndex(retval.start),
                            input.treeAdaptor.getTokenStopIndex(retval.start)))); 
                        }

                        }
                        break;
                    case 8 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:132:4: StringLiteral
                        {
                        matchStream(input,StringLiteral,FOLLOW_StringLiteral_in_value839); if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                           _codegen.push(cleanUpString(input.tokenStream.toStringWithRange(
                            input.treeAdaptor.getTokenStartIndex(retval.start),
                            input.treeAdaptor.getTokenStopIndex(retval.start)))); 
                        }

                        }
                        break;
                    case 9 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:134:4: 'true'
                        {
                        matchStream(input,78,FOLLOW_78_in_value853); if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                           _codegen.push(true); 
                        }

                        }
                        break;
                    case 10 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:135:4: 'false'
                        {
                        matchStream(input,79,FOLLOW_79_in_value866); if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                           _codegen.push(false); 
                        }

                        }
                        break;
                    case 11 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:137:4: i= Identifier
                        {
                        i=Object(matchStream(input,Identifier,FOLLOW_Identifier_in_value883)); if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                           _codegen.pushc(); 
                        }
                        if ( this.state.backtracking==0 ) {
                           _codegen.push((i!=null?i.text:null)); 
                        }
                        if ( this.state.backtracking==0 ) {
                           _codegen.load(); 
                        }

                        }
                        break;
                    case 12 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:141:4: ^(a= CreateArray ( exp )* )
                        {
                        a=Object(matchStream(input,CreateArray,FOLLOW_CreateArray_in_value930)); if (this.state.failed) return retval;

                        if ( input.LA(1)==TokenConstants.DOWN ) {
                            matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return retval;
                            // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:141:20: ( exp )*
                            loop9:
                            do {
                                var alt9:int=2;
                                var LA9_0:int = input.LA(1);

                                if ( ((LA9_0>=6 && LA9_0<=10)||(LA9_0>=14 && LA9_0<=17)||(LA9_0>=35 && LA9_0<=46)||(LA9_0>=49 && LA9_0<=79)) ) {
                                    alt9=1;
                                }


                                switch (alt9) {
                            	case 1 :
                            	    // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:0:0: exp
                            	    {
                            	    pushFollow(FOLLOW_exp_in_value932);
                            	    exp();

                            	    state._fsp = state._fsp - 1;
                            	    if (this.state.failed) return retval;

                            	    }
                            	    break;

                            	default :
                            	    break loop9;
                                }
                            } while (true);


                            matchStream(input, TokenConstants.UP, null); if (this.state.failed) return retval;
                        }
                        if ( this.state.backtracking==0 ) {
                           _codegen.array(a.childCount); 
                        }

                        }
                        break;
                    case 13 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:142:4: funcDef
                        {
                        pushFollow(FOLLOW_funcDef_in_value945);
                        funcDef();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;

                        }
                        break;

                }
            }
            catch (re:RecognitionException) {
                reportError(re);
                recoverStream(input,re);
            }
            finally {
                if ( this.state.backtracking>0 ) { memoize(input, 12, value_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end value

        // $ANTLR start funcDef
        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:145:1: funcDef : ^( FuncDef ( arg )* stmtList ) ;
        public final function funcDef():void {
            var funcDef_StartIndex:int = input.index;
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 13) ) { return ; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:145:9: ( ^( FuncDef ( arg )* stmtList ) )
                // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:145:11: ^( FuncDef ( arg )* stmtList )
                {
                matchStream(input,FuncDef,FOLLOW_FuncDef_in_funcDef961); if (this.state.failed) return ;

                if ( this.state.backtracking==0 ) {
                   _codegen.beginfunc() 
                }

                matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return ;
                // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:147:4: ( arg )*
                loop11:
                do {
                    var alt11:int=2;
                    var LA11_0:int = input.LA(1);

                    if ( (LA11_0==17) ) {
                        alt11=1;
                    }


                    switch (alt11) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:0:0: arg
                	    {
                	    pushFollow(FOLLOW_arg_in_funcDef973);
                	    arg();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return ;

                	    }
                	    break;

                	default :
                	    break loop11;
                    }
                } while (true);

                pushFollow(FOLLOW_stmtList_in_funcDef979);
                stmtList();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return ;
                if ( this.state.backtracking==0 ) {
                   _codegen.endfunc() 
                }

                matchStream(input, TokenConstants.UP, null); if (this.state.failed) return ;

                }

            }
            catch (re:RecognitionException) {
                reportError(re);
                recoverStream(input,re);
            }
            finally {
                if ( this.state.backtracking>0 ) { memoize(input, 13, funcDef_StartIndex); }
            }
            return ;
        }
        // $ANTLR end funcDef

        // $ANTLR start arg
        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:152:1: arg : i= Identifier ;
        public final function arg():void {
            var arg_StartIndex:int = input.index;
            var i:Object=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 14) ) { return ; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:152:5: (i= Identifier )
                // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:152:7: i= Identifier
                {
                i=Object(matchStream(input,Identifier,FOLLOW_Identifier_in_arg1002)); if (this.state.failed) return ;
                if ( this.state.backtracking==0 ) {
                   _codegen.arg((i!=null?i.text:null)) 
                }

                }

            }
            catch (re:RecognitionException) {
                reportError(re);
                recoverStream(input,re);
            }
            finally {
                if ( this.state.backtracking>0 ) { memoize(input, 14, arg_StartIndex); }
            }
            return ;
        }
        // $ANTLR end arg

        // $ANTLR start synpred6_ExpressionWalker
        public final function synpred6_ExpressionWalker_fragment():void {
            // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:57:10: ( ^( IfStmt exp stmtList stmtList ) )
            // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:57:10: ^( IfStmt exp stmtList stmtList )
            {
            matchStream(input,IfStmt,FOLLOW_IfStmt_in_synpred6_ExpressionWalker136); if (this.state.failed) return ;

            matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return ;
            pushFollow(FOLLOW_exp_in_synpred6_ExpressionWalker141);
            exp();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;
            pushFollow(FOLLOW_stmtList_in_synpred6_ExpressionWalker153);
            stmtList();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;
            pushFollow(FOLLOW_stmtList_in_synpred6_ExpressionWalker164);
            stmtList();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;

            matchStream(input, TokenConstants.UP, null); if (this.state.failed) return ;

            }
        }
        // $ANTLR end synpred6_ExpressionWalker

        // $ANTLR start synpred7_ExpressionWalker
        public final function synpred7_ExpressionWalker_fragment():void {
            // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:64:4: ( ^( IfStmt exp stmtList ifStmt ) )
            // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:64:4: ^( IfStmt exp stmtList ifStmt )
            {
            matchStream(input,IfStmt,FOLLOW_IfStmt_in_synpred7_ExpressionWalker187); if (this.state.failed) return ;

            matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return ;
            pushFollow(FOLLOW_exp_in_synpred7_ExpressionWalker192);
            exp();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;
            pushFollow(FOLLOW_stmtList_in_synpred7_ExpressionWalker204);
            stmtList();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;
            pushFollow(FOLLOW_ifStmt_in_synpred7_ExpressionWalker215);
            ifStmt();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;

            matchStream(input, TokenConstants.UP, null); if (this.state.failed) return ;

            }
        }
        // $ANTLR end synpred7_ExpressionWalker

        // $ANTLR start synpred48_ExpressionWalker
        public final function synpred48_ExpressionWalker_fragment():void {
            var o:Object=null;

            // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:106:9: ( ^(o= ( '||' | 'or' | '&&' | 'and' | '|' | '^' | '&' | '==' | '!=' | '===' | '!==' | '<' | 'lt' | '>' | 'gt' | '<=' | 'lte' | '>=' | 'gte' | '<<' | '>>' | '>>>' | '+' | '-' | '*' | '/' | '%' ) exp exp ) )
            // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:106:9: ^(o= ( '||' | 'or' | '&&' | 'and' | '|' | '^' | '&' | '==' | '!=' | '===' | '!==' | '<' | 'lt' | '>' | 'gt' | '<=' | 'lte' | '>=' | 'gte' | '<<' | '>>' | '>>>' | '+' | '-' | '*' | '/' | '%' ) exp exp )
            {
            o=Object(input.LT(1));
            if ( (input.LA(1)>=49 && input.LA(1)<=75) ) {
                input.consume();
                this.state.errorRecovery=false;this.state.failed=false;
            }
            else {
                if (this.state.backtracking>0) {this.state.failed=true; return ;}
                throw new MismatchedSetException(null,input);
            }


            matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return ;
            pushFollow(FOLLOW_exp_in_synpred48_ExpressionWalker628);
            exp();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;
            pushFollow(FOLLOW_exp_in_synpred48_ExpressionWalker630);
            exp();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;

            matchStream(input, TokenConstants.UP, null); if (this.state.failed) return ;

            }
        }
        // $ANTLR end synpred48_ExpressionWalker

        // $ANTLR start synpred53_ExpressionWalker
        public final function synpred53_ExpressionWalker_fragment():void {
            var o:Object=null;

            // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:118:4: ( ^(o= ( '-' | '+' | '~' | '!' ) exp ) )
            // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:118:4: ^(o= ( '-' | '+' | '~' | '!' ) exp )
            {
            o=Object(input.LT(1));
            if ( (input.LA(1)>=71 && input.LA(1)<=72)||(input.LA(1)>=76 && input.LA(1)<=77) ) {
                input.consume();
                this.state.errorRecovery=false;this.state.failed=false;
            }
            else {
                if (this.state.backtracking>0) {this.state.failed=true; return ;}
                throw new MismatchedSetException(null,input);
            }


            matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return ;
            pushFollow(FOLLOW_exp_in_synpred53_ExpressionWalker735);
            exp();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;

            matchStream(input, TokenConstants.UP, null); if (this.state.failed) return ;

            }
        }
        // $ANTLR end synpred53_ExpressionWalker


           // Delegated rules

        public final function synpred48_ExpressionWalker():Boolean {
            this.state.backtracking++;
            var start:int = input.mark();
            try {
                synpred48_ExpressionWalker_fragment(); // can never throw exception
            } catch (re:RecognitionException) {
                trace("impossible: "+re);
            }
            var success:Boolean = !this.state.failed;
            input.rewindTo(start);
            this.state.backtracking--;
            this.state.failed=false;
            return success;
        }
        public final function synpred53_ExpressionWalker():Boolean {
            this.state.backtracking++;
            var start:int = input.mark();
            try {
                synpred53_ExpressionWalker_fragment(); // can never throw exception
            } catch (re:RecognitionException) {
                trace("impossible: "+re);
            }
            var success:Boolean = !this.state.failed;
            input.rewindTo(start);
            this.state.backtracking--;
            this.state.failed=false;
            return success;
        }
        public final function synpred6_ExpressionWalker():Boolean {
            this.state.backtracking++;
            var start:int = input.mark();
            try {
                synpred6_ExpressionWalker_fragment(); // can never throw exception
            } catch (re:RecognitionException) {
                trace("impossible: "+re);
            }
            var success:Boolean = !this.state.failed;
            input.rewindTo(start);
            this.state.backtracking--;
            this.state.failed=false;
            return success;
        }
        public final function synpred7_ExpressionWalker():Boolean {
            this.state.backtracking++;
            var start:int = input.mark();
            try {
                synpred7_ExpressionWalker_fragment(); // can never throw exception
            } catch (re:RecognitionException) {
                trace("impossible: "+re);
            }
            var success:Boolean = !this.state.failed;
            input.rewindTo(start);
            this.state.backtracking--;
            this.state.failed=false;
            return success;
        }



        private const DFA10_eot:Array =
            DFA.unpackEncodedString("\x0f\u80ff\xff");
        private const DFA10_eof:Array =
            DFA.unpackEncodedString("\x0f\u80ff\xff");
        private const DFA10_min:Array =
            DFA.unpackEncodedString("\x01\x06\x01\x00\x0d\u80ff\xff", true);
        private const DFA10_max:Array =
            DFA.unpackEncodedString("\x01\x4f\x01\x00\x0d\u80ff\xff", true);
        private const DFA10_accept:Array =
            DFA.unpackEncodedString("\x02\u80ff\xff\x01\x02\x01\x01\x01"+
            "\x03\x01\x04\x01\x05\x01\x06\x01\x07\x01\x08\x01\x09\x01\x0a"+
            "\x01\x0b\x01\x0c\x01\x0d");
        private const DFA10_special:Array =
            DFA.unpackEncodedString("\x01\u80ff\xff\x01\x00\x0d\u80ff\xff");
        private const DFA10_transition:Array = [
                DFA.unpackEncodedString("\x01\x05\x01\x06\x01\x07\x01\x02"+
                "\x01\x0d\x03\u80ff\xff\x01\x0e\x01\x08\x01\x09\x01\x0c\x1f"+
                "\u80ff\xff\x16\x03\x02\x01\x03\x03\x02\x04\x01\x0a\x01\x0b"),
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
            private function DFA10_specialStateTransition(dfa:DFA, s:int, _input:IntStream):int {
                var input:TreeNodeStream = TreeNodeStream(_input);
            	var _s:int = s;
                switch ( s ) {
                        case 0 : 
                            var LA10_1:int = input.LA(1);

                             
                            var index10_1:int = input.index;
                            input.rewind();
                            s = -1;
                            if ( (synpred48_ExpressionWalker()) ) {s = 3;}

                            else if ( (synpred53_ExpressionWalker()) ) {s = 4;}

                             
                            input.seek(index10_1);
                            if ( s>=0 ) return s;
                            break;
                }
                if (this.state.backtracking>0) {this.state.failed=true; return -1;}
                throw dfa.error(new NoViableAltException(dfa.description, 10, _s, input));
            }

        protected var dfa10:DFA;  // initialized in constructor
     

        public static const FOLLOW_stmtList_in_main63:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_StmtList_in_stmtList74:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_stmt_in_stmtList76:BitSet = new BitSet([0x00001828, 0x00000000]);
        public static const FOLLOW_EOF_in_stmtList83:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_expList_in_stmt94:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_ifStmt_in_stmt99:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_whileStmt_in_stmt104:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_ExpList_in_expList116:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_exp_in_expList118:BitSet = new BitSet([0x0003C7C8, 0xFFFE7FF8, 0x0000FFFF, 0x00000000]);
        public static const FOLLOW_IfStmt_in_ifStmt136:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_exp_in_ifStmt141:BitSet = new BitSet([0x00000010, 0x00000000]);
        public static const FOLLOW_stmtList_in_ifStmt153:BitSet = new BitSet([0x00000010, 0x00000000]);
        public static const FOLLOW_stmtList_in_ifStmt164:BitSet = new BitSet([0x00000008, 0x00000000]);
        public static const FOLLOW_IfStmt_in_ifStmt187:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_exp_in_ifStmt192:BitSet = new BitSet([0x00000010, 0x00000000]);
        public static const FOLLOW_stmtList_in_ifStmt204:BitSet = new BitSet([0x00000800, 0x00000000]);
        public static const FOLLOW_ifStmt_in_ifStmt215:BitSet = new BitSet([0x00000008, 0x00000000]);
        public static const FOLLOW_IfStmt_in_ifStmt239:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_exp_in_ifStmt244:BitSet = new BitSet([0x00000010, 0x00000000]);
        public static const FOLLOW_stmtList_in_ifStmt256:BitSet = new BitSet([0x00000008, 0x00000000]);
        public static const FOLLOW_WhileStmt_in_whileStmt283:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_exp_in_whileStmt294:BitSet = new BitSet([0x00000010, 0x00000000]);
        public static const FOLLOW_stmtList_in_whileStmt306:BitSet = new BitSet([0x00000008, 0x00000000]);
        public static const FOLLOW_set_in_exp326:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_value_in_exp331:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_set_in_set349:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_exp_in_set400:BitSet = new BitSet([0x00020180, 0x00000000]);
        public static const FOLLOW_seti_in_set403:BitSet = new BitSet([0x00000008, 0x00000000]);
        public static const FOLLOW_sete_in_set407:BitSet = new BitSet([0x00000008, 0x00000000]);
        public static const FOLLOW_setr_in_set411:BitSet = new BitSet([0x00000008, 0x00000000]);
        public static const FOLLOW_Identifier_in_seti436:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_PropExp_in_sete466:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_exp_in_sete468:BitSet = new BitSet([0x0003C7C8, 0xFFFE7FF8, 0x0000FFFF, 0x00000000]);
        public static const FOLLOW_exp_in_sete470:BitSet = new BitSet([0x00000008, 0x00000000]);
        public static const FOLLOW_PropRef_in_setr488:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_exp_in_setr490:BitSet = new BitSet([0x00020000, 0x00000000]);
        public static const FOLLOW_Identifier_in_setr494:BitSet = new BitSet([0x00000008, 0x00000000]);
        public static const FOLLOW_set_in_value518:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_exp_in_value628:BitSet = new BitSet([0x0003C7C8, 0xFFFE7FF8, 0x0000FFFF, 0x00000000]);
        public static const FOLLOW_exp_in_value630:BitSet = new BitSet([0x00000008, 0x00000000]);
        public static const FOLLOW_CondExp_in_value655:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_exp_in_value666:BitSet = new BitSet([0x0003C7C8, 0xFFFE7FF8, 0x0000FFFF, 0x00000000]);
        public static const FOLLOW_exp_in_value678:BitSet = new BitSet([0x0003C7C8, 0xFFFE7FF8, 0x0000FFFF, 0x00000000]);
        public static const FOLLOW_exp_in_value690:BitSet = new BitSet([0x00000008, 0x00000000]);
        public static const FOLLOW_set_in_value716:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_exp_in_value735:BitSet = new BitSet([0x00000008, 0x00000000]);
        public static const FOLLOW_FuncCall_in_value758:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_exp_in_value760:BitSet = new BitSet([0x0003C7C8, 0xFFFE7FF8, 0x0000FFFF, 0x00000000]);
        public static const FOLLOW_PropRef_in_value776:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_exp_in_value778:BitSet = new BitSet([0x00020000, 0x00000000]);
        public static const FOLLOW_Identifier_in_value782:BitSet = new BitSet([0x00000008, 0x00000000]);
        public static const FOLLOW_PropExp_in_value807:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_exp_in_value809:BitSet = new BitSet([0x0003C7C8, 0xFFFE7FF8, 0x0000FFFF, 0x00000000]);
        public static const FOLLOW_exp_in_value811:BitSet = new BitSet([0x00000008, 0x00000000]);
        public static const FOLLOW_NumberLiteral_in_value825:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_StringLiteral_in_value839:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_78_in_value853:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_79_in_value866:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_Identifier_in_value883:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_CreateArray_in_value930:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_exp_in_value932:BitSet = new BitSet([0x0003C7C8, 0xFFFE7FF8, 0x0000FFFF, 0x00000000]);
        public static const FOLLOW_funcDef_in_value945:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_FuncDef_in_funcDef961:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_arg_in_funcDef973:BitSet = new BitSet([0x00020010, 0x00000000]);
        public static const FOLLOW_stmtList_in_funcDef979:BitSet = new BitSet([0x00000008, 0x00000000]);
        public static const FOLLOW_Identifier_in_arg1002:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_IfStmt_in_synpred6_ExpressionWalker136:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_exp_in_synpred6_ExpressionWalker141:BitSet = new BitSet([0x00000010, 0x00000000]);
        public static const FOLLOW_stmtList_in_synpred6_ExpressionWalker153:BitSet = new BitSet([0x00000010, 0x00000000]);
        public static const FOLLOW_stmtList_in_synpred6_ExpressionWalker164:BitSet = new BitSet([0x00000008, 0x00000000]);
        public static const FOLLOW_IfStmt_in_synpred7_ExpressionWalker187:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_exp_in_synpred7_ExpressionWalker192:BitSet = new BitSet([0x00000010, 0x00000000]);
        public static const FOLLOW_stmtList_in_synpred7_ExpressionWalker204:BitSet = new BitSet([0x00000800, 0x00000000]);
        public static const FOLLOW_ifStmt_in_synpred7_ExpressionWalker215:BitSet = new BitSet([0x00000008, 0x00000000]);
        public static const FOLLOW_set_in_synpred48_ExpressionWalker518:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_exp_in_synpred48_ExpressionWalker628:BitSet = new BitSet([0x0003C7C8, 0xFFFE7FF8, 0x0000FFFF, 0x00000000]);
        public static const FOLLOW_exp_in_synpred48_ExpressionWalker630:BitSet = new BitSet([0x00000008, 0x00000000]);
        public static const FOLLOW_set_in_synpred53_ExpressionWalker716:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_exp_in_synpred53_ExpressionWalker735:BitSet = new BitSet([0x00000008, 0x00000000]);

    }
}