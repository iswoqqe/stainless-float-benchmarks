; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!3031 () Bool)

(assert start!3031)

(declare-fun b!16783 () Bool)

(declare-fun res!13226 () Bool)

(declare-fun e!9147 () Bool)

(assert (=> b!16783 (=> (not res!13226) (not e!9147))))

(declare-datatypes ((array!1312 0))(
  ( (array!1313 (arr!571 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!571 (_ BitVec 32))) )
))
(declare-fun q!79 () array!1312)

(declare-fun j!78 () (_ BitVec 32))

(declare-fun P!3 ((_ FloatingPoint 11 53)) Bool)

(assert (=> b!16783 (= res!13226 (P!3 (select (arr!571 q!79) (bvsub j!78 #b00000000000000000000000000000001))))))

(declare-fun b!16784 () Bool)

(declare-fun res!13223 () Bool)

(declare-fun e!9148 () Bool)

(assert (=> b!16784 (=> (not res!13223) (not e!9148))))

(assert (=> b!16784 (= res!13223 (bvsgt j!78 #b00000000000000000000000000000000))))

(declare-fun b!16785 () Bool)

(declare-fun lt!8361 () (_ BitVec 32))

(assert (=> b!16785 (= e!9147 (and (bvsgt lt!8361 #b00000000000000000000000000000000) (bvsge lt!8361 j!78)))))

(assert (=> b!16785 (= lt!8361 (bvsub j!78 #b00000000000000000000000000000001))))

(declare-fun b!16786 () Bool)

(assert (=> b!16786 (= e!9148 e!9147)))

(declare-fun res!13225 () Bool)

(assert (=> b!16786 (=> (not res!13225) (not e!9147))))

(declare-fun jz!49 () (_ BitVec 32))

(declare-datatypes ((array!1314 0))(
  ( (array!1315 (arr!572 (Array (_ BitVec 32) (_ BitVec 32))) (size!572 (_ BitVec 32))) )
))
(declare-fun iq!146 () array!1314)

(declare-fun lt!8360 () (_ FloatingPoint 11 53))

(declare-fun z!100 () (_ FloatingPoint 11 53))

(declare-fun QInt!0 ((_ BitVec 32)) Bool)

(assert (=> b!16786 (= res!13225 (QInt!0 (select (store (arr!572 iq!146) (bvsub jz!49 j!78) (ite (fp.isNaN (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8360))) #b00000000000000000000000000000000 (ite (fp.gt (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8360)) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8360)) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8360))))))) (bvsub jz!49 j!78))))))

(assert (=> b!16786 (= lt!8360 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) z!100)) #b00000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) z!100) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) z!100) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) z!100)))))))))

(declare-fun b!16787 () Bool)

(declare-fun res!13230 () Bool)

(assert (=> b!16787 (=> (not res!13230) (not e!9147))))

(assert (=> b!16787 (= res!13230 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!8360) (fp.leq lt!8360 (fp #b0 #b10000011001 #b0100000000000000000000010000000000000000000000000000))))))

(declare-fun b!16788 () Bool)

(declare-fun res!13229 () Bool)

(assert (=> b!16788 (=> (not res!13229) (not e!9148))))

(declare-fun iqInv!0 (array!1314) Bool)

(assert (=> b!16788 (= res!13229 (iqInv!0 iq!146))))

(declare-fun b!16789 () Bool)

(declare-fun res!13224 () Bool)

(assert (=> b!16789 (=> (not res!13224) (not e!9148))))

(declare-fun qInv!0 (array!1312) Bool)

(assert (=> b!16789 (= res!13224 (qInv!0 q!79))))

(declare-fun b!16790 () Bool)

(declare-fun res!13227 () Bool)

(assert (=> b!16790 (=> (not res!13227) (not e!9148))))

(assert (=> b!16790 (= res!13227 (and (bvsle #b00000000000000000000000000000000 j!78) (bvsle j!78 jz!49) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) z!100) (fp.leq z!100 (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(declare-fun res!13228 () Bool)

(assert (=> start!3031 (=> (not res!13228) (not e!9148))))

(assert (=> start!3031 (= res!13228 (and (bvsle #b00000000000000000000000000000010 jz!49) (bvslt jz!49 #b00000000000000000000000000010011)))))

(assert (=> start!3031 e!9148))

(assert (=> start!3031 true))

(declare-fun array_inv!519 (array!1314) Bool)

(assert (=> start!3031 (array_inv!519 iq!146)))

(declare-fun array_inv!520 (array!1312) Bool)

(assert (=> start!3031 (array_inv!520 q!79)))

(assert (= (and start!3031 res!13228) b!16789))

(assert (= (and b!16789 res!13224) b!16790))

(assert (= (and b!16790 res!13227) b!16788))

(assert (= (and b!16788 res!13229) b!16784))

(assert (= (and b!16784 res!13223) b!16786))

(assert (= (and b!16786 res!13225) b!16787))

(assert (= (and b!16787 res!13230) b!16783))

(assert (= (and b!16783 res!13226) b!16785))

(declare-fun m!26801 () Bool)

(assert (=> b!16788 m!26801))

(declare-fun m!26803 () Bool)

(assert (=> b!16789 m!26803))

(declare-fun m!26805 () Bool)

(assert (=> b!16783 m!26805))

(assert (=> b!16783 m!26805))

(declare-fun m!26807 () Bool)

(assert (=> b!16783 m!26807))

(declare-fun m!26809 () Bool)

(assert (=> start!3031 m!26809))

(declare-fun m!26811 () Bool)

(assert (=> start!3031 m!26811))

(declare-fun m!26813 () Bool)

(assert (=> b!16786 m!26813))

(declare-fun m!26815 () Bool)

(assert (=> b!16786 m!26815))

(assert (=> b!16786 m!26815))

(declare-fun m!26817 () Bool)

(assert (=> b!16786 m!26817))

(push 1)

(assert (not start!3031))

(assert (not b!16788))

(assert (not b!16786))

(assert (not b!16783))

(assert (not b!16789))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

