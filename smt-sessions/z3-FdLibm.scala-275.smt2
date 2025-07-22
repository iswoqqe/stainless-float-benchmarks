; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1671 () Bool)

(assert start!1671)

(declare-fun b!8518 () Bool)

(declare-fun res!6946 () Bool)

(declare-fun e!4791 () Bool)

(assert (=> b!8518 (=> res!6946 e!4791)))

(declare-datatypes ((array!666 0))(
  ( (array!667 (arr!293 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!293 (_ BitVec 32))) )
))
(declare-datatypes ((Unit!628 0))(
  ( (Unit!629) )
))
(declare-datatypes ((tuple4!202 0))(
  ( (tuple4!203 (_1!227 Unit!628) (_2!227 (_ BitVec 32)) (_3!191 array!666) (_4!101 array!666)) )
))
(declare-fun lt!4365 () tuple4!202)

(declare-fun fInv!0 (array!666) Bool)

(assert (=> b!8518 (= res!6946 (not (fInv!0 (_4!101 lt!4365))))))

(declare-fun b!8519 () Bool)

(declare-fun e!4794 () Bool)

(declare-fun e!4789 () Bool)

(assert (=> b!8519 (= e!4794 e!4789)))

(declare-fun res!6947 () Bool)

(assert (=> b!8519 (=> (not res!6947) (not e!4789))))

(declare-fun i!190 () (_ BitVec 32))

(declare-fun jz!36 () (_ BitVec 32))

(assert (=> b!8519 (= res!6947 (and (bvsle #b00000000000000000000000000000000 i!190) (bvsle i!190 (bvadd jz!36 #b00000000000000000000000000000001))))))

(declare-datatypes ((tuple3!180 0))(
  ( (tuple3!181 (_1!228 Unit!628) (_2!228 (_ BitVec 32)) (_3!192 array!666)) )
))
(declare-fun lt!4363 () tuple3!180)

(declare-fun e!4793 () tuple3!180)

(assert (=> b!8519 (= lt!4363 e!4793)))

(declare-fun lt!4361 () (_ BitVec 32))

(declare-fun c!998 () Bool)

(declare-fun xx!50 () array!666)

(assert (=> b!8519 (= c!998 (bvsle lt!4361 (bvadd (bvsub (size!293 xx!50) #b00000000000000000000000000000001) jz!36)))))

(assert (=> b!8519 (= lt!4361 #b00000000000000000000000000000000)))

(declare-fun lt!4364 () array!666)

(assert (=> b!8519 (= lt!4364 (array!667 ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000010100))))

(declare-fun b!8520 () Bool)

(declare-fun qInv!0 (array!666) Bool)

(assert (=> b!8520 (= e!4791 (not (qInv!0 (_3!191 lt!4365))))))

(declare-fun b!8521 () Bool)

(declare-fun res!6938 () Bool)

(declare-fun e!4797 () Bool)

(assert (=> b!8521 (=> (not res!6938) (not e!4797))))

(declare-fun xxInv!0 (array!666) Bool)

(assert (=> b!8521 (= res!6938 (xxInv!0 xx!50))))

(declare-fun b!8522 () Bool)

(declare-fun res!6939 () Bool)

(assert (=> b!8522 (=> (not res!6939) (not e!4789))))

(declare-fun f!79 () array!666)

(declare-fun Q!0 ((_ FloatingPoint 11 53)) Bool)

(assert (=> b!8522 (= res!6939 (Q!0 (select (arr!293 f!79) (bvadd i!190 #b00000000000000000000000000000001))))))

(declare-fun b!8523 () Bool)

(declare-fun res!6950 () Bool)

(assert (=> b!8523 (=> (not res!6950) (not e!4789))))

(assert (=> b!8523 (= res!6950 (Q!0 (select (arr!293 f!79) (bvadd i!190 #b00000000000000000000000000000010))))))

(declare-fun b!8524 () Bool)

(declare-fun res!6937 () Bool)

(assert (=> b!8524 (=> (not res!6937) (not e!4789))))

(declare-fun q!51 () array!666)

(declare-fun P!3 ((_ FloatingPoint 11 53)) Bool)

(assert (=> b!8524 (= res!6937 (P!3 (select (store (arr!293 q!51) i!190 (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven (select (arr!293 xx!50) #b00000000000000000000000000000000) (select (arr!293 f!79) (bvadd i!190 #b00000000000000000000000000000100))) (fp.mul roundNearestTiesToEven (select (arr!293 xx!50) #b00000000000000000000000000000001) (select (arr!293 f!79) (bvadd i!190 #b00000000000000000000000000000011)))) (fp.mul roundNearestTiesToEven (select (arr!293 xx!50) #b00000000000000000000000000000010) (select (arr!293 f!79) (bvadd i!190 #b00000000000000000000000000000010)))) (fp.mul roundNearestTiesToEven (select (arr!293 xx!50) #b00000000000000000000000000000011) (select (arr!293 f!79) (bvadd i!190 #b00000000000000000000000000000001)))) (fp.mul roundNearestTiesToEven (select (arr!293 xx!50) #b00000000000000000000000000000100) (select (arr!293 f!79) i!190)))) i!190)))))

(declare-fun b!8525 () Bool)

(declare-fun Unit!630 () Unit!628)

(assert (=> b!8525 (= e!4793 (tuple3!181 Unit!630 lt!4361 lt!4364))))

(declare-fun e!19 () (_ BitVec 32))

(declare-fun b!8527 () Bool)

(declare-fun timesTwoOverPiWhile!0 ((_ BitVec 32) (_ BitVec 32) array!666 (_ BitVec 32) array!666) tuple3!180)

(assert (=> b!8527 (= e!4793 (timesTwoOverPiWhile!0 e!19 jz!36 xx!50 lt!4361 lt!4364))))

(declare-fun b!8528 () Bool)

(declare-fun e!4795 () Bool)

(assert (=> b!8528 (= e!4795 e!4791)))

(declare-fun res!6941 () Bool)

(assert (=> b!8528 (=> res!6941 e!4791)))

(assert (=> b!8528 (= res!6941 (or (bvsgt #b00000000000000000000000000000000 (_2!227 lt!4365)) (bvsgt (_2!227 lt!4365) (bvadd jz!36 #b00000000000000000000000000000001))))))

(declare-fun lt!4360 () (_ BitVec 32))

(declare-fun timesTwoOverPiWhile!1 ((_ BitVec 32) (_ BitVec 32) array!666 (_ BitVec 32) array!666 array!666) tuple4!202)

(assert (=> b!8528 (= lt!4365 (timesTwoOverPiWhile!1 e!19 jz!36 xx!50 lt!4360 (array!667 (store (arr!293 q!51) i!190 (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven (select (arr!293 xx!50) #b00000000000000000000000000000000) (select (arr!293 f!79) (bvadd i!190 #b00000000000000000000000000000100))) (fp.mul roundNearestTiesToEven (select (arr!293 xx!50) #b00000000000000000000000000000001) (select (arr!293 f!79) (bvadd i!190 #b00000000000000000000000000000011)))) (fp.mul roundNearestTiesToEven (select (arr!293 xx!50) #b00000000000000000000000000000010) (select (arr!293 f!79) (bvadd i!190 #b00000000000000000000000000000010)))) (fp.mul roundNearestTiesToEven (select (arr!293 xx!50) #b00000000000000000000000000000011) (select (arr!293 f!79) (bvadd i!190 #b00000000000000000000000000000001)))) (fp.mul roundNearestTiesToEven (select (arr!293 xx!50) #b00000000000000000000000000000100) (select (arr!293 f!79) i!190)))) (size!293 q!51)) f!79))))

(declare-fun b!8529 () Bool)

(declare-fun res!6936 () Bool)

(assert (=> b!8529 (=> (not res!6936) (not e!4789))))

(assert (=> b!8529 (= res!6936 (fInv!0 f!79))))

(declare-fun b!8530 () Bool)

(declare-fun res!6943 () Bool)

(assert (=> b!8530 (=> (not res!6943) (not e!4789))))

(assert (=> b!8530 (= res!6943 (Q!0 (select (arr!293 f!79) (bvadd i!190 #b00000000000000000000000000000100))))))

(declare-fun b!8531 () Bool)

(declare-fun res!6942 () Bool)

(assert (=> b!8531 (=> (not res!6942) (not e!4789))))

(assert (=> b!8531 (= res!6942 (Q!0 (select (arr!293 f!79) (bvadd i!190 #b00000000000000000000000000000011))))))

(declare-fun b!8532 () Bool)

(assert (=> b!8532 (= e!4789 e!4795)))

(declare-fun res!6944 () Bool)

(assert (=> b!8532 (=> (not res!6944) (not e!4795))))

(assert (=> b!8532 (= res!6944 (bvsle lt!4360 jz!36))))

(assert (=> b!8532 (= lt!4360 (bvadd i!190 #b00000000000000000000000000000001))))

(declare-fun b!8533 () Bool)

(assert (=> b!8533 (= e!4797 e!4794)))

(declare-fun res!6948 () Bool)

(assert (=> b!8533 (=> (not res!6948) (not e!4794))))

(declare-fun lt!4362 () (_ BitVec 32))

(assert (=> b!8533 (= res!6948 (= (bvsub e!19 (bvmul #b00000000000000000000000000011000 (bvadd (ite (bvslt lt!4362 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!4362) #b00000000000000000000000000000001))) #b00000000000000000000000000000000))))

(assert (=> b!8533 (= lt!4362 (bvsdiv (bvsub e!19 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(declare-fun b!8534 () Bool)

(declare-fun res!6940 () Bool)

(assert (=> b!8534 (=> (not res!6940) (not e!4789))))

(assert (=> b!8534 (= res!6940 (qInv!0 q!51))))

(declare-fun b!8535 () Bool)

(declare-fun res!6935 () Bool)

(assert (=> b!8535 (=> (not res!6935) (not e!4789))))

(assert (=> b!8535 (= res!6935 (Q!0 (select (arr!293 f!79) i!190)))))

(declare-fun res!6945 () Bool)

(assert (=> start!1671 (=> (not res!6945) (not e!4797))))

(assert (=> start!1671 (= res!6945 (and (bvsle #b00000000000000000000000000000000 jz!36) (bvsle jz!36 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!19) (bvsle e!19 #b00000000000000000000001111110000) (= (bvsrem e!19 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1671 e!4797))

(declare-fun array_inv!243 (array!666) Bool)

(assert (=> start!1671 (array_inv!243 f!79)))

(assert (=> start!1671 (array_inv!243 q!51)))

(assert (=> start!1671 true))

(assert (=> start!1671 (array_inv!243 xx!50)))

(declare-fun b!8526 () Bool)

(declare-fun res!6949 () Bool)

(assert (=> b!8526 (=> (not res!6949) (not e!4789))))

(assert (=> b!8526 (= res!6949 (bvsle i!190 jz!36))))

(assert (= (and start!1671 res!6945) b!8521))

(assert (= (and b!8521 res!6938) b!8533))

(assert (= (and b!8533 res!6948) b!8519))

(assert (= (and b!8519 c!998) b!8527))

(assert (= (and b!8519 (not c!998)) b!8525))

(assert (= (and b!8519 res!6947) b!8529))

(assert (= (and b!8529 res!6936) b!8534))

(assert (= (and b!8534 res!6940) b!8526))

(assert (= (and b!8526 res!6949) b!8530))

(assert (= (and b!8530 res!6943) b!8531))

(assert (= (and b!8531 res!6942) b!8523))

(assert (= (and b!8523 res!6950) b!8522))

(assert (= (and b!8522 res!6939) b!8535))

(assert (= (and b!8535 res!6935) b!8524))

(assert (= (and b!8524 res!6937) b!8532))

(assert (= (and b!8532 res!6944) b!8528))

(assert (= (and b!8528 (not res!6941)) b!8518))

(assert (= (and b!8518 (not res!6946)) b!8520))

(declare-fun m!12785 () Bool)

(assert (=> b!8521 m!12785))

(declare-fun m!12787 () Bool)

(assert (=> b!8527 m!12787))

(declare-fun m!12789 () Bool)

(assert (=> b!8522 m!12789))

(assert (=> b!8522 m!12789))

(declare-fun m!12791 () Bool)

(assert (=> b!8522 m!12791))

(declare-fun m!12793 () Bool)

(assert (=> b!8529 m!12793))

(declare-fun m!12795 () Bool)

(assert (=> b!8534 m!12795))

(declare-fun m!12797 () Bool)

(assert (=> b!8524 m!12797))

(declare-fun m!12799 () Bool)

(assert (=> b!8524 m!12799))

(declare-fun m!12801 () Bool)

(assert (=> b!8524 m!12801))

(assert (=> b!8524 m!12789))

(declare-fun m!12803 () Bool)

(assert (=> b!8524 m!12803))

(declare-fun m!12805 () Bool)

(assert (=> b!8524 m!12805))

(declare-fun m!12807 () Bool)

(assert (=> b!8524 m!12807))

(declare-fun m!12809 () Bool)

(assert (=> b!8524 m!12809))

(assert (=> b!8524 m!12805))

(declare-fun m!12811 () Bool)

(assert (=> b!8524 m!12811))

(declare-fun m!12813 () Bool)

(assert (=> b!8524 m!12813))

(declare-fun m!12815 () Bool)

(assert (=> b!8524 m!12815))

(declare-fun m!12817 () Bool)

(assert (=> b!8524 m!12817))

(declare-fun m!12819 () Bool)

(assert (=> b!8524 m!12819))

(assert (=> b!8523 m!12801))

(assert (=> b!8523 m!12801))

(declare-fun m!12821 () Bool)

(assert (=> b!8523 m!12821))

(assert (=> b!8530 m!12797))

(assert (=> b!8530 m!12797))

(declare-fun m!12823 () Bool)

(assert (=> b!8530 m!12823))

(assert (=> b!8535 m!12813))

(assert (=> b!8535 m!12813))

(declare-fun m!12825 () Bool)

(assert (=> b!8535 m!12825))

(assert (=> b!8528 m!12797))

(assert (=> b!8528 m!12799))

(declare-fun m!12827 () Bool)

(assert (=> b!8528 m!12827))

(assert (=> b!8528 m!12801))

(assert (=> b!8528 m!12789))

(assert (=> b!8528 m!12803))

(assert (=> b!8528 m!12807))

(assert (=> b!8528 m!12809))

(assert (=> b!8528 m!12813))

(assert (=> b!8528 m!12815))

(assert (=> b!8528 m!12817))

(assert (=> b!8528 m!12819))

(declare-fun m!12829 () Bool)

(assert (=> b!8520 m!12829))

(assert (=> b!8531 m!12799))

(assert (=> b!8531 m!12799))

(declare-fun m!12831 () Bool)

(assert (=> b!8531 m!12831))

(declare-fun m!12833 () Bool)

(assert (=> start!1671 m!12833))

(declare-fun m!12835 () Bool)

(assert (=> start!1671 m!12835))

(declare-fun m!12837 () Bool)

(assert (=> start!1671 m!12837))

(declare-fun m!12839 () Bool)

(assert (=> b!8518 m!12839))

(check-sat (not b!8534) (not b!8531) (not b!8523) (not b!8528) (not b!8518) (not b!8520) (not b!8522) (not b!8530) (not b!8524) (not b!8521) (not b!8527) (not b!8529) (not b!8535) (not start!1671))
(check-sat)
