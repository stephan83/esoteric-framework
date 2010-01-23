// $ANTLR 3.2 Sep 23, 2009 12:02:23 C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g 2010-01-23 12:39:25
package com.esoteric.equery {
    import org.antlr.runtime.*;
        

    import org.antlr.runtime.tree.*;


    public class EQueryParser extends Parser {
        public static const tokenNames:Array = [
            "<invalid>", "<EOR>", "<DOWN>", "<UP>", "Query", "AllSelector", "IdSelector", "ChildSelector", "ClassSelector", "FirstSelector", "LastSelector", "AttrSelector", "Identifier", "NumberLiteral", "StringLiteral", "Digit", "Exponent", "HexDigit", "EscapeSequence", "WhiteSpace", "Letter", "UnicodeEscapeChar", "'*'", "'#'", "'>'", "'.'", "'.firstChild'", "'.lastChild'", "'['", "']'", "'='", "'!='", "'<'", "'<='", "'>='"
        ];
        public static const ClassSelector:int=8;
        public static const T__29:int=29;
        public static const T__28:int=28;
        public static const T__27:int=27;
        public static const Query:int=4;
        public static const T__26:int=26;
        public static const T__25:int=25;
        public static const UnicodeEscapeChar:int=21;
        public static const T__24:int=24;
        public static const NumberLiteral:int=13;
        public static const T__23:int=23;
        public static const IdSelector:int=6;
        public static const AttrSelector:int=11;
        public static const T__22:int=22;
        public static const ChildSelector:int=7;
        public static const Exponent:int=16;
        public static const Digit:int=15;
        public static const EOF:int=-1;
        public static const HexDigit:int=17;
        public static const Identifier:int=12;
        public static const StringLiteral:int=14;
        public static const T__30:int=30;
        public static const T__31:int=31;
        public static const FirstSelector:int=9;
        public static const T__32:int=32;
        public static const T__33:int=33;
        public static const LastSelector:int=10;
        public static const T__34:int=34;
        public static const AllSelector:int=5;
        public static const WhiteSpace:int=19;
        public static const Letter:int=20;
        public static const EscapeSequence:int=18;

        // delegates
        // delegators


            public function EQueryParser(input:TokenStream, state:RecognizerSharedState = null) {
                super(input, state);
                this.state.ruleMemo = new Array(27+1);
                 
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
        // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:44:1: main : ( query EOF | EOF );
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
                // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:45:2: ( query EOF | EOF )
                var alt1:int=2;
                var LA1_0:int = input.LA(1);

                if ( ((LA1_0>=22 && LA1_0<=28)) ) {
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
                        // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:45:4: query EOF
                        {
                        root_0 = CommonTree(adaptor.nil());

                        pushFollow(FOLLOW_query_in_main112);
                        query1=query();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) adaptor.addChild(root_0, query1.tree);
                        EOF2=Token(matchStream(input,EOF,FOLLOW_EOF_in_main114)); if (this.state.failed) return retval;

                        }
                        break;
                    case 2 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:46:4: EOF
                        {
                        root_0 = CommonTree(adaptor.nil());

                        EOF3=Token(matchStream(input,EOF,FOLLOW_EOF_in_main120)); if (this.state.failed) return retval;
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
        // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:49:1: query : ( selector )* -> ^( Query ( selector )* ) ;
        public final function query():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var query_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var selector4:ParserRuleReturnScope = null;


            var stream_selector:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule selector");
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 2) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:50:2: ( ( selector )* -> ^( Query ( selector )* ) )
                // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:50:4: ( selector )*
                {
                // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:50:4: ( selector )*
                loop2:
                do {
                    var alt2:int=2;
                    var LA2_0:int = input.LA(1);

                    if ( ((LA2_0>=22 && LA2_0<=28)) ) {
                        alt2=1;
                    }


                    switch (alt2) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:0:0: selector
                	    {
                	    pushFollow(FOLLOW_selector_in_query132);
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
                // 50:16: -> ^( Query ( selector )* )
                {
                    // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:50:19: ^( Query ( selector )* )
                    {
                    var root_1:CommonTree = CommonTree(adaptor.nil());
                    root_1 = CommonTree(adaptor.becomeRoot(CommonTree(adaptor.create(Query, "Query")), root_1));

                    // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:50:27: ( selector )*
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
        // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:53:1: selector : ( allSelector | idSelector | childSelector | classSelector | firstSelector | lastSelector | attrSelector );
        public final function selector():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var selector_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var allSelector5:ParserRuleReturnScope = null;

            var idSelector6:ParserRuleReturnScope = null;

            var childSelector7:ParserRuleReturnScope = null;

            var classSelector8:ParserRuleReturnScope = null;

            var firstSelector9:ParserRuleReturnScope = null;

            var lastSelector10:ParserRuleReturnScope = null;

            var attrSelector11:ParserRuleReturnScope = null;



            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 3) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:54:2: ( allSelector | idSelector | childSelector | classSelector | firstSelector | lastSelector | attrSelector )
                var alt3:int=7;
                switch ( input.LA(1) ) {
                case 22:
                    {
                    alt3=1;
                    }
                    break;
                case 23:
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
                default:
                    if (this.state.backtracking>0) {this.state.failed=true; return retval;}
                    throw new NoViableAltException("", 3, 0, input);

                }

                switch (alt3) {
                    case 1 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:54:4: allSelector
                        {
                        root_0 = CommonTree(adaptor.nil());

                        pushFollow(FOLLOW_allSelector_in_selector156);
                        allSelector5=allSelector();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) adaptor.addChild(root_0, allSelector5.tree);

                        }
                        break;
                    case 2 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:55:4: idSelector
                        {
                        root_0 = CommonTree(adaptor.nil());

                        pushFollow(FOLLOW_idSelector_in_selector161);
                        idSelector6=idSelector();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) adaptor.addChild(root_0, idSelector6.tree);

                        }
                        break;
                    case 3 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:56:4: childSelector
                        {
                        root_0 = CommonTree(adaptor.nil());

                        pushFollow(FOLLOW_childSelector_in_selector166);
                        childSelector7=childSelector();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) adaptor.addChild(root_0, childSelector7.tree);

                        }
                        break;
                    case 4 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:57:4: classSelector
                        {
                        root_0 = CommonTree(adaptor.nil());

                        pushFollow(FOLLOW_classSelector_in_selector171);
                        classSelector8=classSelector();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) adaptor.addChild(root_0, classSelector8.tree);

                        }
                        break;
                    case 5 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:58:4: firstSelector
                        {
                        root_0 = CommonTree(adaptor.nil());

                        pushFollow(FOLLOW_firstSelector_in_selector176);
                        firstSelector9=firstSelector();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) adaptor.addChild(root_0, firstSelector9.tree);

                        }
                        break;
                    case 6 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:59:4: lastSelector
                        {
                        root_0 = CommonTree(adaptor.nil());

                        pushFollow(FOLLOW_lastSelector_in_selector181);
                        lastSelector10=lastSelector();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) adaptor.addChild(root_0, lastSelector10.tree);

                        }
                        break;
                    case 7 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:60:4: attrSelector
                        {
                        root_0 = CommonTree(adaptor.nil());

                        pushFollow(FOLLOW_attrSelector_in_selector186);
                        attrSelector11=attrSelector();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) adaptor.addChild(root_0, attrSelector11.tree);

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
        // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:63:1: allSelector : '*' -> ^( AllSelector ) ;
        public final function allSelector():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var allSelector_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var char_literal12:Token=null;

            var char_literal12_tree:CommonTree=null;
            var stream_22:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 22");

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 4) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:64:2: ( '*' -> ^( AllSelector ) )
                // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:64:4: '*'
                {
                char_literal12=Token(matchStream(input,22,FOLLOW_22_in_allSelector198)); if (this.state.failed) return retval; 
                if ( this.state.backtracking==0 ) stream_22.add(char_literal12);



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
                // 64:11: -> ^( AllSelector )
                {
                    // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:64:14: ^( AllSelector )
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
        // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:67:1: idSelector : '#' Identifier -> ^( IdSelector Identifier ) ;
        public final function idSelector():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var idSelector_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var char_literal13:Token=null;
            var Identifier14:Token=null;

            var char_literal13_tree:CommonTree=null;
            var Identifier14_tree:CommonTree=null;
            var stream_23:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 23");
            var stream_Identifier:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token Identifier");

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 5) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:68:2: ( '#' Identifier -> ^( IdSelector Identifier ) )
                // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:68:4: '#' Identifier
                {
                char_literal13=Token(matchStream(input,23,FOLLOW_23_in_idSelector219)); if (this.state.failed) return retval; 
                if ( this.state.backtracking==0 ) stream_23.add(char_literal13);

                Identifier14=Token(matchStream(input,Identifier,FOLLOW_Identifier_in_idSelector221)); if (this.state.failed) return retval; 
                if ( this.state.backtracking==0 ) stream_Identifier.add(Identifier14);



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
                // 68:21: -> ^( IdSelector Identifier )
                {
                    // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:68:24: ^( IdSelector Identifier )
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

        // $ANTLR start childSelector
        // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:71:1: childSelector : '>' ;
        public final function childSelector():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var childSelector_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var char_literal15:Token=null;

            var char_literal15_tree:CommonTree=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 6) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:72:2: ( '>' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:72:4: '>'
                {
                root_0 = CommonTree(adaptor.nil());

                char_literal15=Token(matchStream(input,24,FOLLOW_24_in_childSelector243)); if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) {
                char_literal15_tree = CommonTree(adaptor.create(char_literal15));
                adaptor.addChild(root_0, char_literal15_tree);
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
                if ( this.state.backtracking>0 ) { memoize(input, 6, childSelector_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end childSelector

        // $ANTLR start classSelector
        // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:76:1: classSelector : '.' Identifier -> ^( ClassSelector Identifier ) ;
        public final function classSelector():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var classSelector_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var char_literal16:Token=null;
            var Identifier17:Token=null;

            var char_literal16_tree:CommonTree=null;
            var Identifier17_tree:CommonTree=null;
            var stream_25:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 25");
            var stream_Identifier:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token Identifier");

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 7) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:77:2: ( '.' Identifier -> ^( ClassSelector Identifier ) )
                // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:77:4: '.' Identifier
                {
                char_literal16=Token(matchStream(input,25,FOLLOW_25_in_classSelector257)); if (this.state.failed) return retval; 
                if ( this.state.backtracking==0 ) stream_25.add(char_literal16);

                Identifier17=Token(matchStream(input,Identifier,FOLLOW_Identifier_in_classSelector259)); if (this.state.failed) return retval; 
                if ( this.state.backtracking==0 ) stream_Identifier.add(Identifier17);



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
                // 77:21: -> ^( ClassSelector Identifier )
                {
                    // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:77:24: ^( ClassSelector Identifier )
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
                if ( this.state.backtracking>0 ) { memoize(input, 7, classSelector_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end classSelector

        // $ANTLR start firstSelector
        // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:80:1: firstSelector : '.firstChild' -> ^( FirstSelector ) ;
        public final function firstSelector():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var firstSelector_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var string_literal18:Token=null;

            var string_literal18_tree:CommonTree=null;
            var stream_26:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 26");

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 8) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:81:2: ( '.firstChild' -> ^( FirstSelector ) )
                // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:81:4: '.firstChild'
                {
                string_literal18=Token(matchStream(input,26,FOLLOW_26_in_firstSelector281)); if (this.state.failed) return retval; 
                if ( this.state.backtracking==0 ) stream_26.add(string_literal18);



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
                // 81:20: -> ^( FirstSelector )
                {
                    // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:81:23: ^( FirstSelector )
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
                if ( this.state.backtracking>0 ) { memoize(input, 8, firstSelector_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end firstSelector

        // $ANTLR start lastSelector
        // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:84:1: lastSelector : '.lastChild' -> ^( LastSelector ) ;
        public final function lastSelector():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var lastSelector_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var string_literal19:Token=null;

            var string_literal19_tree:CommonTree=null;
            var stream_27:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 27");

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 9) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:85:2: ( '.lastChild' -> ^( LastSelector ) )
                // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:85:4: '.lastChild'
                {
                string_literal19=Token(matchStream(input,27,FOLLOW_27_in_lastSelector301)); if (this.state.failed) return retval; 
                if ( this.state.backtracking==0 ) stream_27.add(string_literal19);



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
                // 85:19: -> ^( LastSelector )
                {
                    // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:85:22: ^( LastSelector )
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
                if ( this.state.backtracking>0 ) { memoize(input, 9, lastSelector_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end lastSelector

        // $ANTLR start attrSelector
        // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:88:1: attrSelector : '[' Identifier op exp ']' -> ^( AttrSelector Identifier op exp ) ;
        public final function attrSelector():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var attrSelector_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var char_literal20:Token=null;
            var Identifier21:Token=null;
            var char_literal24:Token=null;
            var op22:ParserRuleReturnScope = null;

            var exp23:ParserRuleReturnScope = null;


            var char_literal20_tree:CommonTree=null;
            var Identifier21_tree:CommonTree=null;
            var char_literal24_tree:CommonTree=null;
            var stream_Identifier:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token Identifier");
            var stream_28:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 28");
            var stream_29:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 29");
            var stream_exp:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule exp");
            var stream_op:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule op");
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 10) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:89:2: ( '[' Identifier op exp ']' -> ^( AttrSelector Identifier op exp ) )
                // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:89:4: '[' Identifier op exp ']'
                {
                char_literal20=Token(matchStream(input,28,FOLLOW_28_in_attrSelector321)); if (this.state.failed) return retval; 
                if ( this.state.backtracking==0 ) stream_28.add(char_literal20);

                Identifier21=Token(matchStream(input,Identifier,FOLLOW_Identifier_in_attrSelector323)); if (this.state.failed) return retval; 
                if ( this.state.backtracking==0 ) stream_Identifier.add(Identifier21);

                pushFollow(FOLLOW_op_in_attrSelector325);
                op22=op();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) stream_op.add(op22.tree);
                pushFollow(FOLLOW_exp_in_attrSelector327);
                exp23=exp();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) stream_exp.add(exp23.tree);
                char_literal24=Token(matchStream(input,29,FOLLOW_29_in_attrSelector329)); if (this.state.failed) return retval; 
                if ( this.state.backtracking==0 ) stream_29.add(char_literal24);



                // AST REWRITE
                // elements: op, Identifier, exp
                // token labels: 
                // rule labels: retval
                // token list labels: 
                // rule list labels: 
                if ( this.state.backtracking==0 ) {
                retval.tree = root_0;
                var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                root_0 = CommonTree(adaptor.nil());
                // 89:30: -> ^( AttrSelector Identifier op exp )
                {
                    // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:89:33: ^( AttrSelector Identifier op exp )
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
                if ( this.state.backtracking>0 ) { memoize(input, 10, attrSelector_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end attrSelector

        // $ANTLR start op
        // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:92:1: op : ( '=' | '!=' | '<' | '<=' | '>' | '>=' );
        public final function op():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var op_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var set25:Token=null;

            var set25_tree:CommonTree=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 11) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:93:2: ( '=' | '!=' | '<' | '<=' | '>' | '>=' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:
                {
                root_0 = CommonTree(adaptor.nil());

                set25=Token(input.LT(1));
                if ( input.LA(1)==24||(input.LA(1)>=30 && input.LA(1)<=34) ) {
                    input.consume();
                    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, CommonTree(adaptor.create(set25)));
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
                if ( this.state.backtracking>0 ) { memoize(input, 11, op_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end op

        // $ANTLR start exp
        // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:96:1: exp : ( NumberLiteral | StringLiteral | Identifier );
        public final function exp():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var exp_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var set26:Token=null;

            var set26_tree:CommonTree=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 12) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:97:2: ( NumberLiteral | StringLiteral | Identifier )
                // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:
                {
                root_0 = CommonTree(adaptor.nil());

                set26=Token(input.LT(1));
                if ( (input.LA(1)>=12 && input.LA(1)<=14) ) {
                    input.consume();
                    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, CommonTree(adaptor.create(set26)));
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
                if ( this.state.backtracking>0 ) { memoize(input, 12, exp_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end exp

        // $ANTLR start synpred1_EQuery
        public final function synpred1_EQuery_fragment():void {
            // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:45:4: ( query EOF )
            // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:45:4: query EOF
            {
            pushFollow(FOLLOW_query_in_synpred1_EQuery112);
            query();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;
            matchStream(input,EOF,FOLLOW_EOF_in_synpred1_EQuery114); if (this.state.failed) return ;

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


     

        public static const FOLLOW_query_in_main112:BitSet = new BitSet([0x00000000, 0x00000000]);
        public static const FOLLOW_EOF_in_main114:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_EOF_in_main120:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_selector_in_query132:BitSet = new BitSet([0x1FC00002, 0x00000000]);
        public static const FOLLOW_allSelector_in_selector156:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_idSelector_in_selector161:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_childSelector_in_selector166:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_classSelector_in_selector171:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_firstSelector_in_selector176:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_lastSelector_in_selector181:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_attrSelector_in_selector186:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_22_in_allSelector198:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_23_in_idSelector219:BitSet = new BitSet([0x00001000, 0x00000000]);
        public static const FOLLOW_Identifier_in_idSelector221:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_24_in_childSelector243:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_25_in_classSelector257:BitSet = new BitSet([0x00001000, 0x00000000]);
        public static const FOLLOW_Identifier_in_classSelector259:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_26_in_firstSelector281:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_27_in_lastSelector301:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_28_in_attrSelector321:BitSet = new BitSet([0x00001000, 0x00000000]);
        public static const FOLLOW_Identifier_in_attrSelector323:BitSet = new BitSet([0xC1000000, 0x00000007]);
        public static const FOLLOW_op_in_attrSelector325:BitSet = new BitSet([0x00007000, 0x00000000]);
        public static const FOLLOW_exp_in_attrSelector327:BitSet = new BitSet([0x20000000, 0x00000000]);
        public static const FOLLOW_29_in_attrSelector329:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_set_in_op0:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_set_in_exp0:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_query_in_synpred1_EQuery112:BitSet = new BitSet([0x00000000, 0x00000000]);
        public static const FOLLOW_EOF_in_synpred1_EQuery114:BitSet = new BitSet([0x00000002, 0x00000000]);

    }
}