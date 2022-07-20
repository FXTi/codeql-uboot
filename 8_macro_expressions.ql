import cpp

from MacroInvocation mi
where
	mi.getMacroName() in ["ntohl", "ntohll", "ntohs"]
select mi.getExpr()