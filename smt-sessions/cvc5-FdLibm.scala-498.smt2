; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!2805 () Bool)

(assert start!2805)

(declare-fun res!11911 () Bool)

(declare-fun e!8436 () Bool)

(assert (=> start!2805 (=> (not res!11911) (not e!8436))))

(declare-fun jz!20 () (_ BitVec 32))

(assert (=> start!2805 (= res!11911 (and (bvsle #b00000000000000000000000000000010 jz!20) (bvslt jz!20 #b00000000000000000000000000010011)))))

(assert (=> start!2805 e!8436))

(assert (=> start!2805 true))

(declare-datatypes ((array!1144 0))(
  ( (array!1145 (arr!499 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!499 (_ BitVec 32))) )
))
(declare-fun q!31 () array!1144)

(declare-fun array_inv!447 (array!1144) Bool)

(assert (=> start!2805 (array_inv!447 q!31)))

(declare-datatypes ((array!1146 0))(
  ( (array!1147 (arr!500 (Array (_ BitVec 32) (_ BitVec 32))) (size!500 (_ BitVec 32))) )
))
(declare-fun iq!76 () array!1146)

(declare-fun array_inv!448 (array!1146) Bool)

(assert (=> start!2805 (array_inv!448 iq!76)))

(declare-fun b!15315 () Bool)

(declare-fun e!8434 () Bool)

(assert (=> b!15315 (= e!8434 (and (not (= (bvand jz!20 #b10000000000000000000000000000000) #b00000000000000000000000000000000)) (not (= (bvand jz!20 #b10000000000000000000000000000000) (bvand (bvsub jz!20 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(declare-fun b!15316 () Bool)

(assert (=> b!15316 (= e!8436 e!8434)))

(declare-fun res!11916 () Bool)

(assert (=> b!15316 (=> (not res!11916) (not e!8434))))

(declare-fun i!142 () (_ BitVec 32))

(declare-fun lt!7891 () (_ FloatingPoint 11 53))

(declare-datatypes ((Unit!1609 0))(
  ( (Unit!1610) )
))
(declare-datatypes ((tuple4!380 0))(
  ( (tuple4!381 (_1!389 Unit!1609) (_2!389 array!1146) (_3!321 (_ BitVec 32)) (_4!190 (_ FloatingPoint 11 53))) )
))
(declare-fun lt!7892 () tuple4!380)

(assert (=> b!15316 (= res!11916 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!7891) (fp.lt lt!7891 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!500 (_2!389 lt!7892)) (bvsub jz!20 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (bvsle #b00000000000000000000000000000000 i!142) (bvsle i!142 (bvsub jz!20 #b00000000000000000000000000000001))))))

(assert (=> b!15316 (= lt!7891 (fp.sub roundNearestTiesToEven (_4!190 lt!7892) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!190 lt!7892) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!190 lt!7892) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!190 lt!7892) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!190 lt!7892) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(declare-fun e!8435 () tuple4!380)

(assert (=> b!15316 (= lt!7892 e!8435)))

(declare-fun c!1913 () Bool)

(assert (=> b!15316 (= c!1913 (bvsgt jz!20 #b00000000000000000000000000000000))))

(declare-fun lt!7890 () (_ FloatingPoint 11 53))

(assert (=> b!15316 (= lt!7890 (select (arr!499 q!31) jz!20))))

(declare-fun lt!7889 () array!1146)

(assert (=> b!15316 (= lt!7889 (array!1147 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!15317 () Bool)

(declare-fun res!11912 () Bool)

(assert (=> b!15317 (=> (not res!11912) (not e!8434))))

(declare-fun iqInv!0 (array!1146) Bool)

(assert (=> b!15317 (= res!11912 (iqInv!0 iq!76))))

(declare-fun b!15318 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!1144 array!1146 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!380)

(assert (=> b!15318 (= e!8435 (computeModuloWhile!0 jz!20 q!31 lt!7889 jz!20 lt!7890))))

(declare-fun b!15319 () Bool)

(declare-fun Unit!1611 () Unit!1609)

(assert (=> b!15319 (= e!8435 (tuple4!381 Unit!1611 lt!7889 jz!20 lt!7890))))

(declare-fun b!15320 () Bool)

(declare-fun res!11915 () Bool)

(assert (=> b!15320 (=> (not res!11915) (not e!8434))))

(declare-fun carry!33 () (_ BitVec 32))

(assert (=> b!15320 (= res!11915 (and (bvsge (select (arr!500 iq!76) (bvsub jz!20 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (= carry!33 #b00000000000000000000000000000000) (= carry!33 #b00000000000000000000000000000001)) (bvslt i!142 (bvsub jz!20 #b00000000000000000000000000000001))))))

(declare-fun b!15321 () Bool)

(declare-fun res!11914 () Bool)

(assert (=> b!15321 (=> (not res!11914) (not e!8436))))

(declare-fun qInv!0 (array!1144) Bool)

(assert (=> b!15321 (= res!11914 (qInv!0 q!31))))

(declare-fun b!15322 () Bool)

(declare-fun res!11913 () Bool)

(assert (=> b!15322 (=> (not res!11913) (not e!8434))))

(declare-fun QInt!0 ((_ BitVec 32)) Bool)

(assert (=> b!15322 (= res!11913 (QInt!0 (select (arr!500 iq!76) i!142)))))

(assert (= (and start!2805 res!11911) b!15321))

(assert (= (and b!15321 res!11914) b!15316))

(assert (= (and b!15316 c!1913) b!15318))

(assert (= (and b!15316 (not c!1913)) b!15319))

(assert (= (and b!15316 res!11916) b!15317))

(assert (= (and b!15317 res!11912) b!15320))

(assert (= (and b!15320 res!11915) b!15322))

(assert (= (and b!15322 res!11913) b!15315))

(declare-fun m!24817 () Bool)

(assert (=> start!2805 m!24817))

(declare-fun m!24819 () Bool)

(assert (=> start!2805 m!24819))

(declare-fun m!24821 () Bool)

(assert (=> b!15316 m!24821))

(declare-fun m!24823 () Bool)

(assert (=> b!15316 m!24823))

(declare-fun m!24825 () Bool)

(assert (=> b!15317 m!24825))

(declare-fun m!24827 () Bool)

(assert (=> b!15322 m!24827))

(assert (=> b!15322 m!24827))

(declare-fun m!24829 () Bool)

(assert (=> b!15322 m!24829))

(declare-fun m!24831 () Bool)

(assert (=> b!15320 m!24831))

(declare-fun m!24833 () Bool)

(assert (=> b!15321 m!24833))

(declare-fun m!24835 () Bool)

(assert (=> b!15318 m!24835))

(push 1)

(assert (not b!15321))

(assert (not b!15317))

(assert (not start!2805))

(assert (not b!15322))

(assert (not b!15318))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

