// $ANTLR 3.2 Sep 23, 2009 12:02:23 C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g 2010-01-23 21:57:50
package com.esoteric.equery {
    import org.antlr.runtime.*;
        

    import org.antlr.runtime.tree.*;


    public class EQueryParser extends Parser {
        public static const tokenNames:Array = [
            "<invalid>", "<EOR>", "<DOWN>", "<UP>", "Query", "AllSelector", "KindSelector", "IdSelector", "ChildSelector", "ClassSelector", "FirstSelector", "LastSelector", "AttrSelector", "Identifier", "NumberLiteral", "StringLiteral", "Digit", "Exponent", "HexDigit", "EscapeSequence", "WhiteSpace", "Letter", "UnicodeEscapeChar", "'*'", "'#'", "'>'", "'.'", "':first-child'", "':last-child'", "'['", "']'", "'='", "'!='", "'<'", "'<='", "'>='"
        ];
        public static const ClassSelector:int=9;
        public static const T__29:int=29;
        public static const T__28:int=28;
        public static const T__27:int=27;
        public static const Query:int=4;
        public static const T__26:int=26;
        public static const T__25:int=25;
        public static const UnicodeEscapeChar:int=22;
        public static const T__24:int=24;
        public static const NumberLiteral:int=14;
        public static const IdSelector:int=7;
        public static const T__23:int=23;
        public static const AttrSelector:int=12;
        public static const ChildSelector:int=8;
        public static const KindSelector:int=6;
        public static const Exponent:int=17;
        public static const Digit:int=16;
        public static const EOF:int=-1;
        public static const HexDigit:int=18;
        public static const Identifier:int=13;
        public static const StringLiteral:int=15;
        public static const T__30:int=30;
        public static const T__31:int=31;
        public static const FirstSelector:int=10;
        public static const T__32:int=32;
        public static const T__33:int=33;
        public static const LastSelector:int=11;
        public static const T__34:int=34;
        public static const T__35:int=35;
        public static const AllSelector:int=5;
        public static const WhiteSpace:int=20;
        public static const Letter:int=21;
        public static const EscapeSequence:int=19;

        // delegates
        // delegators


            public function EQueryParser(input:TokenStream, state:RecognizerSharedState = null) {
                super(input, state);
                this.state.ruleMemo = new Array(29+1);
                 
            }
            
        protected var adaptor:TreeAdaptor = new CommonTreeAdaptor();

        override public function set treeAdaptor(adaptor:TreeAdaptor):void {
            this.adaptor = adaptor;
        }
        override public function get treeAdaptor():TreeAdaptor {
            return adaptor;
        }

        public override function get tokenNames():Array { return EQueryParser.tokenNames; }
        public override function get grammarFileName():String { return "C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g"; }


        	private var _errorReporter:IErrorReporter;
        	
        	public function set errorReporter(reporter:IErrorReporter):void { _errorReporter = reporter; }
        	
        	override public function displayRecognitionError(tokenNames:Array, e:RecognitionException):void
        	{
        		var header:String = getErrorHeader(e);
        		var msg:String = getErrorMessage(e, tokenNames);
        		
        		_errorReporter.report(header, msg, e.line);
        	}


        // $ANTLR start main
        // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:45:1: main : ( query EOF | EOF );
        public final function main():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var main_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var EOF2:Token=null;
            var EOF3:Token=null;
            var query1:ParserRuleReturnScope = null;


            var EOF2_tree:CommonTree=null;
            var EOF3_tree:CommonTree=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 1) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:46:2: ( query EOF | EOF )
                var alt1:int=2;
                var LA1_0:int = input.LA(1);

                if ( (LA1_0==13||(LA1_0>=23 && LA1_0<=29)) ) {
                    alt1=1;
                }
                else if ( (LA1_0==-1) ) {
                    var LA1_2:int = input.LA(2);

                    if ( (synpred1_EQuery()) ) {
                        alt1=1;
                    }
                    else if ( (true) ) {
                        alt1=2;
                    }
                    else {
                        if (this.state.backtracking>0) {this.state.failed=true; return retval;}
                        throw new NoViableAltException("", 1, 2, input);

                    }
                }
                else {
                    if (this.state.backtracking>0) {this.state.failed=true; return retval;}
                    throw new NoViableAltException("", 1, 0, input);

                }
                switch (alt1) {
                    case 1 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:46:4: query EOF
                        {
                        root_0 = CommonTree(adaptor.nil());

                        pushFollow(FOLLOW_query_in_main116);
                        query1=query();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) adaptor.addChild(root_0, query1.tree);
                        EOF2=Token(matchStream(input,EOF,FOLLOW_EOF_in_main118)); if (this.state.failed) return retval;

                        }
                        break;
                    case 2 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:47:4: EOF
                        {
                        root_0 = CommonTree(adaptor.nil());

                        EOF3=Token(matchStream(input,EOF,FOLLOW_EOF_in_main124)); if (this.state.failed) return retval;
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

        // $ANTLR start query
        // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:50:1: query : ( selector )* -> ^( Query ( selector )* ) ;
        public final function query():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var query_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var selector4:ParserRuleReturnScope = null;


            var stream_selector:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule selector");
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 2) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:51:2: ( ( selector )* -> ^( Query ( selector )* ) )
                // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:51:4: ( selector )*
                {
                // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:51:4: ( selector )*
                loop2:
                do {
                    var alt2:int=2;
                    var LA2_0:int = input.LA(1);

                    if ( (LA2_0==13||(LA2_0>=23 && LA2_0<=29)) ) {
                        alt2=1;
                    }


                    switch (alt2) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:0:0: selector
                	    {
                	    pushFollow(FOLLOW_selector_in_query136);
                	    selector4=selector();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) stream_selector.add(selector4.tree);

                	    }
                	    break;

                	default :
                	    break loop2;
                    }
                } while (true);



                // AST REWRITE
                // elements: selector
                // token labels: 
                // rule labels: retval
                // token list labels: 
                // rule list labels: 
                if ( this.state.backtracking==0 ) {
                retval.tree = root_0;
                var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                root_0 = CommonTree(adaptor.nil());
                // 51:16: -> ^( Query ( selector )* )
                {
                    // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:51:19: ^( Query ( selector )* )
                    {
                    var root_1:CommonTree = CommonTree(adaptor.nil());
                    root_1 = CommonTree(adaptor.becomeRoot(CommonTree(adaptor.create(Query, "Query")), root_1));

                    // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:51:27: ( selector )*
                    while ( stream_selector.hasNext ) {
                        adaptor.addChild(root_1, stream_selector.nextTree());

                    }
                    stream_selector.reset();

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
                if ( this.state.backtracking>0 ) { memoize(input, 2, query_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end query

        // $ANTLR start selector
        // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:54:1: selector : ( allSelector | kindSelector | idSelector | childSelector | classSelector | firstSelector | lastSelector | attrSelector );
        public final function selector():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var selector_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var allSelector5:ParserRuleReturnScope = null;

            var kindSelector6:ParserRuleReturnScope = null;

            var idSelector7:ParserRuleReturnScope = null;

            var childSelector8:ParserRuleReturnScope = null;

            var classSelector9:ParserRuleReturnScope = null;

            var firstSelector10:ParserRuleReturnScope = null;

            var lastSelector11:ParserRuleReturnScope = null;

            var attrSelector12:ParserRuleReturnScope = null;



            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 3) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:55:2: ( allSelector | kindSelector | idSelector | childSelector | classSelector | firstSelector | lastSelector | attrSelector )
                var alt3:int=8;
                switch ( input.LA(1) ) {
                case 23:
                    {
                    alt3=1;
                    }
                    break;
                case Identifier:
                    {
                    alt3=2;
                    }
                    break;
                case 24:
                    {
                    alt3=3;
                    }
                    break;
                case 25:
                    {
                    alt3=4;
                    }
                    break;
                case 26:
                    {
                    alt3=5;
                    }
                    break;
                case 27:
                    {
                    alt3=6;
                    }
                    break;
                case 28:
                    {
                    alt3=7;
                    }
                    break;
                case 29:
                    {
                    alt3=8;
                    }
                    break;
                default:
                    if (this.state.backtracking>0) {this.state.failed=true; return retval;}
                    throw new NoViableAltException("", 3, 0, input);

                }

                switch (alt3) {
                    case 1 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:55:4: allSelector
                        {
                        root_0 = CommonTree(adaptor.nil());

                        pushFollow(FOLLOW_allSelector_in_selector160);
                        allSelector5=allSelector();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) adaptor.addChild(root_0, allSelector5.tree);

                        }
                        break;
                    case 2 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:56:4: kindSelector
                        {
                        root_0 = CommonTree(adaptor.nil());

                        pushFollow(FOLLOW_kindSelector_in_selector165);
                        kindSelector6=kindSelector();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) adaptor.addChild(root_0, kindSelector6.tree);

                        }
                        break;
                    case 3 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:57:4: idSelector
                        {
                        root_0 = CommonTree(adaptor.nil());

                        pushFollow(FOLLOW_idSelector_in_selector170);
                        idSelector7=idSelector();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) adaptor.addChild(root_0, idSelector7.tree);

                        }
                        break;
                    case 4 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:58:4: childSelector
                        {
                        root_0 = CommonTree(adaptor.nil());

                        pushFollow(FOLLOW_childSelector_in_selector175);
                        childSelector8=childSelector();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) adaptor.addChild(root_0, childSelector8.tree);

                        }
                        break;
                    case 5 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:59:4: classSelector
                        {
                        root_0 = CommonTree(adaptor.nil());

                        pushFollow(FOLLOW_classSelector_in_selector180);
                        classSelector9=classSelector();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) adaptor.addChild(root_0, classSelector9.tree);

                        }
                        break;
                    case 6 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:60:4: firstSelector
                        {
                        root_0 = CommonTree(adaptor.nil());

                        pushFollow(FOLLOW_firstSelector_in_selector185);
                        firstSelector10=firstSelector();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) adaptor.addChild(root_0, firstSelector10.tree);

                        }
                        break;
                    case 7 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:61:4: lastSelector
                        {
                        root_0 = CommonTree(adaptor.nil());

                        pushFollow(FOLLOW_lastSelector_in_selector190);
                        lastSelector11=lastSelector();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) adaptor.addChild(root_0, lastSelector11.tree);

                        }
                        break;
                    case 8 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:62:4: attrSelector
                        {
                        root_0 = CommonTree(adaptor.nil());

                        pushFollow(FOLLOW_attrSelector_in_selector195);
                        attrSelector12=attrSelector();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) adaptor.addChild(root_0, attrSelector12.tree);

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
                if ( this.state.backtracking>0 ) { memoize(input, 3, selector_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end selector

        // $ANTLR start allSelector
        // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:65:1: allSelector : '*' -> ^( AllSelector ) ;
        public final function allSelector():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var allSelector_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var char_literal13:Token=null;

            var char_literal13_tree:CommonTree=null;
            var stream_23:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 23");

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 4) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:66:2: ( '*' -> ^( AllSelector ) )
                // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:66:4: '*'
                {
                char_literal13=Token(matchStream(input,23,FOLLOW_23_in_allSelector207)); if (this.state.failed) return retval; 
                if ( this.state.backtracking==0 ) stream_23.add(char_literal13);



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
                // 66:11: -> ^( AllSelector )
                {
                    // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:66:14: ^( AllSelector )
                    {
                    var root_1:CommonTree = CommonTree(adaptor.nil());
                    root_1 = CommonTree(adaptor.becomeRoot(CommonTree(adaptor.create(AllSelector, "AllSelector")), root_1));

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
                if ( this.state.backtracking>0 ) { memoize(input, 4, allSelector_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end allSelector

        // $ANTLR start idSelector
        // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:69:1: idSelector : '#' Identifier -> ^( IdSelector Identifier ) ;
        public final function idSelector():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var idSelector_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var char_literal14:Token=null;
            var Identifier15:Token=null;

            var char_literal14_tree:CommonTree=null;
            var Identifier15_tree:CommonTree=null;
            var stream_24:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 24");
            var stream_Identifier:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token Identifier");

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 5) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:70:2: ( '#' Identifier -> ^( IdSelector Identifier ) )
                // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:70:4: '#' Identifier
                {
                char_literal14=Token(matchStream(input,24,FOLLOW_24_in_idSelector228)); if (this.state.failed) return retval; 
                if ( this.state.backtracking==0 ) stream_24.add(char_literal14);

                Identifier15=Token(matchStream(input,Identifier,FOLLOW_Identifier_in_idSelector230)); if (this.state.failed) return retval; 
                if ( this.state.backtracking==0 ) stream_Identifier.add(Identifier15);



                // AST REWRITE
                // elements: Identifier
                // token labels: 
                // rule labels: retval
                // token list labels: 
                // rule list labels: 
                if ( this.state.backtracking==0 ) {
                retval.tree = root_0;
                var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                root_0 = CommonTree(adaptor.nil());
                // 70:21: -> ^( IdSelector Identifier )
                {
                    // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:70:24: ^( IdSelector Identifier )
                    {
                    var root_1:CommonTree = CommonTree(adaptor.nil());
                    root_1 = CommonTree(adaptor.becomeRoot(CommonTree(adaptor.create(IdSelector, "IdSelector")), root_1));

                    adaptor.addChild(root_1, stream_Identifier.nextNode());

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
                if ( this.state.backtracking>0 ) { memoize(input, 5, idSelector_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end idSelector

        // $ANTLR start kindSelector
        // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:73:1: kindSelector : Identifier -> ^( KindSelector Identifier ) ;
        public final function kindSelector():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var kindSelector_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var Identifier16:Token=null;

            var Identifier16_tree:CommonTree=null;
            var stream_Identifier:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token Identifier");

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 6) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:74:2: ( Identifier -> ^( KindSelector Identifier ) )
                // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:74:4: Identifier
                {
                Identifier16=Token(matchStream(input,Identifier,FOLLOW_Identifier_in_kindSelector252)); if (this.state.failed) return retval; 
                if ( this.state.backtracking==0 ) stream_Identifier.add(Identifier16);



                // AST REWRITE
                // elements: Identifier
                // token labels: 
                // rule labels: retval
                // token list labels: 
                // rule list labels: 
                if ( this.state.backtracking==0 ) {
                retval.tree = root_0;
                var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                root_0 = CommonTree(adaptor.nil());
                // 74:17: -> ^( KindSelector Identifier )
                {
                    // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:74:20: ^( KindSelector Identifier )
                    {
                    var root_1:CommonTree = CommonTree(adaptor.nil());
                    root_1 = CommonTree(adaptor.becomeRoot(CommonTree(adaptor.create(KindSelector, "KindSelector")), root_1));

                    adaptor.addChild(root_1, stream_Identifier.nextNode());

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
                if ( this.state.backtracking>0 ) { memoize(input, 6, kindSelector_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end kindSelector

        // $ANTLR start childSelector
        // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:77:1: childSelector : '>' -> ^( ChildSelector ) ;
        public final function childSelector():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var childSelector_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var char_literal17:Token=null;

            var char_literal17_tree:CommonTree=null;
            var stream_25:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 25");

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 7) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:78:2: ( '>' -> ^( ChildSelector ) )
                // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:78:4: '>'
                {
                char_literal17=Token(matchStream(input,25,FOLLOW_25_in_childSelector274)); if (this.state.failed) return retval; 
                if ( this.state.backtracking==0 ) stream_25.add(char_literal17);



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
                // 78:11: -> ^( ChildSelector )
                {
                    // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:78:14: ^( ChildSelector )
                    {
                    var root_1:CommonTree = CommonTree(adaptor.nil());
                    root_1 = CommonTree(adaptor.becomeRoot(CommonTree(adaptor.create(ChildSelector, "ChildSelector")), root_1));

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
                if ( this.state.backtracking>0 ) { memoize(input, 7, childSelector_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end childSelector

        // $ANTLR start classSelector
        // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:82:1: classSelector : '.' Identifier -> ^( ClassSelector Identifier ) ;
        public final function classSelector():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var classSelector_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var char_literal18:Token=null;
            var Identifier19:Token=null;

            var char_literal18_tree:CommonTree=null;
            var Identifier19_tree:CommonTree=null;
            var stream_Identifier:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token Identifier");
            var stream_26:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 26");

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 8) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:83:2: ( '.' Identifier -> ^( ClassSelector Identifier ) )
                // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:83:4: '.' Identifier
                {
                char_literal18=Token(matchStream(input,26,FOLLOW_26_in_classSelector297)); if (this.state.failed) return retval; 
                if ( this.state.backtracking==0 ) stream_26.add(char_literal18);

                Identifier19=Token(matchStream(input,Identifier,FOLLOW_Identifier_in_classSelector299)); if (this.state.failed) return retval; 
                if ( this.state.backtracking==0 ) stream_Identifier.add(Identifier19);



                // AST REWRITE
                // elements: Identifier
                // token labels: 
                // rule labels: retval
                // token list labels: 
                // rule list labels: 
                if ( this.state.backtracking==0 ) {
                retval.tree = root_0;
                var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                root_0 = CommonTree(adaptor.nil());
                // 83:21: -> ^( ClassSelector Identifier )
                {
                    // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:83:24: ^( ClassSelector Identifier )
                    {
                    var root_1:CommonTree = CommonTree(adaptor.nil());
                    root_1 = CommonTree(adaptor.becomeRoot(CommonTree(adaptor.create(ClassSelector, "ClassSelector")), root_1));

                    adaptor.addChild(root_1, stream_Identifier.nextNode());

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
                if ( this.state.backtracking>0 ) { memoize(input, 8, classSelector_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end classSelector

        // $ANTLR start firstSelector
        // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:86:1: firstSelector : ':first-child' -> ^( FirstSelector ) ;
        public final function firstSelector():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var firstSelector_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var string_literal20:Token=null;

            var string_literal20_tree:CommonTree=null;
            var stream_27:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 27");

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 9) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:87:2: ( ':first-child' -> ^( FirstSelector ) )
                // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:87:4: ':first-child'
                {
                string_literal20=Token(matchStream(input,27,FOLLOW_27_in_firstSelector321)); if (this.state.failed) return retval; 
                if ( this.state.backtracking==0 ) stream_27.add(string_literal20);



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
                // 87:21: -> ^( FirstSelector )
                {
                    // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:87:24: ^( FirstSelector )
                    {
                    var root_1:CommonTree = CommonTree(adaptor.nil());
                    root_1 = CommonTree(adaptor.becomeRoot(CommonTree(adaptor.create(FirstSelector, "FirstSelector")), root_1));

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
                if ( this.state.backtracking>0 ) { memoize(input, 9, firstSelector_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end firstSelector

        // $ANTLR start lastSelector
        // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:90:1: lastSelector : ':last-child' -> ^( LastSelector ) ;
        public final function lastSelector():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var lastSelector_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var string_literal21:Token=null;

            var string_literal21_tree:CommonTree=null;
            var stream_28:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 28");

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 10) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:91:2: ( ':last-child' -> ^( LastSelector ) )
                // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:91:4: ':last-child'
                {
                string_literal21=Token(matchStream(input,28,FOLLOW_28_in_lastSelector341)); if (this.state.failed) return retval; 
                if ( this.state.backtracking==0 ) stream_28.add(string_literal21);



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
                // 91:20: -> ^( LastSelector )
                {
                    // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:91:23: ^( LastSelector )
                    {
                    var root_1:CommonTree = CommonTree(adaptor.nil());
                    root_1 = CommonTree(adaptor.becomeRoot(CommonTree(adaptor.create(LastSelector, "LastSelector")), root_1));

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
                if ( this.state.backtracking>0 ) { memoize(input, 10, lastSelector_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end lastSelector

        // $ANTLR start attrSelector
        // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:94:1: attrSelector : '[' Identifier op exp ']' -> ^( AttrSelector Identifier op exp ) ;
        public final function attrSelector():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var attrSelector_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var char_literal22:Token=null;
            var Identifier23:Token=null;
            var char_literal26:Token=null;
            var op24:ParserRuleReturnScope = null;

            var exp25:ParserRuleReturnScope = null;


            var char_literal22_tree:CommonTree=null;
            var Identifier23_tree:CommonTree=null;
            var char_literal26_tree:CommonTree=null;
            var stream_30:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 30");
            var stream_Identifier:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token Identifier");
            var stream_29:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 29");
            var stream_exp:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule exp");
            var stream_op:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule op");
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 11) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:95:2: ( '[' Identifier op exp ']' -> ^( AttrSelector Identifier op exp ) )
                // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:95:4: '[' Identifier op exp ']'
                {
                char_literal22=Token(matchStream(input,29,FOLLOW_29_in_attrSelector361)); if (this.state.failed) return retval; 
                if ( this.state.backtracking==0 ) stream_29.add(char_literal22);

                Identifier23=Token(matchStream(input,Identifier,FOLLOW_Identifier_in_attrSelector363)); if (this.state.failed) return retval; 
                if ( this.state.backtracking==0 ) stream_Identifier.add(Identifier23);

                pushFollow(FOLLOW_op_in_attrSelector365);
                op24=op();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) stream_op.add(op24.tree);
                pushFollow(FOLLOW_exp_in_attrSelector367);
                exp25=exp();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) stream_exp.add(exp25.tree);
                char_literal26=Token(matchStream(input,30,FOLLOW_30_in_attrSelector369)); if (this.state.failed) return retval; 
                if ( this.state.backtracking==0 ) stream_30.add(char_literal26);



                // AST REWRITE
                // elements: Identifier, op, exp
                // token labels: 
                // rule labels: retval
                // token list labels: 
                // rule list labels: 
                if ( this.state.backtracking==0 ) {
                retval.tree = root_0;
                var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                root_0 = CommonTree(adaptor.nil());
                // 95:30: -> ^( AttrSelector Identifier op exp )
                {
                    // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:95:33: ^( AttrSelector Identifier op exp )
                    {
                    var root_1:CommonTree = CommonTree(adaptor.nil());
                    root_1 = CommonTree(adaptor.becomeRoot(CommonTree(adaptor.create(AttrSelector, "AttrSelector")), root_1));

                    adaptor.addChild(root_1, stream_Identifier.nextNode());
                    adaptor.addChild(root_1, stream_op.nextTree());
                    adaptor.addChild(root_1, stream_exp.nextTree());

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
                if ( this.state.backtracking>0 ) { memoize(input, 11, attrSelector_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end attrSelector

        // $ANTLR start op
        // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:98:1: op : ( '=' | '!=' | '<' | '<=' | '>' | '>=' );
        public final function op():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var op_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var set27:Token=null;

            var set27_tree:CommonTree=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 12) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:99:2: ( '=' | '!=' | '<' | '<=' | '>' | '>=' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:
                {
                root_0 = CommonTree(adaptor.nil());

                set27=Token(input.LT(1));
                if ( input.LA(1)==25||(input.LA(1)>=31 && input.LA(1)<=35) ) {
                    input.consume();
                    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, CommonTree(adaptor.create(set27)));
                    this.state.errorRecovery=false;this.state.failed=false;
                }
                else {
                    if (this.state.backtracking>0) {this.state.failed=true; return retval;}
                    throw new MismatchedSetException(null,input);
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
                if ( this.state.backtracking>0 ) { memoize(input, 12, op_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end op

        // $ANTLR start exp
        // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:102:1: exp : ( NumberLiteral | StringLiteral | Identifier );
        public final function exp():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var exp_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var set28:Token=null;

            var set28_tree:CommonTree=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 13) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:103:2: ( NumberLiteral | StringLiteral | Identifier )
                // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:
                {
                root_0 = CommonTree(adaptor.nil());

                set28=Token(input.LT(1));
                if ( (input.LA(1)>=13 && input.LA(1)<=15) ) {
                    input.consume();
                    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, CommonTree(adaptor.create(set28)));
                    this.state.errorRecovery=false;this.state.failed=false;
                }
                else {
                    if (this.state.backtracking>0) {this.state.failed=true; return retval;}
                    throw new MismatchedSetException(null,input);
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
                if ( this.state.backtracking>0 ) { memoize(input, 13, exp_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end exp

        // $ANTLR start synpred1_EQuery
        public final function synpred1_EQuery_fragment():void {
            // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:46:4: ( query EOF )
            // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:46:4: query EOF
            {
            pushFollow(FOLLOW_query_in_synpred1_EQuery116);
            query();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;
            matchStream(input,EOF,FOLLOW_EOF_in_synpred1_EQuery118); if (this.state.failed) return ;

            }
        }
        // $ANTLR end synpred1_EQuery


           // Delegated rules

        public final function synpred1_EQuery():Boolean {
            this.state.backtracking++;
            var start:int = input.mark();
            try {
                synpred1_EQuery_fragment(); // can never throw exception
            } catch (re:RecognitionException) {
                trace("impossible: "+re);
            }
            var success:Boolean = !this.state.failed;
            input.rewindTo(start);
            this.state.backtracking--;
            this.state.failed=false;
            return success;
        }


     

        public static const FOLLOW_query_in_main116:BitSet = new BitSet([0x00000000, 0x00000000]);
        public static const FOLLOW_EOF_in_main118:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_EOF_in_main124:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_selector_in_query136:BitSet = new BitSet([0x3F802002, 0x00000000]);
        public static const FOLLOW_allSelector_in_selector160:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_kindSelector_in_selector165:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_idSelector_in_selector170:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_childSelector_in_selector175:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_classSelector_in_selector180:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_firstSelector_in_selector185:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_lastSelector_in_selector190:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_attrSelector_in_selector195:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_23_in_allSelector207:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_24_in_idSelector228:BitSet = new BitSet([0x00002000, 0x00000000]);
        public static const FOLLOW_Identifier_in_idSelector230:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_Identifier_in_kindSelector252:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_25_in_childSelector274:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_26_in_classSelector297:BitSet = new BitSet([0x00002000, 0x00000000]);
        public static const FOLLOW_Identifier_in_classSelector299:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_27_in_firstSelector321:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_28_in_lastSelector341:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_29_in_attrSelector361:BitSet = new BitSet([0x00002000, 0x00000000]);
        public static const FOLLOW_Identifier_in_attrSelector363:BitSet = new BitSet([0x82000000, 0x0000000F]);
        public static const FOLLOW_op_in_attrSelector365:BitSet = new BitSet([0x0000E000, 0x00000000]);
        public static const FOLLOW_exp_in_attrSelector367:BitSet = new BitSet([0x40000000, 0x00000000]);
        public static const FOLLOW_30_in_attrSelector369:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_set_in_op0:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_set_in_exp0:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_query_in_synpred1_EQuery116:BitSet = new BitSet([0x00000000, 0x00000000]);
        public static const FOLLOW_EOF_in_synpred1_EQuery118:BitSet = new BitSet([0x00000002, 0x00000000]);

    }
}