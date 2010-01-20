// $ANTLR 3.1.2 C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\ExpressionWalker.g 2009-05-26 19:08:03
package com.esoteric.expressions {
    import org.antlr.runtime.*;
        import org.antlr.runtime.tree.*;    


    public class ExpressionWalker extends TreeParser {
        public static const tokenNames:Array = [
            "<invalid>", "<EOR>", "<DOWN>", "<UP>", "StmtList", "ExpList", "FuncCall", "PropRef", "PropExp", "CondExp", "CreateArray", "IfStmt", "WhileStmt", "ForStmt", "NumberLiteral", "StringLiteral", "Identifier", "LineComment", "MultilineComment", "Digit", "Exponent", "HexDigit", "EscapeSequence", "WhiteSpace", "Letter", "UnicodeEscapeChar", "'if'", "'('", "')'", "'else'", "'while'", "'{'", "'}'", "';'", "'='", "'*='", "'/='", "'%='", "'+='", "'-='", "'<<='", "'>>='", "'>>>='", "'&='", "'^='", "'|='", "'?'", "':'", "'||'", "'&&'", "'|'", "'^'", "'&'", "'=='", "'!='", "'==='", "'!=='", "'<'", "'>'", "'<='", "'>='", "'<<'", "'>>'", "'>>>'", "'+'", "'-'", "'*'", "'/'", "'%'", "'~'", "'!'", "'true'", "'false'", "'['", "']'", "'.'", "','"
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
        public static const T__26:int=26;
        public static const ExpList:int=5;
        public static const LineComment:int=17;
        public static const Exponent:int=20;
        public static const T__61:int=61;
        public static const EOF:int=-1;
        public static const T__60:int=60;
        public static const HexDigit:int=21;
        public static const PropExp:int=8;
        public static const Identifier:int=16;
        public static const T__55:int=55;
        public static const T__56:int=56;
        public static const T__57:int=57;
        public static const T__58:int=58;
        public static const T__51:int=51;
        public static const T__52:int=52;
        public static const T__53:int=53;
        public static const T__54:int=54;
        public static const WhileStmt:int=12;
        public static const T__59:int=59;
        public static const IfStmt:int=11;
        public static const CondExp:int=9;
        public static const WhiteSpace:int=23;
        public static const T__50:int=50;
        public static const ForStmt:int=13;
        public static const CreateArray:int=10;
        public static const T__42:int=42;
        public static const T__43:int=43;
        public static const T__40:int=40;
        public static const T__41:int=41;
        public static const T__46:int=46;
        public static const T__47:int=47;
        public static const T__44:int=44;
        public static const T__45:int=45;
        public static const UnicodeEscapeChar:int=25;
        public static const T__48:int=48;
        public static const NumberLiteral:int=14;
        public static const T__49:int=49;
        public static const Digit:int=19;
        public static const StringLiteral:int=15;
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
        public static const MultilineComment:int=18;
        public static const T__74:int=74;
        public static const T__73:int=73;
        public static const EscapeSequence:int=22;
        public static const Letter:int=24;

        // delegates
        // delegators


            public function ExpressionWalker(input:TreeNodeStream, state:RecognizerSharedState = null) {
                super(input, state);

                dfa9 = new DFA(this, 9,
                            "105:1: value : ( ^(o= ( '||' | '&&' | '|' | '^' | '&' | '==' | '!=' | '===' | '!==' | '<' | '>' | '<=' | '>=' | '<<' | '>>' | '>>>' | '+' | '-' | '*' | '/' | '%' ) exp exp ) | ^( CondExp exp exp exp ) | ^(o= ( '-' | '+' | '~' | '!' ) exp ) | ^(f= FuncCall ( exp )+ ) | ^( PropRef exp i= Identifier ) | ^( PropExp exp exp ) | NumberLiteral | StringLiteral | 'true' | 'false' | i= Identifier | ^(a= CreateArray ( exp )* ) );",
                            DFA9_eot, DFA9_eof, DFA9_min,
                            DFA9_max, DFA9_accept, DFA9_special,
                            DFA9_transition, DFA9_specialStateTransition);

                this.state.ruleMemo = new Array(68+1);
                 
            }
            

        public override function get tokenNames():Array { return ExpressionWalker.tokenNames; }
        public override function get grammarFileName():String { return "C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\ExpressionWalker.g"; }


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
        // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\ExpressionWalker.g:42:1: main : stmtList ;
        public final function main():void {
            var main_StartIndex:int = input.index;
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 1) ) { return ; }
                // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\ExpressionWalker.g:42:6: ( stmtList )
                // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\ExpressionWalker.g:42:8: stmtList
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
        // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\ExpressionWalker.g:45:1: stmtList : ^( StmtList ( stmt )* ) ;
        public final function stmtList():void {
            var stmtList_StartIndex:int = input.index;
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 2) ) { return ; }
                // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\ExpressionWalker.g:45:9: ( ^( StmtList ( stmt )* ) )
                // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\ExpressionWalker.g:45:11: ^( StmtList ( stmt )* )
                {
                matchStream(input,StmtList,FOLLOW_StmtList_in_stmtList74); if (this.state.failed) return ;

                if ( input.LA(1)==TokenConstants.DOWN ) {
                    matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return ;
                    // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\ExpressionWalker.g:45:22: ( stmt )*
                    loop1:
                    do {
                        var alt1:int=2;
                        var LA1_0:int = input.LA(1);

                        if ( (LA1_0==5||(LA1_0>=11 && LA1_0<=12)) ) {
                            alt1=1;
                        }


                        switch (alt1) {
                    	case 1 :
                    	    // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\ExpressionWalker.g:0:0: stmt
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
        // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\ExpressionWalker.g:48:1: stmt : ( expList | ifStmt | whileStmt );
        public final function stmt():void {
            var stmt_StartIndex:int = input.index;
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 3) ) { return ; }
                // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\ExpressionWalker.g:48:6: ( expList | ifStmt | whileStmt )
                var alt2:int=3;
                switch ( input.LA(1) ) {
                case ExpList:
                    {
                    alt2=1;
                    }
                    break;
                case IfStmt:
                    {
                    alt2=2;
                    }
                    break;
                case WhileStmt:
                    {
                    alt2=3;
                    }
                    break;
                default:
                    if (this.state.backtracking>0) {this.state.failed=true; return ;}
                    throw new NoViableAltException("", 2, 0, input);

                }

                switch (alt2) {
                    case 1 :
                        // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\ExpressionWalker.g:48:8: expList
                        {
                        pushFollow(FOLLOW_expList_in_stmt89);
                        expList();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return ;

                        }
                        break;
                    case 2 :
                        // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\ExpressionWalker.g:49:4: ifStmt
                        {
                        pushFollow(FOLLOW_ifStmt_in_stmt94);
                        ifStmt();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return ;

                        }
                        break;
                    case 3 :
                        // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\ExpressionWalker.g:50:4: whileStmt
                        {
                        pushFollow(FOLLOW_whileStmt_in_stmt99);
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
        // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\ExpressionWalker.g:53:1: expList : ^( ExpList ( exp )* ) ;
        public final function expList():void {
            var expList_StartIndex:int = input.index;
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 4) ) { return ; }
                // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\ExpressionWalker.g:53:9: ( ^( ExpList ( exp )* ) )
                // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\ExpressionWalker.g:53:11: ^( ExpList ( exp )* )
                {
                matchStream(input,ExpList,FOLLOW_ExpList_in_expList111); if (this.state.failed) return ;

                if ( input.LA(1)==TokenConstants.DOWN ) {
                    matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return ;
                    // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\ExpressionWalker.g:53:21: ( exp )*
                    loop3:
                    do {
                        var alt3:int=2;
                        var LA3_0:int = input.LA(1);

                        if ( ((LA3_0>=6 && LA3_0<=10)||(LA3_0>=14 && LA3_0<=16)||(LA3_0>=34 && LA3_0<=45)||(LA3_0>=48 && LA3_0<=72)) ) {
                            alt3=1;
                        }


                        switch (alt3) {
                    	case 1 :
                    	    // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\ExpressionWalker.g:0:0: exp
                    	    {
                    	    pushFollow(FOLLOW_exp_in_expList113);
                    	    exp();

                    	    state._fsp = state._fsp - 1;
                    	    if (this.state.failed) return ;

                    	    }
                    	    break;

                    	default :
                    	    break loop3;
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
        // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\ExpressionWalker.g:56:1: ifStmt : ( ^( IfStmt exp stmtList stmtList ) | ^( IfStmt exp stmtList ifStmt ) | ^( IfStmt exp stmtList ) );
        public final function ifStmt():void {
            var ifStmt_StartIndex:int = input.index;
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 5) ) { return ; }
                // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\ExpressionWalker.g:56:8: ( ^( IfStmt exp stmtList stmtList ) | ^( IfStmt exp stmtList ifStmt ) | ^( IfStmt exp stmtList ) )
                var alt4:int=3;
                var LA4_0:int = input.LA(1);

                if ( (LA4_0==11) ) {
                    var LA4_1:int = input.LA(2);

                    if ( (synpred5_ExpressionWalker()) ) {
                        alt4=1;
                    }
                    else if ( (synpred6_ExpressionWalker()) ) {
                        alt4=2;
                    }
                    else if ( (true) ) {
                        alt4=3;
                    }
                    else {
                        if (this.state.backtracking>0) {this.state.failed=true; return ;}
                        throw new NoViableAltException("", 4, 1, input);

                    }
                }
                else {
                    if (this.state.backtracking>0) {this.state.failed=true; return ;}
                    throw new NoViableAltException("", 4, 0, input);

                }
                switch (alt4) {
                    case 1 :
                        // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\ExpressionWalker.g:56:10: ^( IfStmt exp stmtList stmtList )
                        {
                        matchStream(input,IfStmt,FOLLOW_IfStmt_in_ifStmt131); if (this.state.failed) return ;

                        matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return ;
                        pushFollow(FOLLOW_exp_in_ifStmt136);
                        exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return ;
                        if ( this.state.backtracking==0 ) {
                           _codegen.beginif() 
                        }
                        pushFollow(FOLLOW_stmtList_in_ifStmt148);
                        stmtList();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return ;
                        if ( this.state.backtracking==0 ) {
                           _codegen.beginelse() 
                        }
                        pushFollow(FOLLOW_stmtList_in_ifStmt159);
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
                        // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\ExpressionWalker.g:63:4: ^( IfStmt exp stmtList ifStmt )
                        {
                        matchStream(input,IfStmt,FOLLOW_IfStmt_in_ifStmt182); if (this.state.failed) return ;

                        matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return ;
                        pushFollow(FOLLOW_exp_in_ifStmt187);
                        exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return ;
                        if ( this.state.backtracking==0 ) {
                           _codegen.beginif() 
                        }
                        pushFollow(FOLLOW_stmtList_in_ifStmt199);
                        stmtList();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return ;
                        if ( this.state.backtracking==0 ) {
                           _codegen.beginelse() 
                        }
                        pushFollow(FOLLOW_ifStmt_in_ifStmt210);
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
                        // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\ExpressionWalker.g:70:4: ^( IfStmt exp stmtList )
                        {
                        matchStream(input,IfStmt,FOLLOW_IfStmt_in_ifStmt234); if (this.state.failed) return ;

                        matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return ;
                        pushFollow(FOLLOW_exp_in_ifStmt239);
                        exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return ;
                        if ( this.state.backtracking==0 ) {
                           _codegen.beginif() 
                        }
                        pushFollow(FOLLOW_stmtList_in_ifStmt251);
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
        // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\ExpressionWalker.g:77:1: whileStmt : ^( WhileStmt exp stmtList ) ;
        public final function whileStmt():void {
            var whileStmt_StartIndex:int = input.index;
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 6) ) { return ; }
                // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\ExpressionWalker.g:78:2: ( ^( WhileStmt exp stmtList ) )
                // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\ExpressionWalker.g:78:4: ^( WhileStmt exp stmtList )
                {
                matchStream(input,WhileStmt,FOLLOW_WhileStmt_in_whileStmt278); if (this.state.failed) return ;

                if ( this.state.backtracking==0 ) {
                   _codegen.prewhile() 
                }

                matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return ;
                pushFollow(FOLLOW_exp_in_whileStmt289);
                exp();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return ;
                if ( this.state.backtracking==0 ) {
                   _codegen.beginwhile() 
                }
                pushFollow(FOLLOW_stmtList_in_whileStmt301);
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
        // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\ExpressionWalker.g:85:1: exp : ( set | value );
        public final function exp():void {
            var exp_StartIndex:int = input.index;
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 7) ) { return ; }
                // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\ExpressionWalker.g:85:5: ( set | value )
                var alt5:int=2;
                var LA5_0:int = input.LA(1);

                if ( ((LA5_0>=34 && LA5_0<=45)) ) {
                    alt5=1;
                }
                else if ( ((LA5_0>=6 && LA5_0<=10)||(LA5_0>=14 && LA5_0<=16)||(LA5_0>=48 && LA5_0<=72)) ) {
                    alt5=2;
                }
                else {
                    if (this.state.backtracking>0) {this.state.failed=true; return ;}
                    throw new NoViableAltException("", 5, 0, input);

                }
                switch (alt5) {
                    case 1 :
                        // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\ExpressionWalker.g:85:7: set
                        {
                        pushFollow(FOLLOW_set_in_exp321);
                        set();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return ;

                        }
                        break;
                    case 2 :
                        // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\ExpressionWalker.g:86:4: value
                        {
                        pushFollow(FOLLOW_value_in_exp326);
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
        // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\ExpressionWalker.g:89:1: set : ^(o= ( '=' | '*=' | '/=' | '%=' | '+=' | '-=' | '<<=' | '>>=' | '>>>=' | '&=' | '^=' | '|=' ) exp ( seti | sete | setr ) ) ;
        public final function set():void {
            var set_StartIndex:int = input.index;
            var o:Object=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 8) ) { return ; }
                // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\ExpressionWalker.g:89:5: ( ^(o= ( '=' | '*=' | '/=' | '%=' | '+=' | '-=' | '<<=' | '>>=' | '>>>=' | '&=' | '^=' | '|=' ) exp ( seti | sete | setr ) ) )
                // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\ExpressionWalker.g:89:7: ^(o= ( '=' | '*=' | '/=' | '%=' | '+=' | '-=' | '<<=' | '>>=' | '>>>=' | '&=' | '^=' | '|=' ) exp ( seti | sete | setr ) )
                {
                o=Object(input.LT(1));
                if ( (input.LA(1)>=34 && input.LA(1)<=45) ) {
                    input.consume();
                    this.state.errorRecovery=false;this.state.failed=false;
                }
                else {
                    if (this.state.backtracking>0) {this.state.failed=true; return ;}
                    throw new MismatchedSetException(null,input);
                }


                matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return ;
                pushFollow(FOLLOW_exp_in_set395);
                exp();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return ;
                // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\ExpressionWalker.g:91:8: ( seti | sete | setr )
                var alt6:int=3;
                switch ( input.LA(1) ) {
                case Identifier:
                    {
                    alt6=1;
                    }
                    break;
                case PropExp:
                    {
                    alt6=2;
                    }
                    break;
                case PropRef:
                    {
                    alt6=3;
                    }
                    break;
                default:
                    if (this.state.backtracking>0) {this.state.failed=true; return ;}
                    throw new NoViableAltException("", 6, 0, input);

                }

                switch (alt6) {
                    case 1 :
                        // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\ExpressionWalker.g:91:9: seti
                        {
                        pushFollow(FOLLOW_seti_in_set398);
                        seti();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return ;

                        }
                        break;
                    case 2 :
                        // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\ExpressionWalker.g:91:16: sete
                        {
                        pushFollow(FOLLOW_sete_in_set402);
                        sete();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return ;

                        }
                        break;
                    case 3 :
                        // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\ExpressionWalker.g:91:23: setr
                        {
                        pushFollow(FOLLOW_setr_in_set406);
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
        // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\ExpressionWalker.g:95:1: seti : i= Identifier ;
        public final function seti():void {
            var seti_StartIndex:int = input.index;
            var i:Object=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 9) ) { return ; }
                // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\ExpressionWalker.g:95:6: (i= Identifier )
                // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\ExpressionWalker.g:95:8: i= Identifier
                {
                i=Object(matchStream(input,Identifier,FOLLOW_Identifier_in_seti431)); if (this.state.failed) return ;
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
        // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\ExpressionWalker.g:99:1: sete : ^( PropExp exp exp ) ;
        public final function sete():void {
            var sete_StartIndex:int = input.index;
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 10) ) { return ; }
                // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\ExpressionWalker.g:99:6: ( ^( PropExp exp exp ) )
                // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\ExpressionWalker.g:99:8: ^( PropExp exp exp )
                {
                matchStream(input,PropExp,FOLLOW_PropExp_in_sete461); if (this.state.failed) return ;

                matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return ;
                pushFollow(FOLLOW_exp_in_sete463);
                exp();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return ;
                pushFollow(FOLLOW_exp_in_sete465);
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
        // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\ExpressionWalker.g:102:1: setr : ^( PropRef exp i= Identifier ) ;
        public final function setr():void {
            var setr_StartIndex:int = input.index;
            var i:Object=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 11) ) { return ; }
                // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\ExpressionWalker.g:102:6: ( ^( PropRef exp i= Identifier ) )
                // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\ExpressionWalker.g:102:8: ^( PropRef exp i= Identifier )
                {
                matchStream(input,PropRef,FOLLOW_PropRef_in_setr483); if (this.state.failed) return ;

                matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return ;
                pushFollow(FOLLOW_exp_in_setr485);
                exp();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return ;
                i=Object(matchStream(input,Identifier,FOLLOW_Identifier_in_setr489)); if (this.state.failed) return ;

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
        // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\ExpressionWalker.g:105:1: value : ( ^(o= ( '||' | '&&' | '|' | '^' | '&' | '==' | '!=' | '===' | '!==' | '<' | '>' | '<=' | '>=' | '<<' | '>>' | '>>>' | '+' | '-' | '*' | '/' | '%' ) exp exp ) | ^( CondExp exp exp exp ) | ^(o= ( '-' | '+' | '~' | '!' ) exp ) | ^(f= FuncCall ( exp )+ ) | ^( PropRef exp i= Identifier ) | ^( PropExp exp exp ) | NumberLiteral | StringLiteral | 'true' | 'false' | i= Identifier | ^(a= CreateArray ( exp )* ) );
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
                // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\ExpressionWalker.g:105:7: ( ^(o= ( '||' | '&&' | '|' | '^' | '&' | '==' | '!=' | '===' | '!==' | '<' | '>' | '<=' | '>=' | '<<' | '>>' | '>>>' | '+' | '-' | '*' | '/' | '%' ) exp exp ) | ^( CondExp exp exp exp ) | ^(o= ( '-' | '+' | '~' | '!' ) exp ) | ^(f= FuncCall ( exp )+ ) | ^( PropRef exp i= Identifier ) | ^( PropExp exp exp ) | NumberLiteral | StringLiteral | 'true' | 'false' | i= Identifier | ^(a= CreateArray ( exp )* ) )
                var alt9:int=12;
                alt9 = dfa9.predict(input);
                switch (alt9) {
                    case 1 :
                        // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\ExpressionWalker.g:105:9: ^(o= ( '||' | '&&' | '|' | '^' | '&' | '==' | '!=' | '===' | '!==' | '<' | '>' | '<=' | '>=' | '<<' | '>>' | '>>>' | '+' | '-' | '*' | '/' | '%' ) exp exp )
                        {
                        o=Object(input.LT(1));
                        if ( (input.LA(1)>=48 && input.LA(1)<=68) ) {
                            input.consume();
                            this.state.errorRecovery=false;this.state.failed=false;
                        }
                        else {
                            if (this.state.backtracking>0) {this.state.failed=true; return retval;}
                            throw new MismatchedSetException(null,input);
                        }


                        matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return retval;
                        pushFollow(FOLLOW_exp_in_value600);
                        exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        pushFollow(FOLLOW_exp_in_value602);
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
                        // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\ExpressionWalker.g:110:4: ^( CondExp exp exp exp )
                        {
                        matchStream(input,CondExp,FOLLOW_CondExp_in_value627); if (this.state.failed) return retval;

                        matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return retval;
                        pushFollow(FOLLOW_exp_in_value638);
                        exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                           _codegen.beginif() 
                        }
                        pushFollow(FOLLOW_exp_in_value650);
                        exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                           _codegen.beginelse() 
                        }
                        pushFollow(FOLLOW_exp_in_value662);
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
                        // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\ExpressionWalker.g:117:4: ^(o= ( '-' | '+' | '~' | '!' ) exp )
                        {
                        o=Object(input.LT(1));
                        if ( (input.LA(1)>=64 && input.LA(1)<=65)||(input.LA(1)>=69 && input.LA(1)<=70) ) {
                            input.consume();
                            this.state.errorRecovery=false;this.state.failed=false;
                        }
                        else {
                            if (this.state.backtracking>0) {this.state.failed=true; return retval;}
                            throw new MismatchedSetException(null,input);
                        }


                        matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return retval;
                        pushFollow(FOLLOW_exp_in_value707);
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
                        // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\ExpressionWalker.g:122:4: ^(f= FuncCall ( exp )+ )
                        {
                        f=Object(matchStream(input,FuncCall,FOLLOW_FuncCall_in_value730)); if (this.state.failed) return retval;

                        matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return retval;
                        // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\ExpressionWalker.g:122:17: ( exp )+
                        var cnt7:int=0;
                        loop7:
                        do {
                            var alt7:int=2;
                            var LA7_0:int = input.LA(1);

                            if ( ((LA7_0>=6 && LA7_0<=10)||(LA7_0>=14 && LA7_0<=16)||(LA7_0>=34 && LA7_0<=45)||(LA7_0>=48 && LA7_0<=72)) ) {
                                alt7=1;
                            }


                            switch (alt7) {
                        	case 1 :
                        	    // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\ExpressionWalker.g:0:0: exp
                        	    {
                        	    pushFollow(FOLLOW_exp_in_value732);
                        	    exp();

                        	    state._fsp = state._fsp - 1;
                        	    if (this.state.failed) return retval;

                        	    }
                        	    break;

                        	default :
                        	    if ( cnt7 >= 1 ) break loop7;
                        	    if (this.state.backtracking>0) {this.state.failed=true; return retval;}
                                    throw new EarlyExitException(7, input);

                            }
                            cnt7++;
                        } while (true);


                        matchStream(input, TokenConstants.UP, null); if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                           _codegen.call(f.childCount - 1); 
                        }

                        }
                        break;
                    case 5 :
                        // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\ExpressionWalker.g:124:4: ^( PropRef exp i= Identifier )
                        {
                        matchStream(input,PropRef,FOLLOW_PropRef_in_value748); if (this.state.failed) return retval;

                        matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return retval;
                        pushFollow(FOLLOW_exp_in_value750);
                        exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        i=Object(matchStream(input,Identifier,FOLLOW_Identifier_in_value754)); if (this.state.failed) return retval;

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
                        // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\ExpressionWalker.g:127:4: ^( PropExp exp exp )
                        {
                        matchStream(input,PropExp,FOLLOW_PropExp_in_value779); if (this.state.failed) return retval;

                        matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return retval;
                        pushFollow(FOLLOW_exp_in_value781);
                        exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        pushFollow(FOLLOW_exp_in_value783);
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
                        // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\ExpressionWalker.g:129:4: NumberLiteral
                        {
                        matchStream(input,NumberLiteral,FOLLOW_NumberLiteral_in_value797); if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                           _codegen.push(Number(input.tokenStream.toStringWithRange(
                            input.treeAdaptor.getTokenStartIndex(retval.start),
                            input.treeAdaptor.getTokenStopIndex(retval.start)))); 
                        }

                        }
                        break;
                    case 8 :
                        // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\ExpressionWalker.g:131:4: StringLiteral
                        {
                        matchStream(input,StringLiteral,FOLLOW_StringLiteral_in_value811); if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                           _codegen.push(cleanUpString(input.tokenStream.toStringWithRange(
                            input.treeAdaptor.getTokenStartIndex(retval.start),
                            input.treeAdaptor.getTokenStopIndex(retval.start)))); 
                        }

                        }
                        break;
                    case 9 :
                        // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\ExpressionWalker.g:133:4: 'true'
                        {
                        matchStream(input,71,FOLLOW_71_in_value825); if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                           _codegen.push(true); 
                        }

                        }
                        break;
                    case 10 :
                        // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\ExpressionWalker.g:134:4: 'false'
                        {
                        matchStream(input,72,FOLLOW_72_in_value838); if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                           _codegen.push(false); 
                        }

                        }
                        break;
                    case 11 :
                        // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\ExpressionWalker.g:136:4: i= Identifier
                        {
                        i=Object(matchStream(input,Identifier,FOLLOW_Identifier_in_value855)); if (this.state.failed) return retval;
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
                        // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\ExpressionWalker.g:140:4: ^(a= CreateArray ( exp )* )
                        {
                        a=Object(matchStream(input,CreateArray,FOLLOW_CreateArray_in_value902)); if (this.state.failed) return retval;

                        if ( input.LA(1)==TokenConstants.DOWN ) {
                            matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return retval;
                            // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\ExpressionWalker.g:140:20: ( exp )*
                            loop8:
                            do {
                                var alt8:int=2;
                                var LA8_0:int = input.LA(1);

                                if ( ((LA8_0>=6 && LA8_0<=10)||(LA8_0>=14 && LA8_0<=16)||(LA8_0>=34 && LA8_0<=45)||(LA8_0>=48 && LA8_0<=72)) ) {
                                    alt8=1;
                                }


                                switch (alt8) {
                            	case 1 :
                            	    // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\ExpressionWalker.g:0:0: exp
                            	    {
                            	    pushFollow(FOLLOW_exp_in_value904);
                            	    exp();

                            	    state._fsp = state._fsp - 1;
                            	    if (this.state.failed) return retval;

                            	    }
                            	    break;

                            	default :
                            	    break loop8;
                                }
                            } while (true);


                            matchStream(input, TokenConstants.UP, null); if (this.state.failed) return retval;
                        }
                        if ( this.state.backtracking==0 ) {
                           _codegen.array(a.childCount); 
                        }

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

        // $ANTLR start synpred5_ExpressionWalker
        public final function synpred5_ExpressionWalker_fragment():void {
            // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\ExpressionWalker.g:56:10: ( ^( IfStmt exp stmtList stmtList ) )
            // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\ExpressionWalker.g:56:10: ^( IfStmt exp stmtList stmtList )
            {
            matchStream(input,IfStmt,FOLLOW_IfStmt_in_synpred5_ExpressionWalker131); if (this.state.failed) return ;

            matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return ;
            pushFollow(FOLLOW_exp_in_synpred5_ExpressionWalker136);
            exp();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;
            pushFollow(FOLLOW_stmtList_in_synpred5_ExpressionWalker148);
            stmtList();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;
            pushFollow(FOLLOW_stmtList_in_synpred5_ExpressionWalker159);
            stmtList();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;

            matchStream(input, TokenConstants.UP, null); if (this.state.failed) return ;

            }
        }
        // $ANTLR end synpred5_ExpressionWalker

        // $ANTLR start synpred6_ExpressionWalker
        public final function synpred6_ExpressionWalker_fragment():void {
            // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\ExpressionWalker.g:63:4: ( ^( IfStmt exp stmtList ifStmt ) )
            // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\ExpressionWalker.g:63:4: ^( IfStmt exp stmtList ifStmt )
            {
            matchStream(input,IfStmt,FOLLOW_IfStmt_in_synpred6_ExpressionWalker182); if (this.state.failed) return ;

            matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return ;
            pushFollow(FOLLOW_exp_in_synpred6_ExpressionWalker187);
            exp();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;
            pushFollow(FOLLOW_stmtList_in_synpred6_ExpressionWalker199);
            stmtList();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;
            pushFollow(FOLLOW_ifStmt_in_synpred6_ExpressionWalker210);
            ifStmt();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;

            matchStream(input, TokenConstants.UP, null); if (this.state.failed) return ;

            }
        }
        // $ANTLR end synpred6_ExpressionWalker

        // $ANTLR start synpred41_ExpressionWalker
        public final function synpred41_ExpressionWalker_fragment():void {
            var o:Object=null;

            // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\ExpressionWalker.g:105:9: ( ^(o= ( '||' | '&&' | '|' | '^' | '&' | '==' | '!=' | '===' | '!==' | '<' | '>' | '<=' | '>=' | '<<' | '>>' | '>>>' | '+' | '-' | '*' | '/' | '%' ) exp exp ) )
            // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\ExpressionWalker.g:105:9: ^(o= ( '||' | '&&' | '|' | '^' | '&' | '==' | '!=' | '===' | '!==' | '<' | '>' | '<=' | '>=' | '<<' | '>>' | '>>>' | '+' | '-' | '*' | '/' | '%' ) exp exp )
            {
            o=Object(input.LT(1));
            if ( (input.LA(1)>=48 && input.LA(1)<=68) ) {
                input.consume();
                this.state.errorRecovery=false;this.state.failed=false;
            }
            else {
                if (this.state.backtracking>0) {this.state.failed=true; return ;}
                throw new MismatchedSetException(null,input);
            }


            matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return ;
            pushFollow(FOLLOW_exp_in_synpred41_ExpressionWalker600);
            exp();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;
            pushFollow(FOLLOW_exp_in_synpred41_ExpressionWalker602);
            exp();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;

            matchStream(input, TokenConstants.UP, null); if (this.state.failed) return ;

            }
        }
        // $ANTLR end synpred41_ExpressionWalker

        // $ANTLR start synpred46_ExpressionWalker
        public final function synpred46_ExpressionWalker_fragment():void {
            var o:Object=null;

            // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\ExpressionWalker.g:117:4: ( ^(o= ( '-' | '+' | '~' | '!' ) exp ) )
            // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\ExpressionWalker.g:117:4: ^(o= ( '-' | '+' | '~' | '!' ) exp )
            {
            o=Object(input.LT(1));
            if ( (input.LA(1)>=64 && input.LA(1)<=65)||(input.LA(1)>=69 && input.LA(1)<=70) ) {
                input.consume();
                this.state.errorRecovery=false;this.state.failed=false;
            }
            else {
                if (this.state.backtracking>0) {this.state.failed=true; return ;}
                throw new MismatchedSetException(null,input);
            }


            matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return ;
            pushFollow(FOLLOW_exp_in_synpred46_ExpressionWalker707);
            exp();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;

            matchStream(input, TokenConstants.UP, null); if (this.state.failed) return ;

            }
        }
        // $ANTLR end synpred46_ExpressionWalker


           // Delegated rules

        public final function synpred41_ExpressionWalker():Boolean {
            this.state.backtracking++;
            var start:int = input.mark();
            try {
                synpred41_ExpressionWalker_fragment(); // can never throw exception
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
        public final function synpred46_ExpressionWalker():Boolean {
            this.state.backtracking++;
            var start:int = input.mark();
            try {
                synpred46_ExpressionWalker_fragment(); // can never throw exception
            } catch (re:RecognitionException) {
                trace("impossible: "+re);
            }
            var success:Boolean = !this.state.failed;
            input.rewindTo(start);
            this.state.backtracking--;
            this.state.failed=false;
            return success;
        }
        public final function synpred5_ExpressionWalker():Boolean {
            this.state.backtracking++;
            var start:int = input.mark();
            try {
                synpred5_ExpressionWalker_fragment(); // can never throw exception
            } catch (re:RecognitionException) {
                trace("impossible: "+re);
            }
            var success:Boolean = !this.state.failed;
            input.rewindTo(start);
            this.state.backtracking--;
            this.state.failed=false;
            return success;
        }



        private const DFA9_eot:Array =
            DFA.unpackEncodedString("\x0e\u80ff\xff");
        private const DFA9_eof:Array =
            DFA.unpackEncodedString("\x0e\u80ff\xff");
        private const DFA9_min:Array =
            DFA.unpackEncodedString("\x01\x06\x01\x00\x0c\u80ff\xff", true);
        private const DFA9_max:Array =
            DFA.unpackEncodedString("\x01\x48\x01\x00\x0c\u80ff\xff", true);
        private const DFA9_accept:Array =
            DFA.unpackEncodedString("\x02\u80ff\xff\x01\x02\x01\x01\x01"+
            "\x03\x01\x04\x01\x05\x01\x06\x01\x07\x01\x08\x01\x09\x01\x0a"+
            "\x01\x0b\x01\x0c");
        private const DFA9_special:Array =
            DFA.unpackEncodedString("\x01\u80ff\xff\x01\x00\x0c\u80ff\xff");
        private const DFA9_transition:Array = [
                DFA.unpackEncodedString("\x01\x05\x01\x06\x01\x07\x01\x02"+
                "\x01\x0d\x03\u80ff\xff\x01\x08\x01\x09\x01\x0c\x1f\u80ff\xff"+
                "\x10\x03\x02\x01\x03\x03\x02\x04\x01\x0a\x01\x0b"),
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
            private function DFA9_specialStateTransition(dfa:DFA, s:int, _input:IntStream):int {
                var input:TreeNodeStream = TreeNodeStream(_input);
            	var _s:int = s;
                switch ( s ) {
                        case 0 : 
                            var LA9_1:int = input.LA(1);

                             
                            var index9_1:int = input.index;
                            input.rewind();
                            s = -1;
                            if ( (synpred41_ExpressionWalker()) ) {s = 3;}

                            else if ( (synpred46_ExpressionWalker()) ) {s = 4;}

                             
                            input.seek(index9_1);
                            if ( s>=0 ) return s;
                            break;
                }
                if (this.state.backtracking>0) {this.state.failed=true; return -1;}
                throw dfa.error(new NoViableAltException(dfa.description, 9, _s, input));
            }

        protected var dfa9:DFA;  // initialized in constructor
     

        public static const FOLLOW_stmtList_in_main63:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_StmtList_in_stmtList74:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_stmt_in_stmtList76:BitSet = new BitSet([0x00001828, 0x00000000]);
        public static const FOLLOW_expList_in_stmt89:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_ifStmt_in_stmt94:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_whileStmt_in_stmt99:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_ExpList_in_expList111:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_exp_in_expList113:BitSet = new BitSet([0x0001C7C8, 0xFFFF3FFC, 0x000001FF, 0x00000000]);
        public static const FOLLOW_IfStmt_in_ifStmt131:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_exp_in_ifStmt136:BitSet = new BitSet([0x00000010, 0x00000000]);
        public static const FOLLOW_stmtList_in_ifStmt148:BitSet = new BitSet([0x00000010, 0x00000000]);
        public static const FOLLOW_stmtList_in_ifStmt159:BitSet = new BitSet([0x00000008, 0x00000000]);
        public static const FOLLOW_IfStmt_in_ifStmt182:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_exp_in_ifStmt187:BitSet = new BitSet([0x00000010, 0x00000000]);
        public static const FOLLOW_stmtList_in_ifStmt199:BitSet = new BitSet([0x00000800, 0x00000000]);
        public static const FOLLOW_ifStmt_in_ifStmt210:BitSet = new BitSet([0x00000008, 0x00000000]);
        public static const FOLLOW_IfStmt_in_ifStmt234:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_exp_in_ifStmt239:BitSet = new BitSet([0x00000010, 0x00000000]);
        public static const FOLLOW_stmtList_in_ifStmt251:BitSet = new BitSet([0x00000008, 0x00000000]);
        public static const FOLLOW_WhileStmt_in_whileStmt278:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_exp_in_whileStmt289:BitSet = new BitSet([0x00000010, 0x00000000]);
        public static const FOLLOW_stmtList_in_whileStmt301:BitSet = new BitSet([0x00000008, 0x00000000]);
        public static const FOLLOW_set_in_exp321:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_value_in_exp326:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_set_in_set344:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_exp_in_set395:BitSet = new BitSet([0x00010180, 0x00000000]);
        public static const FOLLOW_seti_in_set398:BitSet = new BitSet([0x00000008, 0x00000000]);
        public static const FOLLOW_sete_in_set402:BitSet = new BitSet([0x00000008, 0x00000000]);
        public static const FOLLOW_setr_in_set406:BitSet = new BitSet([0x00000008, 0x00000000]);
        public static const FOLLOW_Identifier_in_seti431:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_PropExp_in_sete461:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_exp_in_sete463:BitSet = new BitSet([0x0001C7C8, 0xFFFF3FFC, 0x000001FF, 0x00000000]);
        public static const FOLLOW_exp_in_sete465:BitSet = new BitSet([0x00000008, 0x00000000]);
        public static const FOLLOW_PropRef_in_setr483:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_exp_in_setr485:BitSet = new BitSet([0x00010000, 0x00000000]);
        public static const FOLLOW_Identifier_in_setr489:BitSet = new BitSet([0x00000008, 0x00000000]);
        public static const FOLLOW_set_in_value513:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_exp_in_value600:BitSet = new BitSet([0x0001C7C8, 0xFFFF3FFC, 0x000001FF, 0x00000000]);
        public static const FOLLOW_exp_in_value602:BitSet = new BitSet([0x00000008, 0x00000000]);
        public static const FOLLOW_CondExp_in_value627:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_exp_in_value638:BitSet = new BitSet([0x0001C7C8, 0xFFFF3FFC, 0x000001FF, 0x00000000]);
        public static const FOLLOW_exp_in_value650:BitSet = new BitSet([0x0001C7C8, 0xFFFF3FFC, 0x000001FF, 0x00000000]);
        public static const FOLLOW_exp_in_value662:BitSet = new BitSet([0x00000008, 0x00000000]);
        public static const FOLLOW_set_in_value688:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_exp_in_value707:BitSet = new BitSet([0x00000008, 0x00000000]);
        public static const FOLLOW_FuncCall_in_value730:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_exp_in_value732:BitSet = new BitSet([0x0001C7C8, 0xFFFF3FFC, 0x000001FF, 0x00000000]);
        public static const FOLLOW_PropRef_in_value748:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_exp_in_value750:BitSet = new BitSet([0x00010000, 0x00000000]);
        public static const FOLLOW_Identifier_in_value754:BitSet = new BitSet([0x00000008, 0x00000000]);
        public static const FOLLOW_PropExp_in_value779:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_exp_in_value781:BitSet = new BitSet([0x0001C7C8, 0xFFFF3FFC, 0x000001FF, 0x00000000]);
        public static const FOLLOW_exp_in_value783:BitSet = new BitSet([0x00000008, 0x00000000]);
        public static const FOLLOW_NumberLiteral_in_value797:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_StringLiteral_in_value811:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_71_in_value825:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_72_in_value838:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_Identifier_in_value855:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_CreateArray_in_value902:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_exp_in_value904:BitSet = new BitSet([0x0001C7C8, 0xFFFF3FFC, 0x000001FF, 0x00000000]);
        public static const FOLLOW_IfStmt_in_synpred5_ExpressionWalker131:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_exp_in_synpred5_ExpressionWalker136:BitSet = new BitSet([0x00000010, 0x00000000]);
        public static const FOLLOW_stmtList_in_synpred5_ExpressionWalker148:BitSet = new BitSet([0x00000010, 0x00000000]);
        public static const FOLLOW_stmtList_in_synpred5_ExpressionWalker159:BitSet = new BitSet([0x00000008, 0x00000000]);
        public static const FOLLOW_IfStmt_in_synpred6_ExpressionWalker182:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_exp_in_synpred6_ExpressionWalker187:BitSet = new BitSet([0x00000010, 0x00000000]);
        public static const FOLLOW_stmtList_in_synpred6_ExpressionWalker199:BitSet = new BitSet([0x00000800, 0x00000000]);
        public static const FOLLOW_ifStmt_in_synpred6_ExpressionWalker210:BitSet = new BitSet([0x00000008, 0x00000000]);
        public static const FOLLOW_set_in_synpred41_ExpressionWalker513:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_exp_in_synpred41_ExpressionWalker600:BitSet = new BitSet([0x0001C7C8, 0xFFFF3FFC, 0x000001FF, 0x00000000]);
        public static const FOLLOW_exp_in_synpred41_ExpressionWalker602:BitSet = new BitSet([0x00000008, 0x00000000]);
        public static const FOLLOW_set_in_synpred46_ExpressionWalker688:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_exp_in_synpred46_ExpressionWalker707:BitSet = new BitSet([0x00000008, 0x00000000]);

    }
}