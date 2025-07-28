; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!669 () Bool)

(assert start!669)

(declare-fun b!1970 () Bool)

(declare-fun jz!42 () (_ BitVec 32))

(declare-datatypes ((array!85 0))(
  ( (array!86 (arr!37 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!37 (_ BitVec 32))) )
))
(declare-fun q!70 () array!85)

(declare-fun lt!1300 () (_ FloatingPoint 11 53))

(declare-datatypes ((array!87 0))(
  ( (array!88 (arr!38 (Array (_ BitVec 32) (_ BitVec 32))) (size!38 (_ BitVec 32))) )
))
(declare-fun lt!1302 () array!87)

(declare-datatypes ((Unit!115 0))(
  ( (Unit!116) )
))
(declare-datatypes ((tuple4!42 0))(
  ( (tuple4!43 (_1!65 Unit!115) (_2!65 array!87) (_3!53 (_ BitVec 32)) (_4!21 (_ FloatingPoint 11 53))) )
))
(declare-fun e!980 () tuple4!42)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!85 array!87 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!42)

(assert (=> b!1970 (= e!980 (computeModuloWhile!0 jz!42 q!70 lt!1302 jz!42 lt!1300))))

(declare-fun b!1968 () Bool)

(declare-fun res!1702 () Bool)

(declare-fun e!979 () Bool)

(assert (=> b!1968 (=> (not res!1702) (not e!979))))

(declare-fun qInv!0 (array!85) Bool)

(assert (=> b!1968 (= res!1702 (qInv!0 q!70))))

(declare-fun res!1701 () Bool)

(assert (=> start!669 (=> (not res!1701) (not e!979))))

(assert (=> start!669 (= res!1701 (and (bvsle #b00000000000000000000000000000010 jz!42) (bvslt jz!42 #b00000000000000000000000000010011)))))

(assert (=> start!669 e!979))

(assert (=> start!669 true))

(declare-fun array_inv!15 (array!85) Bool)

(assert (=> start!669 (array_inv!15 q!70)))

(declare-fun b!1969 () Bool)

(declare-fun lt!1301 () (_ FloatingPoint 11 53))

(assert (=> b!1969 (= e!979 (and (not (fp.isNaN lt!1301)) (fp.gt lt!1301 ((_ to_fp 11 53) roundTowardNegative #b10111111111111111111111111111111111111111111111111111111111111111)) (not (fp.lt lt!1301 ((_ to_fp 11 53) roundTowardPositive #b01000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> b!1969 (= lt!1301 (fp.mul roundNearestTiesToEven (_4!21 e!980) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)))))

(declare-fun c!340 () Bool)

(assert (=> b!1969 (= c!340 (bvsgt jz!42 #b00000000000000000000000000000000))))

(assert (=> b!1969 (= lt!1300 (select (arr!37 q!70) jz!42))))

(assert (=> b!1969 (= lt!1302 (array!88 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!1971 () Bool)

(declare-fun Unit!117 () Unit!115)

(assert (=> b!1971 (= e!980 (tuple4!43 Unit!117 lt!1302 jz!42 lt!1300))))

(assert (= (and start!669 res!1701) b!1968))

(assert (= (and b!1968 res!1702) b!1969))

(assert (= (and b!1969 c!340) b!1970))

(assert (= (and b!1969 (not c!340)) b!1971))

(declare-fun m!3481 () Bool)

(assert (=> b!1970 m!3481))

(declare-fun m!3483 () Bool)

(assert (=> b!1968 m!3483))

(declare-fun m!3485 () Bool)

(assert (=> start!669 m!3485))

(declare-fun m!3487 () Bool)

(assert (=> b!1969 m!3487))

(check-sat (not b!1970) (not start!669) (not b!1968))
(check-sat)
(get-model)

(declare-fun lt!1317 () (_ BitVec 32))

(declare-fun lt!1315 () array!87)

(declare-fun e!987 () tuple4!42)

(declare-fun lt!1316 () (_ FloatingPoint 11 53))

(declare-fun b!1984 () Bool)

(assert (=> b!1984 (= e!987 (computeModuloWhile!0 jz!42 q!70 lt!1315 lt!1317 lt!1316))))

(declare-fun b!1985 () Bool)

(declare-fun res!1713 () Bool)

(declare-fun e!989 () Bool)

(assert (=> b!1985 (=> (not res!1713) (not e!989))))

(declare-fun iqInv!0 (array!87) Bool)

(assert (=> b!1985 (= res!1713 (iqInv!0 lt!1302))))

(declare-fun d!1519 () Bool)

(declare-fun e!988 () Bool)

(assert (=> d!1519 e!988))

(declare-fun res!1711 () Bool)

(assert (=> d!1519 (=> (not res!1711) (not e!988))))

(declare-fun lt!1313 () tuple4!42)

(assert (=> d!1519 (= res!1711 (and true true (bvsle #b00000000000000000000000000000000 (_3!53 lt!1313)) (bvsle (_3!53 lt!1313) jz!42) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (_4!21 lt!1313)) (fp.leq (_4!21 lt!1313) (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(assert (=> d!1519 (= lt!1313 e!987)))

(declare-fun c!343 () Bool)

(assert (=> d!1519 (= c!343 (bvsgt lt!1317 #b00000000000000000000000000000000))))

(assert (=> d!1519 (= lt!1317 (bvsub jz!42 #b00000000000000000000000000000001))))

(declare-fun lt!1314 () (_ FloatingPoint 11 53))

(assert (=> d!1519 (= lt!1316 (fp.add roundNearestTiesToEven (select (arr!37 q!70) (bvsub jz!42 #b00000000000000000000000000000001)) lt!1314))))

(assert (=> d!1519 (= lt!1315 (array!88 (store (arr!38 lt!1302) (bvsub jz!42 jz!42) (ite (fp.isNaN (fp.sub roundNearestTiesToEven lt!1300 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!1314))) #b00000000000000000000000000000000 (ite (fp.gt (fp.sub roundNearestTiesToEven lt!1300 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!1314)) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.sub roundNearestTiesToEven lt!1300 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!1314)) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.sub roundNearestTiesToEven lt!1300 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!1314))))))) (size!38 lt!1302)))))

(assert (=> d!1519 (= lt!1314 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!1300)) #b00000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!1300) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!1300) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!1300)))))))))

(assert (=> d!1519 e!989))

(declare-fun res!1714 () Bool)

(assert (=> d!1519 (=> (not res!1714) (not e!989))))

(assert (=> d!1519 (= res!1714 (and (bvsle #b00000000000000000000000000000000 jz!42) (bvsle jz!42 jz!42) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!1300) (fp.leq lt!1300 (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(assert (=> d!1519 (= (computeModuloWhile!0 jz!42 q!70 lt!1302 jz!42 lt!1300) lt!1313)))

(declare-fun b!1986 () Bool)

(declare-fun res!1712 () Bool)

(assert (=> b!1986 (=> (not res!1712) (not e!988))))

(assert (=> b!1986 (= res!1712 (iqInv!0 (_2!65 lt!1313)))))

(declare-fun b!1987 () Bool)

(declare-fun Unit!118 () Unit!115)

(assert (=> b!1987 (= e!987 (tuple4!43 Unit!118 lt!1315 lt!1317 lt!1316))))

(declare-fun b!1988 () Bool)

(assert (=> b!1988 (= e!988 (bvsle (_3!53 lt!1313) #b00000000000000000000000000000000))))

(declare-fun b!1989 () Bool)

(assert (=> b!1989 (= e!989 (bvsgt jz!42 #b00000000000000000000000000000000))))

(assert (= (and d!1519 res!1714) b!1985))

(assert (= (and b!1985 res!1713) b!1989))

(assert (= (and d!1519 c!343) b!1984))

(assert (= (and d!1519 (not c!343)) b!1987))

(assert (= (and d!1519 res!1711) b!1986))

(assert (= (and b!1986 res!1712) b!1988))

(declare-fun m!3489 () Bool)

(assert (=> b!1984 m!3489))

(declare-fun m!3491 () Bool)

(assert (=> b!1985 m!3491))

(declare-fun m!3493 () Bool)

(assert (=> d!1519 m!3493))

(declare-fun m!3495 () Bool)

(assert (=> d!1519 m!3495))

(declare-fun m!3497 () Bool)

(assert (=> b!1986 m!3497))

(assert (=> b!1970 d!1519))

(declare-fun d!1521 () Bool)

(assert (=> d!1521 (= (array_inv!15 q!70) (bvsge (size!37 q!70) #b00000000000000000000000000000000))))

(assert (=> start!669 d!1521))

(declare-fun d!1523 () Bool)

(declare-fun res!1717 () Bool)

(declare-fun e!992 () Bool)

(assert (=> d!1523 (=> (not res!1717) (not e!992))))

(assert (=> d!1523 (= res!1717 (= (size!37 q!70) #b00000000000000000000000000010100))))

(assert (=> d!1523 (= (qInv!0 q!70) e!992)))

(declare-fun b!1992 () Bool)

(declare-fun lambda!79 () Int)

(declare-fun all20!0 (array!85 Int) Bool)

(assert (=> b!1992 (= e!992 (all20!0 q!70 lambda!79))))

(assert (= (and d!1523 res!1717) b!1992))

(declare-fun m!3499 () Bool)

(assert (=> b!1992 m!3499))

(assert (=> b!1968 d!1523))

(check-sat (not b!1992) (not b!1984) (not b!1986) (not b!1985))
(check-sat)
