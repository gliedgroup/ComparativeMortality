
global codes "A138 A139 A140 A141 A142 A143 A144 A145 A146 A147 A148 A149 A150 B47 B470 B471 B472 B473 B474 B479 B48 B480 B481 B482 B49 B50 B51 B52 B520 B521 B522 B523 B524 B529 B53 B54 B55 B56 B560 B561 B569"

gen ExternalD = 0
foreach c in $codes{
  replace ExternalD = 1 if cause == "`c'"
}

global code10 "V W X Y"
foreach c in $code10{
  replace ExternalD = 1 if strpos(cause, "`c'")
}
