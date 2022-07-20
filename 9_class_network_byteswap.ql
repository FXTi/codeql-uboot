import cpp

class NetworkByteSwap extends Expr {
  NetworkByteSwap () {
    // TODO: replace <class> and <var>
    exists(MacroInvocation mi |
      mi.getMacroName() in ["ntohl", "ntohll", "ntohs"] and
	  mi.getExpr() = this
    )
  }
}

from NetworkByteSwap n
select n, "Network byte swap"