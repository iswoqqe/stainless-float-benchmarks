; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!677 () Bool)

(assert start!677)

(declare-fun jz!42 () (_ BitVec 32))

(declare-fun lt!1326 () (_ FloatingPoint 11 53))

(declare-fun b!2004 () Bool)

(declare-datatypes ((Unit!119 0))(
  ( (Unit!120) )
))
(declare-datatypes ((array!90 0))(
  ( (array!91 (arr!39 (Array (_ BitVec 32) (_ BitVec 32))) (size!39 (_ BitVec 32))) )
))
(declare-datatypes ((tuple4!44 0))(
  ( (tuple4!45 (_1!66 Unit!119) (_2!66 array!90) (_3!54 (_ BitVec 32)) (_4!22 (_ FloatingPoint 11 53))) )
))
(declare-fun e!999 () tuple4!44)

(declare-fun lt!1328 () array!90)

(declare-fun Unit!121 () Unit!119)

(assert (=> b!2004 (= e!999 (tuple4!45 Unit!121 lt!1328 jz!42 lt!1326))))

(declare-fun b!2002 () Bool)

(declare-fun e!1001 () Bool)

(declare-fun lt!1327 () (_ FloatingPoint 11 53))

(assert (=> b!2002 (= e!1001 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!1327) (fp.lt lt!1327 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (not (= (bvand jz!42 #b10000000000000000000000000000000) #b00000000000000000000000000000000)) (not (= (bvand jz!42 #b10000000000000000000000000000000) (bvand (bvsub jz!42 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(declare-fun lt!1329 () tuple4!44)

(assert (=> b!2002 (= lt!1327 (fp.sub roundNearestTiesToEven (_4!22 lt!1329) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!22 lt!1329) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!22 lt!1329) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!22 lt!1329) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!22 lt!1329) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!2002 (= lt!1329 e!999)))

(declare-fun c!346 () Bool)

(assert (=> b!2002 (= c!346 (bvsgt jz!42 #b00000000000000000000000000000000))))

(declare-datatypes ((array!92 0))(
  ( (array!93 (arr!40 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!40 (_ BitVec 32))) )
))
(declare-fun q!70 () array!92)

(assert (=> b!2002 (= lt!1326 (select (arr!40 q!70) jz!42))))

(assert (=> b!2002 (= lt!1328 (array!91 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!2003 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!92 array!90 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!44)

(assert (=> b!2003 (= e!999 (computeModuloWhile!0 jz!42 q!70 lt!1328 jz!42 lt!1326))))

(declare-fun b!2001 () Bool)

(declare-fun res!1722 () Bool)

(assert (=> b!2001 (=> (not res!1722) (not e!1001))))

(declare-fun qInv!0 (array!92) Bool)

(assert (=> b!2001 (= res!1722 (qInv!0 q!70))))

(declare-fun res!1723 () Bool)

(assert (=> start!677 (=> (not res!1723) (not e!1001))))

(assert (=> start!677 (= res!1723 (and (bvsle #b00000000000000000000000000000010 jz!42) (bvslt jz!42 #b00000000000000000000000000010011)))))

(assert (=> start!677 e!1001))

(assert (=> start!677 true))

(declare-fun array_inv!16 (array!92) Bool)

(assert (=> start!677 (array_inv!16 q!70)))

(assert (= (and start!677 res!1723) b!2001))

(assert (= (and b!2001 res!1722) b!2002))

(assert (= (and b!2002 c!346) b!2003))

(assert (= (and b!2002 (not c!346)) b!2004))

(declare-fun m!3501 () Bool)

(assert (=> b!2002 m!3501))

(declare-fun m!3503 () Bool)

(assert (=> b!2003 m!3503))

(declare-fun m!3505 () Bool)

(assert (=> b!2001 m!3505))

(declare-fun m!3507 () Bool)

(assert (=> start!677 m!3507))

(check-sat (not b!2003) (not b!2001) (not start!677))
(check-sat)
