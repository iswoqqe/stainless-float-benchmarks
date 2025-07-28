; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2859 () Bool)

(assert start!2859)

(declare-fun b!15835 () Bool)

(declare-fun res!12396 () Bool)

(declare-fun e!8851 () Bool)

(assert (=> b!15835 (=> (not res!12396) (not e!8851))))

(declare-datatypes ((array!1288 0))(
  ( (array!1289 (arr!565 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!565 (_ BitVec 32))) )
))
(declare-fun q!79 () array!1288)

(declare-fun qInv!0 (array!1288) Bool)

(assert (=> b!15835 (= res!12396 (qInv!0 q!79))))

(declare-fun b!15836 () Bool)

(declare-fun res!12395 () Bool)

(declare-fun e!8852 () Bool)

(assert (=> b!15836 (=> (not res!12395) (not e!8852))))

(declare-fun j!78 () (_ BitVec 32))

(declare-fun P!3 ((_ FloatingPoint 11 53)) Bool)

(assert (=> b!15836 (= res!12395 (P!3 (select (arr!565 q!79) (bvsub j!78 #b00000000000000000000000000000001))))))

(declare-fun b!15837 () Bool)

(assert (=> b!15837 (= e!8851 e!8852)))

(declare-fun res!12398 () Bool)

(assert (=> b!15837 (=> (not res!12398) (not e!8852))))

(declare-fun z!100 () (_ FloatingPoint 11 53))

(declare-fun jz!49 () (_ BitVec 32))

(declare-datatypes ((array!1290 0))(
  ( (array!1291 (arr!566 (Array (_ BitVec 32) (_ BitVec 32))) (size!566 (_ BitVec 32))) )
))
(declare-fun iq!146 () array!1290)

(declare-fun lt!8128 () (_ FloatingPoint 11 53))

(declare-fun QInt!0 ((_ BitVec 32)) Bool)

(assert (=> b!15837 (= res!12398 (QInt!0 (select (store (arr!566 iq!146) (bvsub jz!49 j!78) (ite (fp.isNaN (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8128))) #b00000000000000000000000000000000 (ite (fp.gt (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8128)) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8128)) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8128))))))) (bvsub jz!49 j!78))))))

(assert (=> b!15837 (= lt!8128 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) z!100)) #b00000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) z!100) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) z!100) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) z!100)))))))))

(declare-fun b!15838 () Bool)

(declare-fun res!12402 () Bool)

(assert (=> b!15838 (=> (not res!12402) (not e!8851))))

(assert (=> b!15838 (= res!12402 (bvsgt j!78 #b00000000000000000000000000000000))))

(declare-fun b!15839 () Bool)

(declare-fun res!12399 () Bool)

(assert (=> b!15839 (=> (not res!12399) (not e!8851))))

(declare-fun iqInv!0 (array!1290) Bool)

(assert (=> b!15839 (= res!12399 (iqInv!0 iq!146))))

(declare-fun b!15840 () Bool)

(assert (=> b!15840 (= e!8852 (and (not (= (bvand j!78 #b10000000000000000000000000000000) #b00000000000000000000000000000000)) (not (= (bvand j!78 #b10000000000000000000000000000000) (bvand (bvsub j!78 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(declare-fun res!12397 () Bool)

(assert (=> start!2859 (=> (not res!12397) (not e!8851))))

(assert (=> start!2859 (= res!12397 (and (bvsle #b00000000000000000000000000000010 jz!49) (bvslt jz!49 #b00000000000000000000000000010011)))))

(assert (=> start!2859 e!8851))

(assert (=> start!2859 true))

(declare-fun array_inv!513 (array!1290) Bool)

(assert (=> start!2859 (array_inv!513 iq!146)))

(declare-fun array_inv!514 (array!1288) Bool)

(assert (=> start!2859 (array_inv!514 q!79)))

(declare-fun b!15841 () Bool)

(declare-fun res!12400 () Bool)

(assert (=> b!15841 (=> (not res!12400) (not e!8851))))

(assert (=> b!15841 (= res!12400 (and (bvsle #b00000000000000000000000000000000 j!78) (bvsle j!78 jz!49) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) z!100) (fp.leq z!100 (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(declare-fun b!15842 () Bool)

(declare-fun res!12401 () Bool)

(assert (=> b!15842 (=> (not res!12401) (not e!8852))))

(assert (=> b!15842 (= res!12401 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!8128) (fp.leq lt!8128 (fp #b0 #b10000011001 #b0100000000000000000000010000000000000000000000000000))))))

(assert (= (and start!2859 res!12397) b!15835))

(assert (= (and b!15835 res!12396) b!15841))

(assert (= (and b!15841 res!12400) b!15839))

(assert (= (and b!15839 res!12399) b!15838))

(assert (= (and b!15838 res!12402) b!15837))

(assert (= (and b!15837 res!12398) b!15842))

(assert (= (and b!15842 res!12401) b!15836))

(assert (= (and b!15836 res!12395) b!15840))

(declare-fun m!23899 () Bool)

(assert (=> start!2859 m!23899))

(declare-fun m!23901 () Bool)

(assert (=> start!2859 m!23901))

(declare-fun m!23903 () Bool)

(assert (=> b!15836 m!23903))

(assert (=> b!15836 m!23903))

(declare-fun m!23905 () Bool)

(assert (=> b!15836 m!23905))

(declare-fun m!23907 () Bool)

(assert (=> b!15837 m!23907))

(declare-fun m!23909 () Bool)

(assert (=> b!15837 m!23909))

(assert (=> b!15837 m!23909))

(declare-fun m!23911 () Bool)

(assert (=> b!15837 m!23911))

(declare-fun m!23913 () Bool)

(assert (=> b!15839 m!23913))

(declare-fun m!23915 () Bool)

(assert (=> b!15835 m!23915))

(check-sat (not b!15839) (not b!15836) (not start!2859) (not b!15835) (not b!15837))
(check-sat)
