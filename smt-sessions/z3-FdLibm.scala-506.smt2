; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2709 () Bool)

(assert start!2709)

(declare-datatypes ((Unit!1597 0))(
  ( (Unit!1598) )
))
(declare-datatypes ((array!1172 0))(
  ( (array!1173 (arr!515 (Array (_ BitVec 32) (_ BitVec 32))) (size!515 (_ BitVec 32))) )
))
(declare-datatypes ((tuple4!408 0))(
  ( (tuple4!409 (_1!398 Unit!1597) (_2!398 array!1172) (_3!335 (_ BitVec 32)) (_4!204 (_ FloatingPoint 11 53))) )
))
(declare-fun e!8437 () tuple4!408)

(declare-datatypes ((array!1174 0))(
  ( (array!1175 (arr!516 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!516 (_ BitVec 32))) )
))
(declare-fun q!31 () array!1174)

(declare-fun lt!7962 () array!1172)

(declare-fun b!14855 () Bool)

(declare-fun lt!7960 () (_ FloatingPoint 11 53))

(declare-fun jz!20 () (_ BitVec 32))

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!1174 array!1172 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!408)

(assert (=> b!14855 (= e!8437 (computeModuloWhile!0 jz!20 q!31 lt!7962 jz!20 lt!7960))))

(declare-fun b!14856 () Bool)

(declare-fun res!11464 () Bool)

(declare-fun e!8440 () Bool)

(assert (=> b!14856 (=> (not res!11464) (not e!8440))))

(declare-fun iq!76 () array!1172)

(declare-fun i!142 () (_ BitVec 32))

(declare-fun QInt!0 ((_ BitVec 32)) Bool)

(assert (=> b!14856 (= res!11464 (QInt!0 (select (arr!515 iq!76) i!142)))))

(declare-fun res!11466 () Bool)

(declare-fun e!8436 () Bool)

(assert (=> start!2709 (=> (not res!11466) (not e!8436))))

(assert (=> start!2709 (= res!11466 (and (bvsle #b00000000000000000000000000000010 jz!20) (bvslt jz!20 #b00000000000000000000000000010011)))))

(assert (=> start!2709 e!8436))

(assert (=> start!2709 true))

(declare-fun array_inv!463 (array!1174) Bool)

(assert (=> start!2709 (array_inv!463 q!31)))

(declare-fun array_inv!464 (array!1172) Bool)

(assert (=> start!2709 (array_inv!464 iq!76)))

(declare-fun b!14857 () Bool)

(declare-fun res!11465 () Bool)

(assert (=> b!14857 (=> (not res!11465) (not e!8440))))

(declare-fun carry!33 () (_ BitVec 32))

(assert (=> b!14857 (= res!11465 (and (bvsge (select (arr!515 iq!76) (bvsub jz!20 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (= carry!33 #b00000000000000000000000000000000) (= carry!33 #b00000000000000000000000000000001)) (bvslt i!142 (bvsub jz!20 #b00000000000000000000000000000001))))))

(declare-fun b!14858 () Bool)

(assert (=> b!14858 (= e!8436 e!8440)))

(declare-fun res!11467 () Bool)

(assert (=> b!14858 (=> (not res!11467) (not e!8440))))

(declare-fun lt!7959 () (_ FloatingPoint 11 53))

(declare-fun lt!7958 () tuple4!408)

(assert (=> b!14858 (= res!11467 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!7959) (fp.lt lt!7959 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!515 (_2!398 lt!7958)) (bvsub jz!20 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (bvsle #b00000000000000000000000000000000 i!142) (bvsle i!142 (bvsub jz!20 #b00000000000000000000000000000001))))))

(assert (=> b!14858 (= lt!7959 (fp.sub roundNearestTiesToEven (_4!204 lt!7958) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!204 lt!7958) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!204 lt!7958) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!204 lt!7958) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!204 lt!7958) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!14858 (= lt!7958 e!8437)))

(declare-fun c!1907 () Bool)

(assert (=> b!14858 (= c!1907 (bvsgt jz!20 #b00000000000000000000000000000000))))

(assert (=> b!14858 (= lt!7960 (select (arr!516 q!31) jz!20))))

(assert (=> b!14858 (= lt!7962 (array!1173 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!14859 () Bool)

(declare-fun res!11463 () Bool)

(assert (=> b!14859 (=> (not res!11463) (not e!8440))))

(declare-fun iqInv!0 (array!1172) Bool)

(assert (=> b!14859 (= res!11463 (iqInv!0 iq!76))))

(declare-fun b!14860 () Bool)

(declare-fun Unit!1599 () Unit!1597)

(assert (=> b!14860 (= e!8437 (tuple4!409 Unit!1599 lt!7962 jz!20 lt!7960))))

(declare-fun b!14861 () Bool)

(declare-fun lt!7961 () (_ BitVec 32))

(assert (=> b!14861 (= e!8440 (and (bvsge lt!7961 (bvsub jz!20 #b00000000000000000000000000000001)) (bvsle #b00000000000000000000000000000000 lt!7961) (not (= (bvand jz!20 #b10000000000000000000000000000000) #b00000000000000000000000000000000)) (not (= (bvand jz!20 #b10000000000000000000000000000000) (bvand (bvsub jz!20 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(assert (=> b!14861 (= lt!7961 (bvadd i!142 #b00000000000000000000000000000001))))

(declare-fun b!14862 () Bool)

(declare-fun res!11468 () Bool)

(assert (=> b!14862 (=> (not res!11468) (not e!8436))))

(declare-fun qInv!0 (array!1174) Bool)

(assert (=> b!14862 (= res!11468 (qInv!0 q!31))))

(assert (= (and start!2709 res!11466) b!14862))

(assert (= (and b!14862 res!11468) b!14858))

(assert (= (and b!14858 c!1907) b!14855))

(assert (= (and b!14858 (not c!1907)) b!14860))

(assert (= (and b!14858 res!11467) b!14859))

(assert (= (and b!14859 res!11463) b!14857))

(assert (= (and b!14857 res!11465) b!14856))

(assert (= (and b!14856 res!11464) b!14861))

(declare-fun m!22265 () Bool)

(assert (=> b!14858 m!22265))

(declare-fun m!22267 () Bool)

(assert (=> b!14858 m!22267))

(declare-fun m!22269 () Bool)

(assert (=> b!14855 m!22269))

(declare-fun m!22271 () Bool)

(assert (=> b!14856 m!22271))

(assert (=> b!14856 m!22271))

(declare-fun m!22273 () Bool)

(assert (=> b!14856 m!22273))

(declare-fun m!22275 () Bool)

(assert (=> b!14862 m!22275))

(declare-fun m!22277 () Bool)

(assert (=> start!2709 m!22277))

(declare-fun m!22279 () Bool)

(assert (=> start!2709 m!22279))

(declare-fun m!22281 () Bool)

(assert (=> b!14859 m!22281))

(declare-fun m!22283 () Bool)

(assert (=> b!14857 m!22283))

(check-sat (not b!14862) (not start!2709) (not b!14855) (not b!14859) (not b!14856))
(check-sat)
