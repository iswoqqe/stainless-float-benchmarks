; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2917 () Bool)

(assert start!2917)

(declare-fun lt!8217 () (_ BitVec 32))

(declare-fun e!9011 () Bool)

(declare-fun lt!8218 () (_ FloatingPoint 11 53))

(declare-fun j!78 () (_ BitVec 32))

(declare-fun jz!49 () (_ BitVec 32))

(declare-fun b!16121 () Bool)

(declare-datatypes ((array!1330 0))(
  ( (array!1331 (arr!583 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!583 (_ BitVec 32))) )
))
(declare-fun q!79 () array!1330)

(assert (=> b!16121 (= e!9011 false)))

(assert (=> b!16121 (= lt!8217 (bvsub j!78 #b00000000000000000000000000000001))))

(declare-fun b!16122 () Bool)

(declare-fun res!12676 () Bool)

(declare-fun e!9012 () Bool)

(assert (=> b!16122 (=> (not res!12676) (not e!9012))))

(assert (=> b!16122 (= res!12676 (bvsgt j!78 #b00000000000000000000000000000000))))

(declare-fun b!16123 () Bool)

(declare-fun res!12674 () Bool)

(assert (=> b!16123 (=> (not res!12674) (not e!9011))))

(declare-fun P!3 ((_ FloatingPoint 11 53)) Bool)

(assert (=> b!16123 (= res!12674 (P!3 (select (arr!583 q!79) (bvsub j!78 #b00000000000000000000000000000001))))))

(declare-fun b!16124 () Bool)

(declare-fun res!12669 () Bool)

(assert (=> b!16124 (=> (not res!12669) (not e!9012))))

(declare-fun qInv!0 (array!1330) Bool)

(assert (=> b!16124 (= res!12669 (qInv!0 q!79))))

(declare-fun b!16125 () Bool)

(declare-fun res!12673 () Bool)

(assert (=> b!16125 (=> (not res!12673) (not e!9012))))

(declare-datatypes ((array!1332 0))(
  ( (array!1333 (arr!584 (Array (_ BitVec 32) (_ BitVec 32))) (size!584 (_ BitVec 32))) )
))
(declare-fun iq!146 () array!1332)

(declare-fun iqInv!0 (array!1332) Bool)

(assert (=> b!16125 (= res!12673 (iqInv!0 iq!146))))

(declare-fun b!16126 () Bool)

(declare-fun res!12671 () Bool)

(assert (=> b!16126 (=> (not res!12671) (not e!9011))))

(assert (=> b!16126 (= res!12671 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!8218) (fp.leq lt!8218 (fp #b0 #b10000011001 #b0100000000000000000000010000000000000000000000000000))))))

(declare-fun res!12670 () Bool)

(assert (=> start!2917 (=> (not res!12670) (not e!9012))))

(assert (=> start!2917 (= res!12670 (and (bvsle #b00000000000000000000000000000010 jz!49) (bvslt jz!49 #b00000000000000000000000000010011)))))

(assert (=> start!2917 e!9012))

(assert (=> start!2917 true))

(declare-fun array_inv!531 (array!1332) Bool)

(assert (=> start!2917 (array_inv!531 iq!146)))

(declare-fun array_inv!532 (array!1330) Bool)

(assert (=> start!2917 (array_inv!532 q!79)))

(declare-fun b!16127 () Bool)

(declare-fun res!12672 () Bool)

(assert (=> b!16127 (=> (not res!12672) (not e!9012))))

(declare-fun z!100 () (_ FloatingPoint 11 53))

(assert (=> b!16127 (= res!12672 (and (bvsle #b00000000000000000000000000000000 j!78) (bvsle j!78 jz!49) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) z!100) (fp.leq z!100 (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(declare-fun b!16128 () Bool)

(assert (=> b!16128 (= e!9012 e!9011)))

(declare-fun res!12675 () Bool)

(assert (=> b!16128 (=> (not res!12675) (not e!9011))))

(declare-fun QInt!0 ((_ BitVec 32)) Bool)

(assert (=> b!16128 (= res!12675 (QInt!0 (select (store (arr!584 iq!146) (bvsub jz!49 j!78) (ite (fp.isNaN (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8218))) #b00000000000000000000000000000000 (ite (fp.gt (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8218)) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8218)) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8218))))))) (bvsub jz!49 j!78))))))

(assert (=> b!16128 (= lt!8218 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) z!100)) #b00000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) z!100) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) z!100) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) z!100)))))))))

(assert (= (and start!2917 res!12670) b!16124))

(assert (= (and b!16124 res!12669) b!16127))

(assert (= (and b!16127 res!12672) b!16125))

(assert (= (and b!16125 res!12673) b!16122))

(assert (= (and b!16122 res!12676) b!16128))

(assert (= (and b!16128 res!12675) b!16126))

(assert (= (and b!16126 res!12671) b!16123))

(assert (= (and b!16123 res!12674) b!16121))

(declare-fun m!24105 () Bool)

(assert (=> b!16123 m!24105))

(assert (=> b!16123 m!24105))

(declare-fun m!24107 () Bool)

(assert (=> b!16123 m!24107))

(declare-fun m!24109 () Bool)

(assert (=> start!2917 m!24109))

(declare-fun m!24111 () Bool)

(assert (=> start!2917 m!24111))

(assert (=> b!16121 m!24105))

(declare-fun m!24113 () Bool)

(assert (=> b!16124 m!24113))

(declare-fun m!24115 () Bool)

(assert (=> b!16128 m!24115))

(declare-fun m!24117 () Bool)

(assert (=> b!16128 m!24117))

(assert (=> b!16128 m!24117))

(declare-fun m!24119 () Bool)

(assert (=> b!16128 m!24119))

(declare-fun m!24121 () Bool)

(assert (=> b!16125 m!24121))

(check-sat (not b!16124) (not b!16128) (not b!16123) (not start!2917) (not b!16125))
(check-sat)
