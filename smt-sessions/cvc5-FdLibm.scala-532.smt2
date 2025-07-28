; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!3013 () Bool)

(assert start!3013)

(declare-fun b!16705 () Bool)

(declare-fun e!9106 () Bool)

(declare-fun e!9104 () Bool)

(assert (=> b!16705 (= e!9106 e!9104)))

(declare-fun res!13145 () Bool)

(assert (=> b!16705 (=> (not res!13145) (not e!9104))))

(declare-fun z!100 () (_ FloatingPoint 11 53))

(declare-fun lt!8346 () (_ FloatingPoint 11 53))

(declare-fun j!78 () (_ BitVec 32))

(declare-fun jz!49 () (_ BitVec 32))

(declare-datatypes ((array!1298 0))(
  ( (array!1299 (arr!565 (Array (_ BitVec 32) (_ BitVec 32))) (size!565 (_ BitVec 32))) )
))
(declare-fun iq!146 () array!1298)

(declare-fun QInt!0 ((_ BitVec 32)) Bool)

(assert (=> b!16705 (= res!13145 (QInt!0 (select (store (arr!565 iq!146) (bvsub jz!49 j!78) (ite (fp.isNaN (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8346))) #b00000000000000000000000000000000 (ite (fp.gt (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8346)) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8346)) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8346))))))) (bvsub jz!49 j!78))))))

(assert (=> b!16705 (= lt!8346 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) z!100)) #b00000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) z!100) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) z!100) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) z!100)))))))))

(declare-fun b!16706 () Bool)

(declare-fun res!13148 () Bool)

(assert (=> b!16706 (=> (not res!13148) (not e!9104))))

(declare-datatypes ((array!1300 0))(
  ( (array!1301 (arr!566 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!566 (_ BitVec 32))) )
))
(declare-fun q!79 () array!1300)

(declare-fun P!3 ((_ FloatingPoint 11 53)) Bool)

(assert (=> b!16706 (= res!13148 (P!3 (select (arr!566 q!79) (bvsub j!78 #b00000000000000000000000000000001))))))

(declare-fun b!16707 () Bool)

(assert (=> b!16707 (= e!9104 (and (not (= (bvand j!78 #b10000000000000000000000000000000) #b00000000000000000000000000000000)) (not (= (bvand j!78 #b10000000000000000000000000000000) (bvand (bvsub j!78 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(declare-fun b!16708 () Bool)

(declare-fun res!13146 () Bool)

(assert (=> b!16708 (=> (not res!13146) (not e!9106))))

(declare-fun iqInv!0 (array!1298) Bool)

(assert (=> b!16708 (= res!13146 (iqInv!0 iq!146))))

(declare-fun b!16709 () Bool)

(declare-fun res!13149 () Bool)

(assert (=> b!16709 (=> (not res!13149) (not e!9106))))

(declare-fun qInv!0 (array!1300) Bool)

(assert (=> b!16709 (= res!13149 (qInv!0 q!79))))

(declare-fun res!13152 () Bool)

(assert (=> start!3013 (=> (not res!13152) (not e!9106))))

(assert (=> start!3013 (= res!13152 (and (bvsle #b00000000000000000000000000000010 jz!49) (bvslt jz!49 #b00000000000000000000000000010011)))))

(assert (=> start!3013 e!9106))

(assert (=> start!3013 true))

(declare-fun array_inv!513 (array!1298) Bool)

(assert (=> start!3013 (array_inv!513 iq!146)))

(declare-fun array_inv!514 (array!1300) Bool)

(assert (=> start!3013 (array_inv!514 q!79)))

(declare-fun b!16710 () Bool)

(declare-fun res!13147 () Bool)

(assert (=> b!16710 (=> (not res!13147) (not e!9106))))

(assert (=> b!16710 (= res!13147 (and (bvsle #b00000000000000000000000000000000 j!78) (bvsle j!78 jz!49) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) z!100) (fp.leq z!100 (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(declare-fun b!16711 () Bool)

(declare-fun res!13151 () Bool)

(assert (=> b!16711 (=> (not res!13151) (not e!9104))))

(assert (=> b!16711 (= res!13151 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!8346) (fp.leq lt!8346 (fp #b0 #b10000011001 #b0100000000000000000000010000000000000000000000000000))))))

(declare-fun b!16712 () Bool)

(declare-fun res!13150 () Bool)

(assert (=> b!16712 (=> (not res!13150) (not e!9106))))

(assert (=> b!16712 (= res!13150 (bvsgt j!78 #b00000000000000000000000000000000))))

(assert (= (and start!3013 res!13152) b!16709))

(assert (= (and b!16709 res!13149) b!16710))

(assert (= (and b!16710 res!13147) b!16708))

(assert (= (and b!16708 res!13146) b!16712))

(assert (= (and b!16712 res!13150) b!16705))

(assert (= (and b!16705 res!13145) b!16711))

(assert (= (and b!16711 res!13151) b!16706))

(assert (= (and b!16706 res!13148) b!16707))

(declare-fun m!26743 () Bool)

(assert (=> b!16708 m!26743))

(declare-fun m!26745 () Bool)

(assert (=> b!16705 m!26745))

(declare-fun m!26747 () Bool)

(assert (=> b!16705 m!26747))

(assert (=> b!16705 m!26747))

(declare-fun m!26749 () Bool)

(assert (=> b!16705 m!26749))

(declare-fun m!26751 () Bool)

(assert (=> b!16706 m!26751))

(assert (=> b!16706 m!26751))

(declare-fun m!26753 () Bool)

(assert (=> b!16706 m!26753))

(declare-fun m!26755 () Bool)

(assert (=> b!16709 m!26755))

(declare-fun m!26757 () Bool)

(assert (=> start!3013 m!26757))

(declare-fun m!26759 () Bool)

(assert (=> start!3013 m!26759))

(push 1)

(assert (not b!16705))

(assert (not b!16709))

(assert (not start!3013))

(assert (not b!16708))

(assert (not b!16706))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

