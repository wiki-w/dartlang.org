import "dart:html" as h;class t{static const  u="Chrome";static const  v="Firefox";static const  AB="Internet Explorer";static const  BB="Safari";final  q;final  minimumVersion;const t(this.q,[this.minimumVersion]);}class CB{const CB();}class DB{final  name;const DB(this.name);}class EB{const EB();}class FB{const FB();}class GB{var IB;var JB;var KB;var LB;GB(){LB=h.document.query('#list');IB=h.document.query('#read');JB=h.document.query('#files');JB.onChange.listen((g)=>MB());KB=h.document.query('#drop-zone');KB.onDragOver.listen(NB);KB.onDragEnter.listen((g)=>KB.classes.add('hover'));KB.onDragLeave.listen((g)=>KB.classes.remove('hover'));KB.onDrop.listen(OB);} NB( g){g.stopPropagation();g.preventDefault();g.dataTransfer.dropEffect='copy';} OB( g){g.stopPropagation();g.preventDefault();KB.classes.remove('hover');IB.reset();PB(g.dataTransfer.files);} MB(){PB(JB.files);} PB( s){LB.nodes.clear();var m=new h.Element.tag('ul');for(var g in s){var j=new h.Element.tag('li');if(g.type.startsWith('image')){var n=new h.Element.tag('span');var k=new h.FileReader();k.onLoad.listen((HB){var l=new h.ImageElement(src:k.result);l.classes.add('thumb');l.title=i(g.name);n.nodes.add(l);});k.readAsDataUrl(g);j.nodes.add(n);}var o=new h.Element.tag('span');o.innerHtml=(new StringBuffer('<strong>')..write(i(g.name))..write('</strong> (')..write(g.type!=null?i(g.type):'n/a')..write(') ')..write(g.size)..write(' bytes')).toString();j.nodes.add(o);m.nodes.add(j);}LB.nodes.add(m);}} main(){new GB();} i( g){return g.replaceAll("&","&amp;").replaceAll("<","&lt;").replaceAll(">","&gt;").replaceAll('"',"&quot;").replaceAll("'","&apos;");}