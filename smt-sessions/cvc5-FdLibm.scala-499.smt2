; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!2807 () Bool)

(assert start!2807)

(declare-fun i!142 () (_ BitVec 32))

(declare-fun e!8453 () Bool)

(declare-fun b!15346 () Bool)

(declare-fun lt!7910 () (_ BitVec 32))

(declare-fun jz!20 () (_ BitVec 32))

(assert (=> b!15346 (= e!8453 (bvsge (bvsub jz!20 lt!7910) (bvsub jz!20 i!142)))))

(declare-datatypes ((Unit!1612 0))(
  ( (Unit!1613) )
))
(declare-datatypes ((array!1148 0))(
  ( (array!1149 (arr!501 (Array (_ BitVec 32) (_ BitVec 32))) (size!501 (_ BitVec 32))) )
))
(declare-datatypes ((tuple4!382 0))(
  ( (tuple4!383 (_1!390 Unit!1612) (_2!390 array!1148) (_3!322 (_ BitVec 32)) (_4!191 (_ FloatingPoint 11 53))) )
))
(declare-fun lt!7911 () tuple4!382)

(declare-fun e!8456 () tuple4!382)

(assert (=> b!15346 (= lt!7911 e!8456)))

(declare-fun c!1919 () Bool)

(assert (=> b!15346 (= c!1919 (bvsgt jz!20 #b00000000000000000000000000000000))))

(declare-fun lt!7916 () (_ FloatingPoint 11 53))

(declare-datatypes ((array!1150 0))(
  ( (array!1151 (arr!502 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!502 (_ BitVec 32))) )
))
(declare-fun q!31 () array!1150)

(assert (=> b!15346 (= lt!7916 (select (arr!502 q!31) jz!20))))

(declare-fun lt!7912 () array!1148)

(assert (=> b!15346 (= lt!7912 (array!1149 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!15347 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!1150 array!1148 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!382)

(assert (=> b!15347 (= e!8456 (computeModuloWhile!0 jz!20 q!31 lt!7912 jz!20 lt!7916))))

(declare-fun b!15348 () Bool)

(declare-fun res!11935 () Bool)

(declare-fun e!8452 () Bool)

(assert (=> b!15348 (=> (not res!11935) (not e!8452))))

(declare-fun carry!33 () (_ BitVec 32))

(declare-fun iq!76 () array!1148)

(assert (=> b!15348 (= res!11935 (and (bvsge (select (arr!501 iq!76) (bvsub jz!20 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (= carry!33 #b00000000000000000000000000000000) (= carry!33 #b00000000000000000000000000000001)) (bvslt i!142 (bvsub jz!20 #b00000000000000000000000000000001))))))

(declare-fun b!15349 () Bool)

(declare-fun e!8455 () Bool)

(assert (=> b!15349 (= e!8455 e!8452)))

(declare-fun res!11934 () Bool)

(assert (=> b!15349 (=> (not res!11934) (not e!8452))))

(declare-fun lt!7914 () tuple4!382)

(declare-fun lt!7909 () (_ FloatingPoint 11 53))

(assert (=> b!15349 (= res!11934 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!7909) (fp.lt lt!7909 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!501 (_2!390 lt!7914)) (bvsub jz!20 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (bvsle #b00000000000000000000000000000000 i!142) (bvsle i!142 (bvsub jz!20 #b00000000000000000000000000000001))))))

(assert (=> b!15349 (= lt!7909 (fp.sub roundNearestTiesToEven (_4!191 lt!7914) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!191 lt!7914) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!191 lt!7914) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!191 lt!7914) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!191 lt!7914) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(declare-fun e!8457 () tuple4!382)

(assert (=> b!15349 (= lt!7914 e!8457)))

(declare-fun c!1918 () Bool)

(assert (=> b!15349 (= c!1918 (bvsgt jz!20 #b00000000000000000000000000000000))))

(declare-fun lt!7915 () (_ FloatingPoint 11 53))

(assert (=> b!15349 (= lt!7915 (select (arr!502 q!31) jz!20))))

(declare-fun lt!7913 () array!1148)

(assert (=> b!15349 (= lt!7913 (array!1149 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!15350 () Bool)

(declare-fun res!11932 () Bool)

(assert (=> b!15350 (=> (not res!11932) (not e!8452))))

(declare-fun iqInv!0 (array!1148) Bool)

(assert (=> b!15350 (= res!11932 (iqInv!0 iq!76))))

(declare-fun b!15351 () Bool)

(assert (=> b!15351 (= e!8457 (computeModuloWhile!0 jz!20 q!31 lt!7913 jz!20 lt!7915))))

(declare-fun b!15352 () Bool)

(declare-fun res!11931 () Bool)

(assert (=> b!15352 (=> (not res!11931) (not e!8452))))

(declare-fun QInt!0 ((_ BitVec 32)) Bool)

(assert (=> b!15352 (= res!11931 (QInt!0 (select (arr!501 iq!76) i!142)))))

(declare-fun b!15353 () Bool)

(declare-fun Unit!1614 () Unit!1612)

(assert (=> b!15353 (= e!8457 (tuple4!383 Unit!1614 lt!7913 jz!20 lt!7915))))

(declare-fun b!15354 () Bool)

(assert (=> b!15354 (= e!8452 e!8453)))

(declare-fun res!11937 () Bool)

(assert (=> b!15354 (=> (not res!11937) (not e!8453))))

(assert (=> b!15354 (= res!11937 (bvslt lt!7910 (bvsub jz!20 #b00000000000000000000000000000001)))))

(assert (=> b!15354 (= lt!7910 (bvadd i!142 #b00000000000000000000000000000001))))

(declare-fun b!15355 () Bool)

(declare-fun Unit!1615 () Unit!1612)

(assert (=> b!15355 (= e!8456 (tuple4!383 Unit!1615 lt!7912 jz!20 lt!7916))))

(declare-fun res!11936 () Bool)

(assert (=> start!2807 (=> (not res!11936) (not e!8455))))

(assert (=> start!2807 (= res!11936 (and (bvsle #b00000000000000000000000000000010 jz!20) (bvslt jz!20 #b00000000000000000000000000010011)))))

(assert (=> start!2807 e!8455))

(assert (=> start!2807 true))

(declare-fun array_inv!449 (array!1150) Bool)

(assert (=> start!2807 (array_inv!449 q!31)))

(declare-fun array_inv!450 (array!1148) Bool)

(assert (=> start!2807 (array_inv!450 iq!76)))

(declare-fun b!15345 () Bool)

(declare-fun res!11933 () Bool)

(assert (=> b!15345 (=> (not res!11933) (not e!8455))))

(declare-fun qInv!0 (array!1150) Bool)

(assert (=> b!15345 (= res!11933 (qInv!0 q!31))))

(assert (= (and start!2807 res!11936) b!15345))

(assert (= (and b!15345 res!11933) b!15349))

(assert (= (and b!15349 c!1918) b!15351))

(assert (= (and b!15349 (not c!1918)) b!15353))

(assert (= (and b!15349 res!11934) b!15350))

(assert (= (and b!15350 res!11932) b!15348))

(assert (= (and b!15348 res!11935) b!15352))

(assert (= (and b!15352 res!11931) b!15354))

(assert (= (and b!15354 res!11937) b!15346))

(assert (= (and b!15346 c!1919) b!15347))

(assert (= (and b!15346 (not c!1919)) b!15355))

(declare-fun m!24837 () Bool)

(assert (=> b!15346 m!24837))

(declare-fun m!24839 () Bool)

(assert (=> b!15352 m!24839))

(assert (=> b!15352 m!24839))

(declare-fun m!24841 () Bool)

(assert (=> b!15352 m!24841))

(declare-fun m!24843 () Bool)

(assert (=> b!15350 m!24843))

(declare-fun m!24845 () Bool)

(assert (=> b!15349 m!24845))

(assert (=> b!15349 m!24837))

(declare-fun m!24847 () Bool)

(assert (=> start!2807 m!24847))

(declare-fun m!24849 () Bool)

(assert (=> start!2807 m!24849))

(declare-fun m!24851 () Bool)

(assert (=> b!15345 m!24851))

(declare-fun m!24853 () Bool)

(assert (=> b!15348 m!24853))

(declare-fun m!24855 () Bool)

(assert (=> b!15347 m!24855))

(declare-fun m!24857 () Bool)

(assert (=> b!15351 m!24857))

(push 1)

(assert (not b!15352))

(assert (not b!15350))

(assert (not start!2807))

(assert (not b!15351))

(assert (not b!15347))

(assert (not b!15345))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

