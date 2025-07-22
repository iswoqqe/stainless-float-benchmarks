; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2785 () Bool)

(assert start!2785)

(declare-fun b!15236 () Bool)

(declare-fun res!11836 () Bool)

(declare-fun e!8665 () Bool)

(assert (=> b!15236 (=> (not res!11836) (not e!8665))))

(declare-fun z!100 () (_ FloatingPoint 11 53))

(declare-fun j!78 () (_ BitVec 32))

(declare-fun jz!49 () (_ BitVec 32))

(assert (=> b!15236 (= res!11836 (and (bvsle #b00000000000000000000000000000000 j!78) (bvsle j!78 jz!49) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) z!100) (fp.leq z!100 (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(declare-fun b!15238 () Bool)

(assert (=> b!15238 (= e!8665 (and (bvsgt j!78 #b00000000000000000000000000000000) (fp.isNaN (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) z!100)) #b00000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) z!100) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) z!100) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) z!100)))))))))))))

(declare-fun b!15235 () Bool)

(declare-fun res!11837 () Bool)

(assert (=> b!15235 (=> (not res!11837) (not e!8665))))

(declare-datatypes ((array!1247 0))(
  ( (array!1248 (arr!549 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!549 (_ BitVec 32))) )
))
(declare-fun q!79 () array!1247)

(declare-fun qInv!0 (array!1247) Bool)

(assert (=> b!15235 (= res!11837 (qInv!0 q!79))))

(declare-fun b!15237 () Bool)

(declare-fun res!11835 () Bool)

(assert (=> b!15237 (=> (not res!11835) (not e!8665))))

(declare-datatypes ((array!1249 0))(
  ( (array!1250 (arr!550 (Array (_ BitVec 32) (_ BitVec 32))) (size!550 (_ BitVec 32))) )
))
(declare-fun iq!146 () array!1249)

(declare-fun iqInv!0 (array!1249) Bool)

(assert (=> b!15237 (= res!11835 (iqInv!0 iq!146))))

(declare-fun res!11838 () Bool)

(assert (=> start!2785 (=> (not res!11838) (not e!8665))))

(assert (=> start!2785 (= res!11838 (and (bvsle #b00000000000000000000000000000010 jz!49) (bvslt jz!49 #b00000000000000000000000000010011)))))

(assert (=> start!2785 e!8665))

(assert (=> start!2785 true))

(declare-fun array_inv!497 (array!1249) Bool)

(assert (=> start!2785 (array_inv!497 iq!146)))

(declare-fun array_inv!498 (array!1247) Bool)

(assert (=> start!2785 (array_inv!498 q!79)))

(assert (= (and start!2785 res!11838) b!15235))

(assert (= (and b!15235 res!11837) b!15236))

(assert (= (and b!15236 res!11836) b!15237))

(assert (= (and b!15237 res!11835) b!15238))

(declare-fun m!21477 () Bool)

(assert (=> b!15235 m!21477))

(declare-fun m!21479 () Bool)

(assert (=> b!15237 m!21479))

(declare-fun m!21481 () Bool)

(assert (=> start!2785 m!21481))

(declare-fun m!21483 () Bool)

(assert (=> start!2785 m!21483))

(check-sat (not start!2785) (not b!15237) (not b!15235))
(check-sat)
