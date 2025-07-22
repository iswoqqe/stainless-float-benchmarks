; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!679 () Bool)

(assert start!679)

(declare-fun res!1866 () Bool)

(declare-fun e!1029 () Bool)

(assert (=> start!679 (=> (not res!1866) (not e!1029))))

(declare-fun jz!42 () (_ BitVec 32))

(assert (=> start!679 (= res!1866 (and (bvsle #b00000000000000000000000000000010 jz!42) (bvslt jz!42 #b00000000000000000000000000010011)))))

(assert (=> start!679 e!1029))

(assert (=> start!679 true))

(declare-datatypes ((array!90 0))(
  ( (array!91 (arr!39 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!39 (_ BitVec 32))) )
))
(declare-fun q!70 () array!90)

(declare-fun array_inv!16 (array!90) Bool)

(assert (=> start!679 (array_inv!16 q!70)))

(declare-fun b!2157 () Bool)

(declare-fun res!1867 () Bool)

(assert (=> b!2157 (=> (not res!1867) (not e!1029))))

(declare-fun qInv!0 (array!90) Bool)

(assert (=> b!2157 (= res!1867 (qInv!0 q!70))))

(declare-fun b!2160 () Bool)

(declare-fun lt!1358 () (_ FloatingPoint 11 53))

(declare-datatypes ((Unit!125 0))(
  ( (Unit!126) )
))
(declare-datatypes ((array!92 0))(
  ( (array!93 (arr!40 (Array (_ BitVec 32) (_ BitVec 32))) (size!40 (_ BitVec 32))) )
))
(declare-datatypes ((tuple4!44 0))(
  ( (tuple4!45 (_1!66 Unit!125) (_2!66 array!92) (_3!54 (_ BitVec 32)) (_4!22 (_ FloatingPoint 11 53))) )
))
(declare-fun e!1031 () tuple4!44)

(declare-fun lt!1357 () array!92)

(declare-fun Unit!127 () Unit!125)

(assert (=> b!2160 (= e!1031 (tuple4!45 Unit!127 lt!1357 jz!42 lt!1358))))

(declare-fun b!2158 () Bool)

(declare-fun lt!1356 () (_ FloatingPoint 11 53))

(assert (=> b!2158 (= e!1029 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!1356) (fp.lt lt!1356 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (not (= (bvand jz!42 #b10000000000000000000000000000000) #b00000000000000000000000000000000)) (not (= (bvand jz!42 #b10000000000000000000000000000000) (bvand (bvsub jz!42 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(declare-fun lt!1355 () tuple4!44)

(assert (=> b!2158 (= lt!1356 (fp.sub roundNearestTiesToEven (_4!22 lt!1355) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!22 lt!1355) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!22 lt!1355) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!22 lt!1355) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!22 lt!1355) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!2158 (= lt!1355 e!1031)))

(declare-fun c!352 () Bool)

(assert (=> b!2158 (= c!352 (bvsgt jz!42 #b00000000000000000000000000000000))))

(assert (=> b!2158 (= lt!1358 (select (arr!39 q!70) jz!42))))

(assert (=> b!2158 (= lt!1357 (array!93 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!2159 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!90 array!92 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!44)

(assert (=> b!2159 (= e!1031 (computeModuloWhile!0 jz!42 q!70 lt!1357 jz!42 lt!1358))))

(assert (= (and start!679 res!1866) b!2157))

(assert (= (and b!2157 res!1867) b!2158))

(assert (= (and b!2158 c!352) b!2159))

(assert (= (and b!2158 (not c!352)) b!2160))

(declare-fun m!4291 () Bool)

(assert (=> start!679 m!4291))

(declare-fun m!4293 () Bool)

(assert (=> b!2157 m!4293))

(declare-fun m!4295 () Bool)

(assert (=> b!2158 m!4295))

(declare-fun m!4297 () Bool)

(assert (=> b!2159 m!4297))

(push 1)

(assert (not b!2159))

(assert (not b!2157))

(assert (not start!679))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

