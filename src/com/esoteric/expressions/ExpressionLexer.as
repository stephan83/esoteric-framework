// $ANTLR 3.2 Sep 23, 2009 12:02:23 C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g 2010-01-24 02:07:08
package com.esoteric.expressions {
    import org.antlr.runtime.*;
        

    public class ExpressionLexer extends Lexer {
        public static const StmtList:int=4;
        public static const CreateObject:int=11;
        public static const EOF:int=-1;
        public static const Identifier:int=22;
        public static const T__93:int=93;
        public static const T__94:int=94;
        public static const T__91:int=91;
        public static const T__92:int=92;
        public static const T__90:int=90;
        public static const WhiteSpace:int=31;
        public static const T__96:int=96;
        public static const T__95:int=95;
        public static const T__80:int=80;
        public static const T__81:int=81;
        public static const T__82:int=82;
        public static const T__83:int=83;
        public static const UnicodeEscapeChar:int=33;
        public static const InstrList:int=5;
        public static const T__85:int=85;
        public static const T__84:int=84;
        public static const T__87:int=87;
        public static const T__86:int=86;
        public static const T__89:int=89;
        public static const T__88:int=88;
        public static const PreDec:int=20;
        public static const T__71:int=71;
        public static const T__72:int=72;
        public static const T__70:int=70;
        public static const FuncCall:int=6;
        public static const T__76:int=76;
        public static const T__75:int=75;
        public static const T__74:int=74;
        public static const T__73:int=73;
        public static const EscapeSequence:int=30;
        public static const Letter:int=32;
        public static const T__79:int=79;
        public static const T__78:int=78;
        public static const T__77:int=77;
        public static const T__68:int=68;
        public static const T__69:int=69;
        public static const T__66:int=66;
        public static const T__67:int=67;
        public static const T__64:int=64;
        public static const T__65:int=65;
        public static const T__62:int=62;
        public static const T__63:int=63;
        public static const LineComment:int=25;
        public static const Exponent:int=28;
        public static const T__61:int=61;
        public static const T__60:int=60;
        public static const HexDigit:int=29;
        public static const PropExp:int=8;
        public static const T__55:int=55;
        public static const T__56:int=56;
        public static const T__57:int=57;
        public static const T__58:int=58;
        public static const T__51:int=51;
        public static const T__52:int=52;
        public static const FuncDef:int=15;
        public static const T__53:int=53;
        public static const T__54:int=54;
        public static const WhileStmt:int=13;
        public static const T__59:int=59;
        public static const IfStmt:int=12;
        public static const CondExp:int=9;
        public static const Return:int=16;
        public static const T__50:int=50;
        public static const ForStmt:int=14;
        public static const T__42:int=42;
        public static const CreateArray:int=10;
        public static const T__43:int=43;
        public static const T__40:int=40;
        public static const T__41:int=41;
        public static const T__46:int=46;
        public static const T__47:int=47;
        public static const T__44:int=44;
        public static const T__45:int=45;
        public static const T__48:int=48;
        public static const NumberLiteral:int=23;
        public static const T__49:int=49;
        public static const PostDec:int=21;
        public static const Digit:int=27;
        public static const PreInc:int=18;
        public static const StringLiteral:int=24;
        public static const Local:int=17;
        public static const T__34:int=34;
        public static const T__35:int=35;
        public static const T__36:int=36;
        public static const T__37:int=37;
        public static const T__38:int=38;
        public static const T__39:int=39;
        public static const PropRef:int=7;
        public static const PostInc:int=19;
        public static const MultilineComment:int=26;

        // delegates
        // delegators

        public function ExpressionLexer(input:CharStream = null, state:RecognizerSharedState = null) {
            super(input, state);

            dfa13 = new DFA(this, 13,
                        "353:1: NumberLiteral : ( ( '-' )? ( '.' )? ( Digit )+ ( Exponent )? | ( '-' )? ( Digit )+ '.' ( Digit )+ ( Exponent )? | '0' ( 'x' | 'X' ) ( HexDigit )+ );",
                        DFA13_eot, DFA13_eof, DFA13_min,
                        DFA13_max, DFA13_accept, DFA13_special,
                        DFA13_transition);

            dfa22 = new DFA(this, 22,
                        "1:1: Tokens : ( T__34 | T__35 | T__36 | T__37 | T__38 | T__39 | T__40 | T__41 | T__42 | T__43 | T__44 | T__45 | T__46 | T__47 | T__48 | T__49 | T__50 | T__51 | T__52 | T__53 | T__54 | T__55 | T__56 | T__57 | T__58 | T__59 | T__60 | T__61 | T__62 | T__63 | T__64 | T__65 | T__66 | T__67 | T__68 | T__69 | T__70 | T__71 | T__72 | T__73 | T__74 | T__75 | T__76 | T__77 | T__78 | T__79 | T__80 | T__81 | T__82 | T__83 | T__84 | T__85 | T__86 | T__87 | T__88 | T__89 | T__90 | T__91 | T__92 | T__93 | T__94 | T__95 | T__96 | LineComment | MultilineComment | NumberLiteral | Exponent | StringLiteral | WhiteSpace | Identifier );",
                        DFA22_eot, DFA22_eof, DFA22_min,
                        DFA22_max, DFA22_accept, DFA22_special,
                        DFA22_transition);


        }
        public override function get grammarFileName():String { return "C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g"; }

        // $ANTLR start T__34
        public final function mT__34():void {
            try {
                var _type:int = T__34;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:9:7: ( 'if' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:9:9: 'if'
                {
                matchString("if"); 


                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__34

        // $ANTLR start T__35
        public final function mT__35():void {
            try {
                var _type:int = T__35;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:10:7: ( '(' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:10:9: '('
                {
                match(40); 

                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__35

        // $ANTLR start T__36
        public final function mT__36():void {
            try {
                var _type:int = T__36;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:11:7: ( ')' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:11:9: ')'
                {
                match(41); 

                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__36

        // $ANTLR start T__37
        public final function mT__37():void {
            try {
                var _type:int = T__37;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:12:7: ( 'else' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:12:9: 'else'
                {
                matchString("else"); 


                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__37

        // $ANTLR start T__38
        public final function mT__38():void {
            try {
                var _type:int = T__38;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:13:7: ( 'while' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:13:9: 'while'
                {
                matchString("while"); 


                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__38

        // $ANTLR start T__39
        public final function mT__39():void {
            try {
                var _type:int = T__39;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:14:7: ( '{' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:14:9: '{'
                {
                match(123); 

                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__39

        // $ANTLR start T__40
        public final function mT__40():void {
            try {
                var _type:int = T__40;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:15:7: ( '}' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:15:9: '}'
                {
                match(125); 

                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__40

        // $ANTLR start T__41
        public final function mT__41():void {
            try {
                var _type:int = T__41;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:16:7: ( ';' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:16:9: ';'
                {
                match(59); 

                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__41

        // $ANTLR start T__42
        public final function mT__42():void {
            try {
                var _type:int = T__42;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:17:7: ( '=' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:17:9: '='
                {
                match(61); 

                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__42

        // $ANTLR start T__43
        public final function mT__43():void {
            try {
                var _type:int = T__43;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:18:7: ( '*=' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:18:9: '*='
                {
                matchString("*="); 


                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__43

        // $ANTLR start T__44
        public final function mT__44():void {
            try {
                var _type:int = T__44;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:19:7: ( '/=' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:19:9: '/='
                {
                matchString("/="); 


                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__44

        // $ANTLR start T__45
        public final function mT__45():void {
            try {
                var _type:int = T__45;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:20:7: ( '%=' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:20:9: '%='
                {
                matchString("%="); 


                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__45

        // $ANTLR start T__46
        public final function mT__46():void {
            try {
                var _type:int = T__46;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:21:7: ( '+=' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:21:9: '+='
                {
                matchString("+="); 


                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__46

        // $ANTLR start T__47
        public final function mT__47():void {
            try {
                var _type:int = T__47;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:22:7: ( '-=' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:22:9: '-='
                {
                matchString("-="); 


                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__47

        // $ANTLR start T__48
        public final function mT__48():void {
            try {
                var _type:int = T__48;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:23:7: ( '<<=' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:23:9: '<<='
                {
                matchString("<<="); 


                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__48

        // $ANTLR start T__49
        public final function mT__49():void {
            try {
                var _type:int = T__49;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:24:7: ( '>>=' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:24:9: '>>='
                {
                matchString(">>="); 


                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__49

        // $ANTLR start T__50
        public final function mT__50():void {
            try {
                var _type:int = T__50;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:25:7: ( '>>>=' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:25:9: '>>>='
                {
                matchString(">>>="); 


                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__50

        // $ANTLR start T__51
        public final function mT__51():void {
            try {
                var _type:int = T__51;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:26:7: ( '&=' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:26:9: '&='
                {
                matchString("&="); 


                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__51

        // $ANTLR start T__52
        public final function mT__52():void {
            try {
                var _type:int = T__52;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:27:7: ( '^=' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:27:9: '^='
                {
                matchString("^="); 


                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__52

        // $ANTLR start T__53
        public final function mT__53():void {
            try {
                var _type:int = T__53;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:28:7: ( '|=' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:28:9: '|='
                {
                matchString("|="); 


                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__53

        // $ANTLR start T__54
        public final function mT__54():void {
            try {
                var _type:int = T__54;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:29:7: ( 'var' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:29:9: 'var'
                {
                matchString("var"); 


                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__54

        // $ANTLR start T__55
        public final function mT__55():void {
            try {
                var _type:int = T__55;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:30:7: ( '?' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:30:9: '?'
                {
                match(63); 

                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__55

        // $ANTLR start T__56
        public final function mT__56():void {
            try {
                var _type:int = T__56;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:31:7: ( ':' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:31:9: ':'
                {
                match(58); 

                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__56

        // $ANTLR start T__57
        public final function mT__57():void {
            try {
                var _type:int = T__57;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:32:7: ( '||' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:32:9: '||'
                {
                matchString("||"); 


                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__57

        // $ANTLR start T__58
        public final function mT__58():void {
            try {
                var _type:int = T__58;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:33:7: ( 'or' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:33:9: 'or'
                {
                matchString("or"); 


                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__58

        // $ANTLR start T__59
        public final function mT__59():void {
            try {
                var _type:int = T__59;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:34:7: ( '&&' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:34:9: '&&'
                {
                matchString("&&"); 


                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__59

        // $ANTLR start T__60
        public final function mT__60():void {
            try {
                var _type:int = T__60;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:35:7: ( 'and' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:35:9: 'and'
                {
                matchString("and"); 


                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__60

        // $ANTLR start T__61
        public final function mT__61():void {
            try {
                var _type:int = T__61;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:36:7: ( '|' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:36:9: '|'
                {
                match(124); 

                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__61

        // $ANTLR start T__62
        public final function mT__62():void {
            try {
                var _type:int = T__62;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:37:7: ( '^' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:37:9: '^'
                {
                match(94); 

                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__62

        // $ANTLR start T__63
        public final function mT__63():void {
            try {
                var _type:int = T__63;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:38:7: ( '&' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:38:9: '&'
                {
                match(38); 

                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__63

        // $ANTLR start T__64
        public final function mT__64():void {
            try {
                var _type:int = T__64;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:39:7: ( '==' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:39:9: '=='
                {
                matchString("=="); 


                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__64

        // $ANTLR start T__65
        public final function mT__65():void {
            try {
                var _type:int = T__65;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:40:7: ( '!=' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:40:9: '!='
                {
                matchString("!="); 


                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__65

        // $ANTLR start T__66
        public final function mT__66():void {
            try {
                var _type:int = T__66;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:41:7: ( '===' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:41:9: '==='
                {
                matchString("==="); 


                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__66

        // $ANTLR start T__67
        public final function mT__67():void {
            try {
                var _type:int = T__67;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:42:7: ( '!==' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:42:9: '!=='
                {
                matchString("!=="); 


                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__67

        // $ANTLR start T__68
        public final function mT__68():void {
            try {
                var _type:int = T__68;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:43:7: ( '<' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:43:9: '<'
                {
                match(60); 

                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__68

        // $ANTLR start T__69
        public final function mT__69():void {
            try {
                var _type:int = T__69;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:44:7: ( 'lt' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:44:9: 'lt'
                {
                matchString("lt"); 


                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__69

        // $ANTLR start T__70
        public final function mT__70():void {
            try {
                var _type:int = T__70;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:45:7: ( '>' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:45:9: '>'
                {
                match(62); 

                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__70

        // $ANTLR start T__71
        public final function mT__71():void {
            try {
                var _type:int = T__71;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:46:7: ( 'gt' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:46:9: 'gt'
                {
                matchString("gt"); 


                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__71

        // $ANTLR start T__72
        public final function mT__72():void {
            try {
                var _type:int = T__72;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:47:7: ( '<=' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:47:9: '<='
                {
                matchString("<="); 


                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__72

        // $ANTLR start T__73
        public final function mT__73():void {
            try {
                var _type:int = T__73;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:48:7: ( 'lte' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:48:9: 'lte'
                {
                matchString("lte"); 


                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__73

        // $ANTLR start T__74
        public final function mT__74():void {
            try {
                var _type:int = T__74;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:49:7: ( '>=' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:49:9: '>='
                {
                matchString(">="); 


                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__74

        // $ANTLR start T__75
        public final function mT__75():void {
            try {
                var _type:int = T__75;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:50:7: ( 'gte' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:50:9: 'gte'
                {
                matchString("gte"); 


                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__75

        // $ANTLR start T__76
        public final function mT__76():void {
            try {
                var _type:int = T__76;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:51:7: ( '<<' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:51:9: '<<'
                {
                matchString("<<"); 


                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__76

        // $ANTLR start T__77
        public final function mT__77():void {
            try {
                var _type:int = T__77;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:52:7: ( '>>' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:52:9: '>>'
                {
                matchString(">>"); 


                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__77

        // $ANTLR start T__78
        public final function mT__78():void {
            try {
                var _type:int = T__78;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:53:7: ( '>>>' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:53:9: '>>>'
                {
                matchString(">>>"); 


                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__78

        // $ANTLR start T__79
        public final function mT__79():void {
            try {
                var _type:int = T__79;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:54:7: ( '+' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:54:9: '+'
                {
                match(43); 

                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__79

        // $ANTLR start T__80
        public final function mT__80():void {
            try {
                var _type:int = T__80;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:55:7: ( '-' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:55:9: '-'
                {
                match(45); 

                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__80

        // $ANTLR start T__81
        public final function mT__81():void {
            try {
                var _type:int = T__81;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:56:7: ( '*' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:56:9: '*'
                {
                match(42); 

                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__81

        // $ANTLR start T__82
        public final function mT__82():void {
            try {
                var _type:int = T__82;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:57:7: ( '/' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:57:9: '/'
                {
                match(47); 

                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__82

        // $ANTLR start T__83
        public final function mT__83():void {
            try {
                var _type:int = T__83;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:58:7: ( '%' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:58:9: '%'
                {
                match(37); 

                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__83

        // $ANTLR start T__84
        public final function mT__84():void {
            try {
                var _type:int = T__84;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:59:7: ( '~' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:59:9: '~'
                {
                match(126); 

                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__84

        // $ANTLR start T__85
        public final function mT__85():void {
            try {
                var _type:int = T__85;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:60:7: ( '!' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:60:9: '!'
                {
                match(33); 

                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__85

        // $ANTLR start T__86
        public final function mT__86():void {
            try {
                var _type:int = T__86;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:61:7: ( '++' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:61:9: '++'
                {
                matchString("++"); 


                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__86

        // $ANTLR start T__87
        public final function mT__87():void {
            try {
                var _type:int = T__87;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:62:7: ( '--' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:62:9: '--'
                {
                matchString("--"); 


                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__87

        // $ANTLR start T__88
        public final function mT__88():void {
            try {
                var _type:int = T__88;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:63:7: ( 'true' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:63:9: 'true'
                {
                matchString("true"); 


                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__88

        // $ANTLR start T__89
        public final function mT__89():void {
            try {
                var _type:int = T__89;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:64:7: ( 'false' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:64:9: 'false'
                {
                matchString("false"); 


                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__89

        // $ANTLR start T__90
        public final function mT__90():void {
            try {
                var _type:int = T__90;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:65:7: ( 'null' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:65:9: 'null'
                {
                matchString("null"); 


                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__90

        // $ANTLR start T__91
        public final function mT__91():void {
            try {
                var _type:int = T__91;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:66:7: ( '[' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:66:9: '['
                {
                match(91); 

                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__91

        // $ANTLR start T__92
        public final function mT__92():void {
            try {
                var _type:int = T__92;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:67:7: ( ']' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:67:9: ']'
                {
                match(93); 

                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__92

        // $ANTLR start T__93
        public final function mT__93():void {
            try {
                var _type:int = T__93;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:68:7: ( '.' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:68:9: '.'
                {
                match(46); 

                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__93

        // $ANTLR start T__94
        public final function mT__94():void {
            try {
                var _type:int = T__94;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:69:7: ( 'function' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:69:9: 'function'
                {
                matchString("function"); 


                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__94

        // $ANTLR start T__95
        public final function mT__95():void {
            try {
                var _type:int = T__95;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:70:7: ( ',' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:70:9: ','
                {
                match(44); 

                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__95

        // $ANTLR start T__96
        public final function mT__96():void {
            try {
                var _type:int = T__96;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:71:7: ( 'return' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:71:9: 'return'
                {
                matchString("return"); 


                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__96

        // $ANTLR start LineComment
        public final function mLineComment():void {
            try {
                var _type:int = LineComment;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:340:2: ( '//' (~ ( '\\n' | '\\r' ) )* ( '\\r' )? '\\n' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:340:4: '//' (~ ( '\\n' | '\\r' ) )* ( '\\r' )? '\\n'
                {
                matchString("//"); 

                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:340:9: (~ ( '\\n' | '\\r' ) )*
                loop1:
                do {
                    var alt1:int=2;
                    var LA1_0:int = input.LA(1);

                    if ( ((LA1_0>=0 && LA1_0<=9)||(LA1_0>=11 && LA1_0<=12)||(LA1_0>=14 && LA1_0<=65535)) ) {
                        alt1=1;
                    }


                    switch (alt1) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:340:9: ~ ( '\\n' | '\\r' )
                	    {
                	    if ( (input.LA(1)>=0 && input.LA(1)<=9)||(input.LA(1)>=11 && input.LA(1)<=12)||(input.LA(1)>=14 && input.LA(1)<=65535) ) {
                	        input.consume();

                	    }
                	    else {
                	        throw recover(new MismatchedSetException(null,input));
                	    }


                	    }
                	    break;

                	default :
                	    break loop1;
                    }
                } while (true);

                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:340:25: ( '\\r' )?
                var alt2:int=2;
                var LA2_0:int = input.LA(1);

                if ( (LA2_0==13) ) {
                    alt2=1;
                }
                switch (alt2) {
                    case 1 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:340:25: '\\r'
                        {
                        match(13); 

                        }
                        break;

                }

                match(10); 

                			_channel = HIDDEN;
                		

                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end LineComment

        // $ANTLR start MultilineComment
        public final function mMultilineComment():void {
            try {
                var _type:int = MultilineComment;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:347:2: ( '/*' ( options {greedy=false; } : . )* '*/' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:347:4: '/*' ( options {greedy=false; } : . )* '*/'
                {
                matchString("/*"); 

                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:347:9: ( options {greedy=false; } : . )*
                loop3:
                do {
                    var alt3:int=2;
                    var LA3_0:int = input.LA(1);

                    if ( (LA3_0==42) ) {
                        var LA3_1:int = input.LA(2);

                        if ( (LA3_1==47) ) {
                            alt3=2;
                        }
                        else if ( ((LA3_1>=0 && LA3_1<=46)||(LA3_1>=48 && LA3_1<=65535)) ) {
                            alt3=1;
                        }


                    }
                    else if ( ((LA3_0>=0 && LA3_0<=41)||(LA3_0>=43 && LA3_0<=65535)) ) {
                        alt3=1;
                    }


                    switch (alt3) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:347:36: .
                	    {
                	    matchAny(); 

                	    }
                	    break;

                	default :
                	    break loop3;
                    }
                } while (true);

                matchString("*/"); 


                			_channel = HIDDEN;
                		

                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end MultilineComment

        // $ANTLR start NumberLiteral
        public final function mNumberLiteral():void {
            try {
                var _type:int = NumberLiteral;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:354:3: ( ( '-' )? ( '.' )? ( Digit )+ ( Exponent )? | ( '-' )? ( Digit )+ '.' ( Digit )+ ( Exponent )? | '0' ( 'x' | 'X' ) ( HexDigit )+ )
                var alt13:int=3;
                alt13 = dfa13.predict(input);
                switch (alt13) {
                    case 1 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:354:5: ( '-' )? ( '.' )? ( Digit )+ ( Exponent )?
                        {
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:354:5: ( '-' )?
                        var alt4:int=2;
                        var LA4_0:int = input.LA(1);

                        if ( (LA4_0==45) ) {
                            alt4=1;
                        }
                        switch (alt4) {
                            case 1 :
                                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:354:5: '-'
                                {
                                match(45); 

                                }
                                break;

                        }

                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:354:10: ( '.' )?
                        var alt5:int=2;
                        var LA5_0:int = input.LA(1);

                        if ( (LA5_0==46) ) {
                            alt5=1;
                        }
                        switch (alt5) {
                            case 1 :
                                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:354:10: '.'
                                {
                                match(46); 

                                }
                                break;

                        }

                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:354:15: ( Digit )+
                        var cnt6:int=0;
                        loop6:
                        do {
                            var alt6:int=2;
                            var LA6_0:int = input.LA(1);

                            if ( ((LA6_0>=48 && LA6_0<=57)) ) {
                                alt6=1;
                            }


                            switch (alt6) {
                        	case 1 :
                        	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:354:15: Digit
                        	    {
                        	    mDigit(); 

                        	    }
                        	    break;

                        	default :
                        	    if ( cnt6 >= 1 ) break loop6;
                                    throw new EarlyExitException(6, input);

                            }
                            cnt6++;
                        } while (true);

                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:354:22: ( Exponent )?
                        var alt7:int=2;
                        var LA7_0:int = input.LA(1);

                        if ( (LA7_0==69||LA7_0==101) ) {
                            alt7=1;
                        }
                        switch (alt7) {
                            case 1 :
                                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:354:22: Exponent
                                {
                                mExponent(); 

                                }
                                break;

                        }


                        }
                        break;
                    case 2 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:355:4: ( '-' )? ( Digit )+ '.' ( Digit )+ ( Exponent )?
                        {
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:355:4: ( '-' )?
                        var alt8:int=2;
                        var LA8_0:int = input.LA(1);

                        if ( (LA8_0==45) ) {
                            alt8=1;
                        }
                        switch (alt8) {
                            case 1 :
                                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:355:4: '-'
                                {
                                match(45); 

                                }
                                break;

                        }

                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:355:9: ( Digit )+
                        var cnt9:int=0;
                        loop9:
                        do {
                            var alt9:int=2;
                            var LA9_0:int = input.LA(1);

                            if ( ((LA9_0>=48 && LA9_0<=57)) ) {
                                alt9=1;
                            }


                            switch (alt9) {
                        	case 1 :
                        	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:355:9: Digit
                        	    {
                        	    mDigit(); 

                        	    }
                        	    break;

                        	default :
                        	    if ( cnt9 >= 1 ) break loop9;
                                    throw new EarlyExitException(9, input);

                            }
                            cnt9++;
                        } while (true);

                        match(46); 
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:355:20: ( Digit )+
                        var cnt10:int=0;
                        loop10:
                        do {
                            var alt10:int=2;
                            var LA10_0:int = input.LA(1);

                            if ( ((LA10_0>=48 && LA10_0<=57)) ) {
                                alt10=1;
                            }


                            switch (alt10) {
                        	case 1 :
                        	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:355:20: Digit
                        	    {
                        	    mDigit(); 

                        	    }
                        	    break;

                        	default :
                        	    if ( cnt10 >= 1 ) break loop10;
                                    throw new EarlyExitException(10, input);

                            }
                            cnt10++;
                        } while (true);

                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:355:28: ( Exponent )?
                        var alt11:int=2;
                        var LA11_0:int = input.LA(1);

                        if ( (LA11_0==69||LA11_0==101) ) {
                            alt11=1;
                        }
                        switch (alt11) {
                            case 1 :
                                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:355:28: Exponent
                                {
                                mExponent(); 

                                }
                                break;

                        }


                        }
                        break;
                    case 3 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:356:4: '0' ( 'x' | 'X' ) ( HexDigit )+
                        {
                        match(48); 
                        if ( input.LA(1)==88||input.LA(1)==120 ) {
                            input.consume();

                        }
                        else {
                            throw recover(new MismatchedSetException(null,input));
                        }

                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:356:22: ( HexDigit )+
                        var cnt12:int=0;
                        loop12:
                        do {
                            var alt12:int=2;
                            var LA12_0:int = input.LA(1);

                            if ( ((LA12_0>=48 && LA12_0<=57)||(LA12_0>=65 && LA12_0<=70)||(LA12_0>=97 && LA12_0<=102)) ) {
                                alt12=1;
                            }


                            switch (alt12) {
                        	case 1 :
                        	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:356:22: HexDigit
                        	    {
                        	    mHexDigit(); 

                        	    }
                        	    break;

                        	default :
                        	    if ( cnt12 >= 1 ) break loop12;
                                    throw new EarlyExitException(12, input);

                            }
                            cnt12++;
                        } while (true);


                        }
                        break;

                }
                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end NumberLiteral

        // $ANTLR start Exponent
        public final function mExponent():void {
            try {
                var _type:int = Exponent;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:360:2: ( ( 'e' | 'E' ) ( '-' | '+' )? ( Digit )+ )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:360:4: ( 'e' | 'E' ) ( '-' | '+' )? ( Digit )+
                {
                if ( input.LA(1)==69||input.LA(1)==101 ) {
                    input.consume();

                }
                else {
                    throw recover(new MismatchedSetException(null,input));
                }

                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:360:16: ( '-' | '+' )?
                var alt14:int=2;
                var LA14_0:int = input.LA(1);

                if ( (LA14_0==43||LA14_0==45) ) {
                    alt14=1;
                }
                switch (alt14) {
                    case 1 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:
                        {
                        if ( input.LA(1)==43||input.LA(1)==45 ) {
                            input.consume();

                        }
                        else {
                            throw recover(new MismatchedSetException(null,input));
                        }


                        }
                        break;

                }

                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:360:31: ( Digit )+
                var cnt15:int=0;
                loop15:
                do {
                    var alt15:int=2;
                    var LA15_0:int = input.LA(1);

                    if ( ((LA15_0>=48 && LA15_0<=57)) ) {
                        alt15=1;
                    }


                    switch (alt15) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:360:31: Digit
                	    {
                	    mDigit(); 

                	    }
                	    break;

                	default :
                	    if ( cnt15 >= 1 ) break loop15;
                            throw new EarlyExitException(15, input);

                    }
                    cnt15++;
                } while (true);


                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end Exponent

        // $ANTLR start StringLiteral
        public final function mStringLiteral():void {
            try {
                var _type:int = StringLiteral;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:365:2: ( '\"' ( EscapeSequence | ~ ( '\\u0000' .. '\\u001f' | '\\\\' | '\\\"' ) )* '\"' | '\\'' ( EscapeSequence | ~ ( '\\u0000' .. '\\u001f' | '\\\\' | '\\'' ) )* '\\'' )
                var alt18:int=2;
                var LA18_0:int = input.LA(1);

                if ( (LA18_0==34) ) {
                    alt18=1;
                }
                else if ( (LA18_0==39) ) {
                    alt18=2;
                }
                else {
                    throw new NoViableAltException("", 18, 0, input);

                }
                switch (alt18) {
                    case 1 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:365:4: '\"' ( EscapeSequence | ~ ( '\\u0000' .. '\\u001f' | '\\\\' | '\\\"' ) )* '\"'
                        {
                        match(34); 
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:365:8: ( EscapeSequence | ~ ( '\\u0000' .. '\\u001f' | '\\\\' | '\\\"' ) )*
                        loop16:
                        do {
                            var alt16:int=3;
                            var LA16_0:int = input.LA(1);

                            if ( (LA16_0==92) ) {
                                alt16=1;
                            }
                            else if ( ((LA16_0>=32 && LA16_0<=33)||(LA16_0>=35 && LA16_0<=91)||(LA16_0>=93 && LA16_0<=65535)) ) {
                                alt16=2;
                            }


                            switch (alt16) {
                        	case 1 :
                        	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:365:10: EscapeSequence
                        	    {
                        	    mEscapeSequence(); 

                        	    }
                        	    break;
                        	case 2 :
                        	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:365:27: ~ ( '\\u0000' .. '\\u001f' | '\\\\' | '\\\"' )
                        	    {
                        	    if ( (input.LA(1)>=32 && input.LA(1)<=33)||(input.LA(1)>=35 && input.LA(1)<=91)||(input.LA(1)>=93 && input.LA(1)<=65535) ) {
                        	        input.consume();

                        	    }
                        	    else {
                        	        throw recover(new MismatchedSetException(null,input));
                        	    }


                        	    }
                        	    break;

                        	default :
                        	    break loop16;
                            }
                        } while (true);

                        match(34); 

                        }
                        break;
                    case 2 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:366:4: '\\'' ( EscapeSequence | ~ ( '\\u0000' .. '\\u001f' | '\\\\' | '\\'' ) )* '\\''
                        {
                        match(39); 
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:366:9: ( EscapeSequence | ~ ( '\\u0000' .. '\\u001f' | '\\\\' | '\\'' ) )*
                        loop17:
                        do {
                            var alt17:int=3;
                            var LA17_0:int = input.LA(1);

                            if ( (LA17_0==92) ) {
                                alt17=1;
                            }
                            else if ( ((LA17_0>=32 && LA17_0<=38)||(LA17_0>=40 && LA17_0<=91)||(LA17_0>=93 && LA17_0<=65535)) ) {
                                alt17=2;
                            }


                            switch (alt17) {
                        	case 1 :
                        	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:366:11: EscapeSequence
                        	    {
                        	    mEscapeSequence(); 

                        	    }
                        	    break;
                        	case 2 :
                        	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:366:28: ~ ( '\\u0000' .. '\\u001f' | '\\\\' | '\\'' )
                        	    {
                        	    if ( (input.LA(1)>=32 && input.LA(1)<=38)||(input.LA(1)>=40 && input.LA(1)<=91)||(input.LA(1)>=93 && input.LA(1)<=65535) ) {
                        	        input.consume();

                        	    }
                        	    else {
                        	        throw recover(new MismatchedSetException(null,input));
                        	    }


                        	    }
                        	    break;

                        	default :
                        	    break loop17;
                            }
                        } while (true);

                        match(39); 

                        }
                        break;

                }
                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end StringLiteral

        // $ANTLR start WhiteSpace
        public final function mWhiteSpace():void {
            try {
                var _type:int = WhiteSpace;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:370:2: ( ( '\\t' | ' ' | '\\r' | '\\n' | '\\u000C' )+ )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:370:4: ( '\\t' | ' ' | '\\r' | '\\n' | '\\u000C' )+
                {
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:370:4: ( '\\t' | ' ' | '\\r' | '\\n' | '\\u000C' )+
                var cnt19:int=0;
                loop19:
                do {
                    var alt19:int=2;
                    var LA19_0:int = input.LA(1);

                    if ( ((LA19_0>=9 && LA19_0<=10)||(LA19_0>=12 && LA19_0<=13)||LA19_0==32) ) {
                        alt19=1;
                    }


                    switch (alt19) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:
                	    {
                	    if ( (input.LA(1)>=9 && input.LA(1)<=10)||(input.LA(1)>=12 && input.LA(1)<=13)||input.LA(1)==32 ) {
                	        input.consume();

                	    }
                	    else {
                	        throw recover(new MismatchedSetException(null,input));
                	    }


                	    }
                	    break;

                	default :
                	    if ( cnt19 >= 1 ) break loop19;
                            throw new EarlyExitException(19, input);

                    }
                    cnt19++;
                } while (true);


                			_channel = HIDDEN;
                		

                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end WhiteSpace

        // $ANTLR start Identifier
        public final function mIdentifier():void {
            try {
                var _type:int = Identifier;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:377:2: ( ( Letter | '_' | '$' ) ( Letter | Digit | '_' )* )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:377:4: ( Letter | '_' | '$' ) ( Letter | Digit | '_' )*
                {
                if ( input.LA(1)==36||(input.LA(1)>=65 && input.LA(1)<=90)||input.LA(1)==95||(input.LA(1)>=97 && input.LA(1)<=122) ) {
                    input.consume();

                }
                else {
                    throw recover(new MismatchedSetException(null,input));
                }

                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:377:27: ( Letter | Digit | '_' )*
                loop20:
                do {
                    var alt20:int=2;
                    var LA20_0:int = input.LA(1);

                    if ( ((LA20_0>=48 && LA20_0<=57)||(LA20_0>=65 && LA20_0<=90)||LA20_0==95||(LA20_0>=97 && LA20_0<=122)) ) {
                        alt20=1;
                    }


                    switch (alt20) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:
                	    {
                	    if ( (input.LA(1)>=48 && input.LA(1)<=57)||(input.LA(1)>=65 && input.LA(1)<=90)||input.LA(1)==95||(input.LA(1)>=97 && input.LA(1)<=122) ) {
                	        input.consume();

                	    }
                	    else {
                	        throw recover(new MismatchedSetException(null,input));
                	    }


                	    }
                	    break;

                	default :
                	    break loop20;
                    }
                } while (true);


                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end Identifier

        // $ANTLR start Digit
        public final function mDigit():void {
            try {
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:381:2: ( '0' .. '9' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:381:4: '0' .. '9'
                {
                matchRange(48,57); 

                }

            }
            finally {
            }
        }
        // $ANTLR end Digit

        // $ANTLR start HexDigit
        public final function mHexDigit():void {
            try {
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:385:2: ( Digit | 'a' .. 'f' | 'A' .. 'F' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:
                {
                if ( (input.LA(1)>=48 && input.LA(1)<=57)||(input.LA(1)>=65 && input.LA(1)<=70)||(input.LA(1)>=97 && input.LA(1)<=102) ) {
                    input.consume();

                }
                else {
                    throw recover(new MismatchedSetException(null,input));
                }


                }

            }
            finally {
            }
        }
        // $ANTLR end HexDigit

        // $ANTLR start Letter
        public final function mLetter():void {
            try {
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:391:2: ( 'a' .. 'z' | 'A' .. 'Z' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:
                {
                if ( (input.LA(1)>=65 && input.LA(1)<=90)||(input.LA(1)>=97 && input.LA(1)<=122) ) {
                    input.consume();

                }
                else {
                    throw recover(new MismatchedSetException(null,input));
                }


                }

            }
            finally {
            }
        }
        // $ANTLR end Letter

        // $ANTLR start EscapeSequence
        public final function mEscapeSequence():void {
            try {
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:396:2: ( '\\\\' ( UnicodeEscapeChar | 'b' | 't' | 'n' | 'f' | 'r' | '\\\"' | '\\'' | '\\\\' ) )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:396:4: '\\\\' ( UnicodeEscapeChar | 'b' | 't' | 'n' | 'f' | 'r' | '\\\"' | '\\'' | '\\\\' )
                {
                match(92); 
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:396:9: ( UnicodeEscapeChar | 'b' | 't' | 'n' | 'f' | 'r' | '\\\"' | '\\'' | '\\\\' )
                var alt21:int=9;
                switch ( input.LA(1) ) {
                case 117:
                    {
                    alt21=1;
                    }
                    break;
                case 98:
                    {
                    alt21=2;
                    }
                    break;
                case 116:
                    {
                    alt21=3;
                    }
                    break;
                case 110:
                    {
                    alt21=4;
                    }
                    break;
                case 102:
                    {
                    alt21=5;
                    }
                    break;
                case 114:
                    {
                    alt21=6;
                    }
                    break;
                case 34:
                    {
                    alt21=7;
                    }
                    break;
                case 39:
                    {
                    alt21=8;
                    }
                    break;
                case 92:
                    {
                    alt21=9;
                    }
                    break;
                default:
                    throw new NoViableAltException("", 21, 0, input);

                }

                switch (alt21) {
                    case 1 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:396:10: UnicodeEscapeChar
                        {
                        mUnicodeEscapeChar(); 

                        }
                        break;
                    case 2 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:396:29: 'b'
                        {
                        match(98); 

                        }
                        break;
                    case 3 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:396:33: 't'
                        {
                        match(116); 

                        }
                        break;
                    case 4 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:396:37: 'n'
                        {
                        match(110); 

                        }
                        break;
                    case 5 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:396:41: 'f'
                        {
                        match(102); 

                        }
                        break;
                    case 6 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:396:45: 'r'
                        {
                        match(114); 

                        }
                        break;
                    case 7 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:396:49: '\\\"'
                        {
                        match(34); 

                        }
                        break;
                    case 8 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:396:54: '\\''
                        {
                        match(39); 

                        }
                        break;
                    case 9 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:396:59: '\\\\'
                        {
                        match(92); 

                        }
                        break;

                }


                }

            }
            finally {
            }
        }
        // $ANTLR end EscapeSequence

        // $ANTLR start UnicodeEscapeChar
        public final function mUnicodeEscapeChar():void {
            try {
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:400:2: ( 'u' HexDigit HexDigit HexDigit HexDigit )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:400:4: 'u' HexDigit HexDigit HexDigit HexDigit
                {
                match(117); 
                mHexDigit(); 
                mHexDigit(); 
                mHexDigit(); 
                mHexDigit(); 

                }

            }
            finally {
            }
        }
        // $ANTLR end UnicodeEscapeChar

        public override function mTokens():void {
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:8: ( T__34 | T__35 | T__36 | T__37 | T__38 | T__39 | T__40 | T__41 | T__42 | T__43 | T__44 | T__45 | T__46 | T__47 | T__48 | T__49 | T__50 | T__51 | T__52 | T__53 | T__54 | T__55 | T__56 | T__57 | T__58 | T__59 | T__60 | T__61 | T__62 | T__63 | T__64 | T__65 | T__66 | T__67 | T__68 | T__69 | T__70 | T__71 | T__72 | T__73 | T__74 | T__75 | T__76 | T__77 | T__78 | T__79 | T__80 | T__81 | T__82 | T__83 | T__84 | T__85 | T__86 | T__87 | T__88 | T__89 | T__90 | T__91 | T__92 | T__93 | T__94 | T__95 | T__96 | LineComment | MultilineComment | NumberLiteral | Exponent | StringLiteral | WhiteSpace | Identifier )
            var alt22:int=70;
            alt22 = dfa22.predict(input);
            switch (alt22) {
                case 1 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:10: T__34
                    {
                    mT__34(); 

                    }
                    break;
                case 2 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:16: T__35
                    {
                    mT__35(); 

                    }
                    break;
                case 3 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:22: T__36
                    {
                    mT__36(); 

                    }
                    break;
                case 4 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:28: T__37
                    {
                    mT__37(); 

                    }
                    break;
                case 5 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:34: T__38
                    {
                    mT__38(); 

                    }
                    break;
                case 6 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:40: T__39
                    {
                    mT__39(); 

                    }
                    break;
                case 7 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:46: T__40
                    {
                    mT__40(); 

                    }
                    break;
                case 8 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:52: T__41
                    {
                    mT__41(); 

                    }
                    break;
                case 9 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:58: T__42
                    {
                    mT__42(); 

                    }
                    break;
                case 10 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:64: T__43
                    {
                    mT__43(); 

                    }
                    break;
                case 11 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:70: T__44
                    {
                    mT__44(); 

                    }
                    break;
                case 12 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:76: T__45
                    {
                    mT__45(); 

                    }
                    break;
                case 13 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:82: T__46
                    {
                    mT__46(); 

                    }
                    break;
                case 14 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:88: T__47
                    {
                    mT__47(); 

                    }
                    break;
                case 15 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:94: T__48
                    {
                    mT__48(); 

                    }
                    break;
                case 16 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:100: T__49
                    {
                    mT__49(); 

                    }
                    break;
                case 17 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:106: T__50
                    {
                    mT__50(); 

                    }
                    break;
                case 18 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:112: T__51
                    {
                    mT__51(); 

                    }
                    break;
                case 19 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:118: T__52
                    {
                    mT__52(); 

                    }
                    break;
                case 20 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:124: T__53
                    {
                    mT__53(); 

                    }
                    break;
                case 21 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:130: T__54
                    {
                    mT__54(); 

                    }
                    break;
                case 22 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:136: T__55
                    {
                    mT__55(); 

                    }
                    break;
                case 23 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:142: T__56
                    {
                    mT__56(); 

                    }
                    break;
                case 24 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:148: T__57
                    {
                    mT__57(); 

                    }
                    break;
                case 25 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:154: T__58
                    {
                    mT__58(); 

                    }
                    break;
                case 26 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:160: T__59
                    {
                    mT__59(); 

                    }
                    break;
                case 27 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:166: T__60
                    {
                    mT__60(); 

                    }
                    break;
                case 28 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:172: T__61
                    {
                    mT__61(); 

                    }
                    break;
                case 29 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:178: T__62
                    {
                    mT__62(); 

                    }
                    break;
                case 30 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:184: T__63
                    {
                    mT__63(); 

                    }
                    break;
                case 31 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:190: T__64
                    {
                    mT__64(); 

                    }
                    break;
                case 32 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:196: T__65
                    {
                    mT__65(); 

                    }
                    break;
                case 33 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:202: T__66
                    {
                    mT__66(); 

                    }
                    break;
                case 34 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:208: T__67
                    {
                    mT__67(); 

                    }
                    break;
                case 35 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:214: T__68
                    {
                    mT__68(); 

                    }
                    break;
                case 36 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:220: T__69
                    {
                    mT__69(); 

                    }
                    break;
                case 37 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:226: T__70
                    {
                    mT__70(); 

                    }
                    break;
                case 38 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:232: T__71
                    {
                    mT__71(); 

                    }
                    break;
                case 39 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:238: T__72
                    {
                    mT__72(); 

                    }
                    break;
                case 40 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:244: T__73
                    {
                    mT__73(); 

                    }
                    break;
                case 41 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:250: T__74
                    {
                    mT__74(); 

                    }
                    break;
                case 42 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:256: T__75
                    {
                    mT__75(); 

                    }
                    break;
                case 43 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:262: T__76
                    {
                    mT__76(); 

                    }
                    break;
                case 44 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:268: T__77
                    {
                    mT__77(); 

                    }
                    break;
                case 45 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:274: T__78
                    {
                    mT__78(); 

                    }
                    break;
                case 46 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:280: T__79
                    {
                    mT__79(); 

                    }
                    break;
                case 47 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:286: T__80
                    {
                    mT__80(); 

                    }
                    break;
                case 48 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:292: T__81
                    {
                    mT__81(); 

                    }
                    break;
                case 49 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:298: T__82
                    {
                    mT__82(); 

                    }
                    break;
                case 50 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:304: T__83
                    {
                    mT__83(); 

                    }
                    break;
                case 51 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:310: T__84
                    {
                    mT__84(); 

                    }
                    break;
                case 52 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:316: T__85
                    {
                    mT__85(); 

                    }
                    break;
                case 53 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:322: T__86
                    {
                    mT__86(); 

                    }
                    break;
                case 54 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:328: T__87
                    {
                    mT__87(); 

                    }
                    break;
                case 55 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:334: T__88
                    {
                    mT__88(); 

                    }
                    break;
                case 56 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:340: T__89
                    {
                    mT__89(); 

                    }
                    break;
                case 57 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:346: T__90
                    {
                    mT__90(); 

                    }
                    break;
                case 58 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:352: T__91
                    {
                    mT__91(); 

                    }
                    break;
                case 59 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:358: T__92
                    {
                    mT__92(); 

                    }
                    break;
                case 60 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:364: T__93
                    {
                    mT__93(); 

                    }
                    break;
                case 61 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:370: T__94
                    {
                    mT__94(); 

                    }
                    break;
                case 62 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:376: T__95
                    {
                    mT__95(); 

                    }
                    break;
                case 63 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:382: T__96
                    {
                    mT__96(); 

                    }
                    break;
                case 64 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:388: LineComment
                    {
                    mLineComment(); 

                    }
                    break;
                case 65 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:400: MultilineComment
                    {
                    mMultilineComment(); 

                    }
                    break;
                case 66 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:417: NumberLiteral
                    {
                    mNumberLiteral(); 

                    }
                    break;
                case 67 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:431: Exponent
                    {
                    mExponent(); 

                    }
                    break;
                case 68 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:440: StringLiteral
                    {
                    mStringLiteral(); 

                    }
                    break;
                case 69 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:454: WhiteSpace
                    {
                    mWhiteSpace(); 

                    }
                    break;
                case 70 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:465: Identifier
                    {
                    mIdentifier(); 

                    }
                    break;

            }

        }



        private const DFA13_eot:Array =
            DFA.unpackEncodedString("\x03\u80ff\xff\x02\x02\x02\u80ff\xff");
        private const DFA13_eof:Array =
            DFA.unpackEncodedString("\x07\u80ff\xff");
        private const DFA13_min:Array =
            DFA.unpackEncodedString("\x01\x2d\x01\x2e\x01\u80ff\xff\x02"+
            "\x2e\x02\u80ff\xff", true);
        private const DFA13_max:Array =
            DFA.unpackEncodedString("\x02\x39\x01\u80ff\xff\x01\x78\x01"+
            "\x39\x02\u80ff\xff", true);
        private const DFA13_accept:Array =
            DFA.unpackEncodedString("\x02\u80ff\xff\x01\x01\x02\u80ff\xff"+
            "\x01\x03\x01\x02");
        private const DFA13_special:Array =
            DFA.unpackEncodedString("\x07\u80ff\xff");
        private const DFA13_transition:Array = [
                DFA.unpackEncodedString("\x01\x01\x01\x02\x01\u80ff\xff"+
                "\x01\x03\x09\x04"),
                DFA.unpackEncodedString("\x01\x02\x01\u80ff\xff\x0a\x04"),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString("\x01\x06\x01\u80ff\xff\x0a\x04"+
                "\x1e\u80ff\xff\x01\x05\x1f\u80ff\xff\x01\x05"),
                DFA.unpackEncodedString("\x01\x06\x01\u80ff\xff\x0a\x04"),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString("")
        ];
        protected var dfa13:DFA;  // initialized in constructor

        private const DFA22_eot:Array =
            DFA.unpackEncodedString("\x01\u80ff\xff\x01\x29\x02\u80ff\xff"+
            "\x02\x29\x03\u80ff\xff\x01\x30\x01\x32\x01\x36\x01\x38\x01\x3b"+
            "\x01\x3e\x01\x41\x01\x44\x01\x47\x01\x49\x01\x4c\x01\x29\x02"+
            "\u80ff\xff\x02\x29\x01\x51\x02\x29\x01\u80ff\xff\x03\x29\x02"+
            "\u80ff\xff\x01\x58\x01\u80ff\xff\x01\x29\x01\u80ff\xff\x01\x29"+
            "\x03\u80ff\xff\x01\x5a\x01\x29\x01\x2d\x01\u80ff\xff\x01\x29"+
            "\x01\x5e\x0f\u80ff\xff\x01\x60\x02\u80ff\xff\x01\x63\x0a\u80ff\xff"+
            "\x01\x29\x01\x65\x01\x29\x01\x68\x01\u80ff\xff\x01\x6a\x01\x6c"+
            "\x04\x29\x01\u80ff\xff\x01\x29\x01\u80ff\xff\x02\x29\x05\u80ff\xff"+
            "\x01\x75\x01\u80ff\xff\x01\x76\x01\u80ff\xff\x01\x77\x02\u80ff\xff"+
            "\x01\x78\x01\u80ff\xff\x01\x79\x01\u80ff\xff\x05\x29\x01\x7f"+
            "\x01\x29\x06\u80ff\xff\x01\x81\x02\x29\x01\x84\x01\x29\x01\u80ff\xff"+
            "\x01\x86\x01\u80ff\xff\x01\x87\x01\x29\x01\u80ff\xff\x01\x29"+
            "\x02\u80ff\xff\x01\x29\x01\x8b\x01\x29\x01\u80ff\xff\x01\x8d"+
            "\x01\u80ff\xff");
        private const DFA22_eof:Array =
            DFA.unpackEncodedString("\x8e\u80ff\xff");
        private const DFA22_min:Array =
            DFA.unpackEncodedString("\x01\x09\x01\x66\x02\u80ff\xff\x01"+
            "\x2b\x01\x68\x03\u80ff\xff\x02\x3d\x01\x2a\x01\x3d\x01\x2b\x01"+
            "\x2d\x01\x3c\x01\x3d\x01\x26\x02\x3d\x01\x61\x02\u80ff\xff\x01"+
            "\x72\x01\x6e\x01\x3d\x02\x74\x01\u80ff\xff\x01\x72\x01\x61\x01"+
            "\x75\x02\u80ff\xff\x01\x30\x01\u80ff\xff\x01\x65\x01\u80ff\xff"+
            "\x01\x2b\x03\u80ff\xff\x01\x30\x01\x73\x01\x30\x01\u80ff\xff"+
            "\x01\x69\x01\x3d\x0f\u80ff\xff\x01\x3d\x02\u80ff\xff\x01\x3d"+
            "\x0a\u80ff\xff\x01\x72\x01\x30\x01\x64\x01\x3d\x01\u80ff\xff"+
            "\x02\x30\x01\x75\x01\x6c\x01\x6e\x01\x6c\x01\u80ff\xff\x01\x74"+
            "\x01\u80ff\xff\x01\x65\x01\x6c\x05\u80ff\xff\x01\x3d\x01\u80ff\xff"+
            "\x01\x30\x01\u80ff\xff\x01\x30\x02\u80ff\xff\x01\x30\x01\u80ff\xff"+
            "\x01\x30\x01\u80ff\xff\x01\x65\x01\x73\x01\x63\x01\x6c\x01\x75"+
            "\x01\x30\x01\x65\x06\u80ff\xff\x01\x30\x01\x65\x01\x74\x01\x30"+
            "\x01\x72\x01\u80ff\xff\x01\x30\x01\u80ff\xff\x01\x30\x01\x69"+
            "\x01\u80ff\xff\x01\x6e\x02\u80ff\xff\x01\x6f\x01\x30\x01\x6e"+
            "\x01\u80ff\xff\x01\x30\x01\u80ff\xff", true);
        private const DFA22_max:Array =
            DFA.unpackEncodedString("\x01\x7e\x01\x66\x02\u80ff\xff\x01"+
            "\x6c\x01\x68\x03\u80ff\xff\x07\x3d\x01\x3e\x02\x3d\x01\x7c\x01"+
            "\x61\x02\u80ff\xff\x01\x72\x01\x6e\x01\x3d\x02\x74\x01\u80ff\xff"+
            "\x01\x72\x02\x75\x02\u80ff\xff\x01\x39\x01\u80ff\xff\x01\x65"+
            "\x01\u80ff\xff\x01\x39\x03\u80ff\xff\x01\x7a\x01\x73\x01\x7a"+
            "\x01\u80ff\xff\x01\x69\x01\x3d\x0f\u80ff\xff\x01\x3d\x02\u80ff\xff"+
            "\x01\x3e\x0a\u80ff\xff\x01\x72\x01\x7a\x01\x64\x01\x3d\x01\u80ff\xff"+
            "\x02\x7a\x01\x75\x01\x6c\x01\x6e\x01\x6c\x01\u80ff\xff\x01\x74"+
            "\x01\u80ff\xff\x01\x65\x01\x6c\x05\u80ff\xff\x01\x3d\x01\u80ff\xff"+
            "\x01\x7a\x01\u80ff\xff\x01\x7a\x02\u80ff\xff\x01\x7a\x01\u80ff\xff"+
            "\x01\x7a\x01\u80ff\xff\x01\x65\x01\x73\x01\x63\x01\x6c\x01\x75"+
            "\x01\x7a\x01\x65\x06\u80ff\xff\x01\x7a\x01\x65\x01\x74\x01\x7a"+
            "\x01\x72\x01\u80ff\xff\x01\x7a\x01\u80ff\xff\x01\x7a\x01\x69"+
            "\x01\u80ff\xff\x01\x6e\x02\u80ff\xff\x01\x6f\x01\x7a\x01\x6e"+
            "\x01\u80ff\xff\x01\x7a\x01\u80ff\xff", true);
        private const DFA22_accept:Array =
            DFA.unpackEncodedString("\x02\u80ff\xff\x01\x02\x01\x03\x02"+
            "\u80ff\xff\x01\x06\x01\x07\x01\x08\x0c\u80ff\xff\x01\x16\x01"+
            "\x17\x05\u80ff\xff\x01\x33\x03\u80ff\xff\x01\x3a\x01\x3b\x01"+
            "\u80ff\xff\x01\x3e\x01\u80ff\xff\x01\x42\x01\u80ff\xff\x01\x44"+
            "\x01\x45\x01\x46\x03\u80ff\xff\x01\x43\x02\u80ff\xff\x01\x09"+
            "\x01\x0a\x01\x30\x01\x0b\x01\x40\x01\x41\x01\x31\x01\x0c\x01"+
            "\x32\x01\x0d\x01\x35\x01\x2e\x01\x0e\x01\x36\x01\x2f\x01\u80ff\xff"+
            "\x01\x27\x01\x23\x01\u80ff\xff\x01\x29\x01\x25\x01\x12\x01\x1a"+
            "\x01\x1e\x01\x13\x01\x1d\x01\x14\x01\x18\x01\x1c\x04\u80ff\xff"+
            "\x01\x34\x06\u80ff\xff\x01\x3c\x01\u80ff\xff\x01\x01\x02\u80ff\xff"+
            "\x01\x21\x01\x1f\x01\x0f\x01\x2b\x01\x10\x01\u80ff\xff\x01\x2c"+
            "\x01\u80ff\xff\x01\x19\x01\u80ff\xff\x01\x22\x01\x20\x01\u80ff\xff"+
            "\x01\x24\x01\u80ff\xff\x01\x26\x07\u80ff\xff\x01\x11\x01\x2d"+
            "\x01\x15\x01\x1b\x01\x28\x01\x2a\x05\u80ff\xff\x01\x04\x01\u80ff\xff"+
            "\x01\x37\x02\u80ff\xff\x01\x39\x01\u80ff\xff\x01\x05\x01\x38"+
            "\x03\u80ff\xff\x01\x3f\x01\u80ff\xff\x01\x3d");
        private const DFA22_special:Array =
            DFA.unpackEncodedString("\x8e\u80ff\xff");
        private const DFA22_transition:Array = [
                DFA.unpackEncodedString("\x02\x28\x01\u80ff\xff\x02\x28"+
                "\x12\u80ff\xff\x01\x28\x01\x19\x01\x27\x01\u80ff\xff\x01"+
                "\x29\x01\x0c\x01\x11\x01\x27\x01\x02\x01\x03\x01\x0a\x01"+
                "\x0d\x01\x23\x01\x0e\x01\x22\x01\x0b\x0a\x25\x01\x16\x01"+
                "\x08\x01\x0f\x01\x09\x01\x10\x01\x15\x01\u80ff\xff\x04\x29"+
                "\x01\x26\x15\x29\x01\x20\x01\u80ff\xff\x01\x21\x01\x12\x01"+
                "\x29\x01\u80ff\xff\x01\x18\x03\x29\x01\x04\x01\x1e\x01\x1b"+
                "\x01\x29\x01\x01\x02\x29\x01\x1a\x01\x29\x01\x1f\x01\x17"+
                "\x02\x29\x01\x24\x01\x29\x01\x1d\x01\x29\x01\x14\x01\x05"+
                "\x03\x29\x01\x06\x01\x13\x01\x07\x01\x1c"),
                DFA.unpackEncodedString("\x01\x2a"),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString("\x01\x2d\x01\u80ff\xff\x01\x2d"+
                "\x02\u80ff\xff\x0a\x2c\x32\u80ff\xff\x01\x2b"),
                DFA.unpackEncodedString("\x01\x2e"),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString("\x01\x2f"),
                DFA.unpackEncodedString("\x01\x31"),
                DFA.unpackEncodedString("\x01\x35\x04\u80ff\xff\x01\x34"+
                "\x0d\u80ff\xff\x01\x33"),
                DFA.unpackEncodedString("\x01\x37"),
                DFA.unpackEncodedString("\x01\x3a\x11\u80ff\xff\x01\x39"),
                DFA.unpackEncodedString("\x01\x3d\x01\x25\x01\u80ff\xff"+
                "\x0a\x25\x03\u80ff\xff\x01\x3c"),
                DFA.unpackEncodedString("\x01\x3f\x01\x40"),
                DFA.unpackEncodedString("\x01\x43\x01\x42"),
                DFA.unpackEncodedString("\x01\x46\x16\u80ff\xff\x01\x45"),
                DFA.unpackEncodedString("\x01\x48"),
                DFA.unpackEncodedString("\x01\x4a\x3e\u80ff\xff\x01\x4b"),
                DFA.unpackEncodedString("\x01\x4d"),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString("\x01\x4e"),
                DFA.unpackEncodedString("\x01\x4f"),
                DFA.unpackEncodedString("\x01\x50"),
                DFA.unpackEncodedString("\x01\x52"),
                DFA.unpackEncodedString("\x01\x53"),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString("\x01\x54"),
                DFA.unpackEncodedString("\x01\x55\x13\u80ff\xff\x01\x56"),
                DFA.unpackEncodedString("\x01\x57"),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString("\x0a\x25"),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString("\x01\x59"),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString("\x01\x2d\x01\u80ff\xff\x01\x2d"+
                "\x02\u80ff\xff\x0a\x2c"),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString("\x0a\x29\x07\u80ff\xff\x1a\x29"+
                "\x04\u80ff\xff\x01\x29\x01\u80ff\xff\x1a\x29"),
                DFA.unpackEncodedString("\x01\x5b"),
                DFA.unpackEncodedString("\x0a\x2c\x07\u80ff\xff\x1a\x29"+
                "\x04\u80ff\xff\x01\x29\x01\u80ff\xff\x1a\x29"),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString("\x01\x5c"),
                DFA.unpackEncodedString("\x01\x5d"),
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
                DFA.unpackEncodedString("\x01\x5f"),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString("\x01\x61\x01\x62"),
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
                DFA.unpackEncodedString("\x01\x64"),
                DFA.unpackEncodedString("\x0a\x29\x07\u80ff\xff\x1a\x29"+
                "\x04\u80ff\xff\x01\x29\x01\u80ff\xff\x1a\x29"),
                DFA.unpackEncodedString("\x01\x66"),
                DFA.unpackEncodedString("\x01\x67"),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString("\x0a\x29\x07\u80ff\xff\x1a\x29"+
                "\x04\u80ff\xff\x01\x29\x01\u80ff\xff\x04\x29\x01\x69\x15"+
                "\x29"),
                DFA.unpackEncodedString("\x0a\x29\x07\u80ff\xff\x1a\x29"+
                "\x04\u80ff\xff\x01\x29\x01\u80ff\xff\x04\x29\x01\x6b\x15"+
                "\x29"),
                DFA.unpackEncodedString("\x01\x6d"),
                DFA.unpackEncodedString("\x01\x6e"),
                DFA.unpackEncodedString("\x01\x6f"),
                DFA.unpackEncodedString("\x01\x70"),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString("\x01\x71"),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString("\x01\x72"),
                DFA.unpackEncodedString("\x01\x73"),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString("\x01\x74"),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString("\x0a\x29\x07\u80ff\xff\x1a\x29"+
                "\x04\u80ff\xff\x01\x29\x01\u80ff\xff\x1a\x29"),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString("\x0a\x29\x07\u80ff\xff\x1a\x29"+
                "\x04\u80ff\xff\x01\x29\x01\u80ff\xff\x1a\x29"),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString("\x0a\x29\x07\u80ff\xff\x1a\x29"+
                "\x04\u80ff\xff\x01\x29\x01\u80ff\xff\x1a\x29"),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString("\x0a\x29\x07\u80ff\xff\x1a\x29"+
                "\x04\u80ff\xff\x01\x29\x01\u80ff\xff\x1a\x29"),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString("\x01\x7a"),
                DFA.unpackEncodedString("\x01\x7b"),
                DFA.unpackEncodedString("\x01\x7c"),
                DFA.unpackEncodedString("\x01\x7d"),
                DFA.unpackEncodedString("\x01\x7e"),
                DFA.unpackEncodedString("\x0a\x29\x07\u80ff\xff\x1a\x29"+
                "\x04\u80ff\xff\x01\x29\x01\u80ff\xff\x1a\x29"),
                DFA.unpackEncodedString("\x01\x80"),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString("\x0a\x29\x07\u80ff\xff\x1a\x29"+
                "\x04\u80ff\xff\x01\x29\x01\u80ff\xff\x1a\x29"),
                DFA.unpackEncodedString("\x01\x82"),
                DFA.unpackEncodedString("\x01\x83"),
                DFA.unpackEncodedString("\x0a\x29\x07\u80ff\xff\x1a\x29"+
                "\x04\u80ff\xff\x01\x29\x01\u80ff\xff\x1a\x29"),
                DFA.unpackEncodedString("\x01\x85"),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString("\x0a\x29\x07\u80ff\xff\x1a\x29"+
                "\x04\u80ff\xff\x01\x29\x01\u80ff\xff\x1a\x29"),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString("\x0a\x29\x07\u80ff\xff\x1a\x29"+
                "\x04\u80ff\xff\x01\x29\x01\u80ff\xff\x1a\x29"),
                DFA.unpackEncodedString("\x01\x88"),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString("\x01\x89"),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString("\x01\x8a"),
                DFA.unpackEncodedString("\x0a\x29\x07\u80ff\xff\x1a\x29"+
                "\x04\u80ff\xff\x01\x29\x01\u80ff\xff\x1a\x29"),
                DFA.unpackEncodedString("\x01\x8c"),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString("\x0a\x29\x07\u80ff\xff\x1a\x29"+
                "\x04\u80ff\xff\x01\x29\x01\u80ff\xff\x1a\x29"),
                DFA.unpackEncodedString("")
        ];
        protected var dfa22:DFA;  // initialized in constructor
     

    }
}