!function(r){"use strict";var n,e,t,o,i,u,c=function(n){var e=n,t=function(){return e};return{get:t,set:function(n){e=n},clone:function(){return c(t())}}},a=tinymce.util.Tools.resolve("tinymce.PluginManager"),f=function(n){return{isEnabled:function(){return n.get()}}},d=function(n,e){return n.fire("VisualChars",{state:e})},s=function(){},l=function(n){return function(){return n}},m=l(!1),N=l(!0),g=function(){return E},E=(n=function(n){return n.isNone()},o={fold:function(n,e){return n()},is:m,isSome:m,isNone:N,getOr:t=function(n){return n},getOrThunk:e=function(n){return n()},getOrDie:function(n){throw new Error(n||"error: getOrDie called on none.")},getOrNull:l(null),getOrUndefined:l(undefined),or:t,orThunk:e,map:g,each:s,bind:g,exists:m,forall:N,filter:g,equals:n,equals_:n,toArray:function(){return[]},toString:l("none()")},Object.freeze&&Object.freeze(o),o),h=function(t){var n=l(t),e=function(){return o},r=function(n){return n(t)},o={fold:function(n,e){return e(t)},is:function(n){return t===n},isSome:N,isNone:m,getOr:n,getOrThunk:n,getOrDie:n,getOrNull:n,getOrUndefined:n,or:e,orThunk:e,map:function(n){return h(n(t))},each:function(n){n(t)},bind:r,exists:r,forall:r,filter:function(n){return n(t)?o:E},toArray:function(){return[t]},toString:function(){return"some("+t+")"},equals:function(n){return n.is(t)},equals_:function(n,e){return n.fold(m,function(n){return e(t,n)})}};return o},v=function(n){return null===n||n===undefined?E:h(n)},T=(i="function",function(n){return function(n){if(null===n)return"null";var e=typeof n;return"object"===e&&(Array.prototype.isPrototypeOf(n)||n.constructor&&"Array"===n.constructor.name)?"array":"object"===e&&(String.prototype.isPrototypeOf(n)||n.constructor&&"String"===n.constructor.name)?"string":e}(n)===i}),p=(Array.prototype.slice,function(n,e){for(var t=0,r=n.length;t<r;t++)e(n[t],t)}),O=(T(Array.from)&&Array.from,function(n){if(null===n||n===undefined)throw new Error("Node cannot be null or undefined");return{dom:l(n)}}),y={fromHtml:function(n,e){var t=(e||r.document).createElement("div");if(t.innerHTML=n,!t.hasChildNodes()||1<t.childNodes.length)throw r.console.error("HTML does not have a single root node",n),new Error("HTML must have a single root node");return O(t.childNodes[0])},fromTag:function(n,e){var t=(e||r.document).createElement(n);return O(t)},fromText:function(n,e){var t=(e||r.document).createTextNode(n);return O(t)},fromDom:O,fromPoint:function(n,e,t){var r=n.dom();return v(r.elementFromPoint(e,t)).map(O)}},D=(r.Node.ATTRIBUTE_NODE,r.Node.CDATA_SECTION_NODE,r.Node.COMMENT_NODE,r.Node.DOCUMENT_NODE,r.Node.DOCUMENT_TYPE_NODE,r.Node.DOCUMENT_FRAGMENT_NODE,r.Node.ELEMENT_NODE,r.Node.TEXT_NODE),_=(r.Node.PROCESSING_INSTRUCTION_NODE,r.Node.ENTITY_REFERENCE_NODE,r.Node.ENTITY_NODE,r.Node.NOTATION_NODE,"undefined"!=typeof r.window?r.window:Function("return this;")(),function(n){return n.dom().nodeValue}),C=(u=D,function(n){return n.dom().nodeType===u}),w={"\xa0":"nbsp","\xad":"shy"},M=function(n,e){var t,r="";for(t in n)r+=t;return new RegExp("["+r+"]",e?"g":"")},b=function(n){var e,t="";for(e in n)t&&(t+=","),t+="span.mce-"+n[e];return t},k={charMap:w,regExp:M(w),regExpGlobal:M(w,!0),selector:b(w),charMapToRegExp:M,charMapToSelector:b},S=function(n){return'<span data-mce-bogus="1" class="mce-'+k.charMap[n]+'">'+n+"</span>"},A=function(n,e){var t=[],r=function(n,e){for(var t=n.length,r=new Array(t),o=0;o<t;o++){var i=n[o];r[o]=e(i,o)}return r}(n.dom().childNodes,y.fromDom);return p(r,function(n){e(n)&&(t=t.concat([n])),t=t.concat(A(n,e))}),t},x={isMatch:function(n){var e=_(n);return C(n)&&e!==undefined&&k.regExp.test(e)},filterDescendants:A,findParentElm:function(n,e){for(;n.parentNode;){if(n.parentNode===e)return n;n=n.parentNode}},replaceWithSpans:function(n){return n.replace(k.regExpGlobal,S)}},P=function(t,n){var r,o,e=x.filterDescendants(y.fromDom(n),x.isMatch);p(e,function(n){var e=x.replaceWithSpans(t.dom.encode(_(n)));for(o=t.dom.create("div",null,e);r=o.lastChild;)t.dom.insertAfter(r,n.dom());t.dom.remove(n.dom())})},R=function(e,n){var t=e.dom.select(k.selector,n);p(t,function(n){e.dom.remove(n,1)})},I=P,B=R,U=function(n){var e=n.getBody(),t=n.selection.getBookmark(),r=x.findParentElm(n.selection.getNode(),e);r=r!==undefined?r:e,R(n,r),P(n,r),n.selection.moveToBookmark(t)},V=function(n,e){var t,r=n.getBody(),o=n.selection;e.set(!e.get()),d(n,e.get()),t=o.getBookmark(),!0===e.get()?I(n,r):B(n,r),o.moveToBookmark(t)},j=function(n,e){n.addCommand("mceVisualChars",function(){V(n,e)})},q=tinymce.util.Tools.resolve("tinymce.util.Delay"),F=function(e,t){var r=q.debounce(function(){U(e)},300);!1!==e.settings.forced_root_block&&e.on("keydown",function(n){!0===t.get()&&(13===n.keyCode?U(e):r())})},G=function(n){return n.getParam("visualchars_default_state",!1)},H=function(e,t){e.on("init",function(){var n=!G(e);t.set(n),V(e,t)})},L=function(t){return function(n){var e=n.control;t.on("VisualChars",function(n){e.active(n.state)})}};a.add("visualchars",function(n){var e,t=c(!1);return j(n,t),(e=n).addButton("visualchars",{active:!1,title:"Show invisible characters",cmd:"mceVisualChars",onPostRender:L(e)}),e.addMenuItem("visualchars",{text:"Show invisible characters",cmd:"mceVisualChars",onPostRender:L(e),selectable:!0,context:"view",prependToContext:!0}),F(n,t),H(n,t),f(t)})}(window);