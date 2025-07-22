; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!753 () Bool)

(assert start!753)

(declare-fun b!2723 () Bool)

(declare-datatypes ((Unit!193 0))(
  ( (Unit!194) )
))
(declare-datatypes ((array!159 0))(
  ( (array!160 (arr!71 (Array (_ BitVec 32) (_ BitVec 32))) (size!71 (_ BitVec 32))) )
))
(declare-datatypes ((tuple4!88 0))(
  ( (tuple4!89 (_1!88 Unit!193) (_2!88 array!159) (_3!76 (_ BitVec 32)) (_4!44 (_ FloatingPoint 11 53))) )
))
(declare-fun e!1351 () tuple4!88)

(declare-fun lt!1815 () array!159)

(declare-fun lt!1817 () (_ FloatingPoint 11 53))

(declare-fun jz!42 () (_ BitVec 32))

(declare-fun Unit!195 () Unit!193)

(assert (=> b!2723 (= e!1351 (tuple4!89 Unit!195 lt!1815 jz!42 lt!1817))))

(declare-fun b!2724 () Bool)

(declare-datatypes ((tuple3!64 0))(
  ( (tuple3!65 (_1!89 Unit!193) (_2!89 array!159) (_3!77 (_ BitVec 32))) )
))
(declare-fun e!1355 () tuple3!64)

(declare-fun lt!1812 () tuple4!88)

(declare-fun lt!1818 () (_ BitVec 32))

(declare-fun Unit!196 () Unit!193)

(assert (=> b!2724 (= e!1355 (tuple3!65 Unit!196 (_2!88 lt!1812) lt!1818))))

(declare-fun res!2212 () Bool)

(declare-fun e!1356 () Bool)

(assert (=> start!753 (=> (not res!2212) (not e!1356))))

(assert (=> start!753 (= res!2212 (and (bvsle #b00000000000000000000000000000010 jz!42) (bvslt jz!42 #b00000000000000000000000000010011)))))

(assert (=> start!753 e!1356))

(assert (=> start!753 true))

(declare-datatypes ((array!161 0))(
  ( (array!162 (arr!72 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!72 (_ BitVec 32))) )
))
(declare-fun q!70 () array!161)

(declare-fun array_inv!32 (array!161) Bool)

(assert (=> start!753 (array_inv!32 q!70)))

(declare-fun b!2725 () Bool)

(declare-fun e!1352 () Bool)

(assert (=> b!2725 (= e!1352 (and (not (= (bvand jz!42 #b10000000000000000000000000000000) #b00000000000000000000000000000000)) (not (= (bvand jz!42 #b10000000000000000000000000000000) (bvand (bvsub jz!42 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(declare-fun lt!1819 () tuple3!64)

(assert (=> b!2725 (= lt!1819 e!1355)))

(declare-fun c!463 () Bool)

(assert (=> b!2725 (= c!463 (bvsge (select (arr!71 (_2!88 lt!1812)) (bvsub jz!42 #b00000000000000000000000000000001)) #b00000000100000000000000000000000))))

(assert (=> b!2725 (= lt!1818 #b00000000000000000000000000000000)))

(declare-fun lt!1811 () (_ BitVec 32))

(declare-datatypes ((tuple4!90 0))(
  ( (tuple4!91 (_1!90 Unit!193) (_2!90 (_ BitVec 32)) (_3!78 array!159) (_4!45 (_ BitVec 32))) )
))
(declare-fun e!1354 () tuple4!90)

(declare-fun b!2726 () Bool)

(declare-fun Unit!197 () Unit!193)

(assert (=> b!2726 (= e!1354 (tuple4!91 Unit!197 lt!1811 (_2!88 lt!1812) lt!1818))))

(declare-fun b!2727 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!161 array!159 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!88)

(assert (=> b!2727 (= e!1351 (computeModuloWhile!0 jz!42 q!70 lt!1815 jz!42 lt!1817))))

(declare-fun b!2728 () Bool)

(declare-fun lt!1816 () (_ BitVec 32))

(declare-fun lt!1814 () tuple4!90)

(declare-fun Unit!198 () Unit!193)

(assert (=> b!2728 (= e!1355 (tuple3!65 Unit!198 (array!160 (store (arr!71 (_3!78 lt!1814)) (bvsub jz!42 #b00000000000000000000000000000001) (ite (= (_4!45 lt!1814) #b00000000000000000000000000000000) (bvsub #b00000001000000000000000000000000 lt!1816) (bvsub #b00000000111111111111111111111111 lt!1816))) (size!71 (_3!78 lt!1814))) (_4!45 lt!1814)))))

(assert (=> b!2728 (= lt!1811 #b00000000000000000000000000000000)))

(declare-fun c!464 () Bool)

(assert (=> b!2728 (= c!464 (bvslt lt!1811 (bvsub jz!42 #b00000000000000000000000000000001)))))

(assert (=> b!2728 (= lt!1814 e!1354)))

(assert (=> b!2728 (= lt!1816 (select (arr!71 (_3!78 lt!1814)) (bvsub jz!42 #b00000000000000000000000000000001)))))

(declare-fun b!2729 () Bool)

(declare-fun res!2213 () Bool)

(assert (=> b!2729 (=> (not res!2213) (not e!1356))))

(declare-fun qInv!0 (array!161) Bool)

(assert (=> b!2729 (= res!2213 (qInv!0 q!70))))

(declare-fun b!2730 () Bool)

(assert (=> b!2730 (= e!1356 e!1352)))

(declare-fun res!2214 () Bool)

(assert (=> b!2730 (=> (not res!2214) (not e!1352))))

(declare-fun lt!1813 () (_ FloatingPoint 11 53))

(assert (=> b!2730 (= res!2214 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!1813) (fp.lt lt!1813 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> b!2730 (= lt!1813 (fp.sub roundNearestTiesToEven (_4!44 lt!1812) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!44 lt!1812) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!44 lt!1812) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!44 lt!1812) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!44 lt!1812) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!2730 (= lt!1812 e!1351)))

(declare-fun c!462 () Bool)

(assert (=> b!2730 (= c!462 (bvsgt jz!42 #b00000000000000000000000000000000))))

(assert (=> b!2730 (= lt!1817 (select (arr!72 q!70) jz!42))))

(assert (=> b!2730 (= lt!1815 (array!160 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!2731 () Bool)

(declare-fun computeModuloWhile!1 ((_ BitVec 32) array!161 (_ BitVec 32) array!159 (_ BitVec 32)) tuple4!90)

(assert (=> b!2731 (= e!1354 (computeModuloWhile!1 jz!42 q!70 lt!1811 (_2!88 lt!1812) lt!1818))))

(assert (= (and start!753 res!2212) b!2729))

(assert (= (and b!2729 res!2213) b!2730))

(assert (= (and b!2730 c!462) b!2727))

(assert (= (and b!2730 (not c!462)) b!2723))

(assert (= (and b!2730 res!2214) b!2725))

(assert (= (and b!2725 c!463) b!2728))

(assert (= (and b!2725 (not c!463)) b!2724))

(assert (= (and b!2728 c!464) b!2731))

(assert (= (and b!2728 (not c!464)) b!2726))

(declare-fun m!4713 () Bool)

(assert (=> b!2729 m!4713))

(declare-fun m!4715 () Bool)

(assert (=> b!2727 m!4715))

(declare-fun m!4717 () Bool)

(assert (=> start!753 m!4717))

(declare-fun m!4719 () Bool)

(assert (=> b!2730 m!4719))

(declare-fun m!4721 () Bool)

(assert (=> b!2731 m!4721))

(declare-fun m!4723 () Bool)

(assert (=> b!2728 m!4723))

(declare-fun m!4725 () Bool)

(assert (=> b!2728 m!4725))

(declare-fun m!4727 () Bool)

(assert (=> b!2725 m!4727))

(push 1)

(assert (not b!2727))

(assert (not start!753))

(assert (not b!2729))

(assert (not b!2731))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

