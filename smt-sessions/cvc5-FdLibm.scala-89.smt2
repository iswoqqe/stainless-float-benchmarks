; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!741 () Bool)

(assert start!741)

(declare-fun b!2622 () Bool)

(declare-fun e!1295 () Bool)

(declare-fun e!1291 () Bool)

(assert (=> b!2622 (= e!1295 e!1291)))

(declare-fun res!2159 () Bool)

(assert (=> b!2622 (=> (not res!2159) (not e!1291))))

(declare-datatypes ((Unit!182 0))(
  ( (Unit!183) )
))
(declare-datatypes ((array!150 0))(
  ( (array!151 (arr!67 (Array (_ BitVec 32) (_ BitVec 32))) (size!67 (_ BitVec 32))) )
))
(declare-datatypes ((tuple4!80 0))(
  ( (tuple4!81 (_1!84 Unit!182) (_2!84 array!150) (_3!72 (_ BitVec 32)) (_4!40 (_ FloatingPoint 11 53))) )
))
(declare-fun lt!1723 () tuple4!80)

(declare-fun jz!42 () (_ BitVec 32))

(assert (=> b!2622 (= res!2159 (bvsge (select (arr!67 (_2!84 lt!1723)) (bvsub jz!42 #b00000000000000000000000000000001)) #b00000000100000000000000000000000))))

(declare-fun lt!1725 () (_ BitVec 32))

(assert (=> b!2622 (= lt!1725 #b00000000000000000000000000000000)))

(declare-fun res!2157 () Bool)

(declare-fun e!1294 () Bool)

(assert (=> start!741 (=> (not res!2157) (not e!1294))))

(assert (=> start!741 (= res!2157 (and (bvsle #b00000000000000000000000000000010 jz!42) (bvslt jz!42 #b00000000000000000000000000010011)))))

(assert (=> start!741 e!1294))

(assert (=> start!741 true))

(declare-datatypes ((array!152 0))(
  ( (array!153 (arr!68 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!68 (_ BitVec 32))) )
))
(declare-fun q!70 () array!152)

(declare-fun array_inv!30 (array!152) Bool)

(assert (=> start!741 (array_inv!30 q!70)))

(declare-fun b!2623 () Bool)

(declare-fun res!2158 () Bool)

(assert (=> b!2623 (=> (not res!2158) (not e!1294))))

(declare-fun qInv!0 (array!152) Bool)

(assert (=> b!2623 (= res!2158 (qInv!0 q!70))))

(declare-fun lt!1726 () array!150)

(declare-fun b!2624 () Bool)

(declare-fun e!1296 () tuple4!80)

(declare-fun lt!1724 () (_ FloatingPoint 11 53))

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!152 array!150 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!80)

(assert (=> b!2624 (= e!1296 (computeModuloWhile!0 jz!42 q!70 lt!1726 jz!42 lt!1724))))

(declare-fun lt!1722 () (_ BitVec 32))

(declare-fun b!2625 () Bool)

(declare-datatypes ((tuple4!82 0))(
  ( (tuple4!83 (_1!85 Unit!182) (_2!85 (_ BitVec 32)) (_3!73 array!150) (_4!41 (_ BitVec 32))) )
))
(declare-fun e!1293 () tuple4!82)

(declare-fun Unit!184 () Unit!182)

(assert (=> b!2625 (= e!1293 (tuple4!83 Unit!184 lt!1722 (_2!84 lt!1723) lt!1725))))

(declare-fun b!2626 () Bool)

(assert (=> b!2626 (= e!1294 e!1295)))

(declare-fun res!2160 () Bool)

(assert (=> b!2626 (=> (not res!2160) (not e!1295))))

(declare-fun lt!1721 () (_ FloatingPoint 11 53))

(assert (=> b!2626 (= res!2160 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!1721) (fp.lt lt!1721 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> b!2626 (= lt!1721 (fp.sub roundNearestTiesToEven (_4!40 lt!1723) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!40 lt!1723) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!40 lt!1723) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!40 lt!1723) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!40 lt!1723) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!2626 (= lt!1723 e!1296)))

(declare-fun c!440 () Bool)

(assert (=> b!2626 (= c!440 (bvsgt jz!42 #b00000000000000000000000000000000))))

(assert (=> b!2626 (= lt!1724 (select (arr!68 q!70) jz!42))))

(assert (=> b!2626 (= lt!1726 (array!151 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!2627 () Bool)

(declare-fun computeModuloWhile!1 ((_ BitVec 32) array!152 (_ BitVec 32) array!150 (_ BitVec 32)) tuple4!82)

(assert (=> b!2627 (= e!1293 (computeModuloWhile!1 jz!42 q!70 lt!1722 (_2!84 lt!1723) lt!1725))))

(declare-fun b!2628 () Bool)

(declare-fun Unit!185 () Unit!182)

(assert (=> b!2628 (= e!1296 (tuple4!81 Unit!185 lt!1726 jz!42 lt!1724))))

(declare-fun b!2629 () Bool)

(assert (=> b!2629 (= e!1291 (and (not (= (bvand jz!42 #b10000000000000000000000000000000) #b00000000000000000000000000000000)) (not (= (bvand jz!42 #b10000000000000000000000000000000) (bvand (bvsub jz!42 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(declare-fun lt!1720 () tuple4!82)

(assert (=> b!2629 (= lt!1720 e!1293)))

(declare-fun c!439 () Bool)

(assert (=> b!2629 (= c!439 (bvslt lt!1722 (bvsub jz!42 #b00000000000000000000000000000001)))))

(assert (=> b!2629 (= lt!1722 #b00000000000000000000000000000000)))

(assert (= (and start!741 res!2157) b!2623))

(assert (= (and b!2623 res!2158) b!2626))

(assert (= (and b!2626 c!440) b!2624))

(assert (= (and b!2626 (not c!440)) b!2628))

(assert (= (and b!2626 res!2160) b!2622))

(assert (= (and b!2622 res!2159) b!2629))

(assert (= (and b!2629 c!439) b!2627))

(assert (= (and b!2629 (not c!439)) b!2625))

(declare-fun m!4663 () Bool)

(assert (=> b!2624 m!4663))

(declare-fun m!4665 () Bool)

(assert (=> b!2627 m!4665))

(declare-fun m!4667 () Bool)

(assert (=> b!2626 m!4667))

(declare-fun m!4669 () Bool)

(assert (=> b!2622 m!4669))

(declare-fun m!4671 () Bool)

(assert (=> b!2623 m!4671))

(declare-fun m!4673 () Bool)

(assert (=> start!741 m!4673))

(push 1)

(assert (not b!2627))

(assert (not b!2623))

(assert (not start!741))

(assert (not b!2624))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

