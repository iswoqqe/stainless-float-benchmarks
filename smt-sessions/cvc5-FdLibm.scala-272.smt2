; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!1765 () Bool)

(assert start!1765)

(declare-fun b!9302 () Bool)

(declare-datatypes ((array!670 0))(
  ( (array!671 (arr!290 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!290 (_ BitVec 32))) )
))
(declare-datatypes ((Unit!663 0))(
  ( (Unit!664) )
))
(declare-datatypes ((tuple3!174 0))(
  ( (tuple3!175 (_1!225 Unit!663) (_2!225 (_ BitVec 32)) (_3!187 array!670)) )
))
(declare-fun e!4926 () tuple3!174)

(declare-fun lt!4501 () (_ BitVec 32))

(declare-fun lt!4499 () array!670)

(declare-fun Unit!665 () Unit!663)

(assert (=> b!9302 (= e!4926 (tuple3!175 Unit!665 lt!4501 lt!4499))))

(declare-fun b!9303 () Bool)

(declare-fun e!4921 () Bool)

(declare-fun i!190 () (_ BitVec 32))

(assert (=> b!9303 (= e!4921 (and (= (bvand i!190 #b10000000000000000000000000000000) #b00000000000000000000000000000000) (not (= (bvand i!190 #b10000000000000000000000000000000) (bvand (bvadd i!190 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(declare-fun res!7673 () Bool)

(declare-fun e!4920 () Bool)

(assert (=> start!1765 (=> (not res!7673) (not e!4920))))

(declare-fun jz!36 () (_ BitVec 32))

(declare-fun e!19 () (_ BitVec 32))

(assert (=> start!1765 (= res!7673 (and (bvsle #b00000000000000000000000000000000 jz!36) (bvsle jz!36 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!19) (bvsle e!19 #b00000000000000000000001111110000) (= (bvsrem e!19 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1765 e!4920))

(declare-fun f!79 () array!670)

(declare-fun array_inv!240 (array!670) Bool)

(assert (=> start!1765 (array_inv!240 f!79)))

(declare-fun q!51 () array!670)

(assert (=> start!1765 (array_inv!240 q!51)))

(assert (=> start!1765 true))

(declare-fun xx!50 () array!670)

(assert (=> start!1765 (array_inv!240 xx!50)))

(declare-fun b!9304 () Bool)

(declare-fun res!7668 () Bool)

(assert (=> b!9304 (=> (not res!7668) (not e!4921))))

(declare-fun qInv!0 (array!670) Bool)

(assert (=> b!9304 (= res!7668 (qInv!0 q!51))))

(declare-fun b!9305 () Bool)

(declare-fun res!7665 () Bool)

(assert (=> b!9305 (=> (not res!7665) (not e!4921))))

(assert (=> b!9305 (= res!7665 (bvsle i!190 jz!36))))

(declare-fun b!9306 () Bool)

(declare-fun res!7666 () Bool)

(assert (=> b!9306 (=> (not res!7666) (not e!4921))))

(declare-fun fInv!0 (array!670) Bool)

(assert (=> b!9306 (= res!7666 (fInv!0 f!79))))

(declare-fun b!9307 () Bool)

(declare-fun res!7672 () Bool)

(assert (=> b!9307 (=> (not res!7672) (not e!4921))))

(declare-fun Q!0 ((_ FloatingPoint 11 53)) Bool)

(assert (=> b!9307 (= res!7672 (Q!0 (select (arr!290 f!79) (bvadd i!190 #b00000000000000000000000000000011))))))

(declare-fun b!9308 () Bool)

(declare-fun e!4924 () Bool)

(assert (=> b!9308 (= e!4924 e!4921)))

(declare-fun res!7671 () Bool)

(assert (=> b!9308 (=> (not res!7671) (not e!4921))))

(assert (=> b!9308 (= res!7671 (and (bvsle #b00000000000000000000000000000000 i!190) (bvsle i!190 (bvadd jz!36 #b00000000000000000000000000000001))))))

(declare-fun lt!4502 () tuple3!174)

(assert (=> b!9308 (= lt!4502 e!4926)))

(declare-fun c!1027 () Bool)

(assert (=> b!9308 (= c!1027 (bvsle lt!4501 (bvadd (bvsub (size!290 xx!50) #b00000000000000000000000000000001) jz!36)))))

(assert (=> b!9308 (= lt!4501 #b00000000000000000000000000000000)))

(assert (=> b!9308 (= lt!4499 (array!671 ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000010100))))

(declare-fun b!9309 () Bool)

(declare-fun res!7661 () Bool)

(assert (=> b!9309 (=> (not res!7661) (not e!4921))))

(assert (=> b!9309 (= res!7661 (Q!0 (select (arr!290 f!79) (bvadd i!190 #b00000000000000000000000000000100))))))

(declare-fun b!9310 () Bool)

(declare-fun res!7662 () Bool)

(assert (=> b!9310 (=> (not res!7662) (not e!4921))))

(assert (=> b!9310 (= res!7662 (Q!0 (select (arr!290 f!79) i!190)))))

(declare-fun b!9311 () Bool)

(declare-fun res!7669 () Bool)

(assert (=> b!9311 (=> (not res!7669) (not e!4921))))

(assert (=> b!9311 (= res!7669 (Q!0 (select (arr!290 f!79) (bvadd i!190 #b00000000000000000000000000000001))))))

(declare-fun b!9312 () Bool)

(declare-fun res!7663 () Bool)

(assert (=> b!9312 (=> (not res!7663) (not e!4921))))

(assert (=> b!9312 (= res!7663 (Q!0 (select (arr!290 f!79) (bvadd i!190 #b00000000000000000000000000000010))))))

(declare-fun b!9313 () Bool)

(declare-fun res!7667 () Bool)

(assert (=> b!9313 (=> (not res!7667) (not e!4921))))

(declare-fun P!3 ((_ FloatingPoint 11 53)) Bool)

(assert (=> b!9313 (= res!7667 (P!3 (select (store (arr!290 q!51) i!190 (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven (select (arr!290 xx!50) #b00000000000000000000000000000000) (select (arr!290 f!79) (bvadd i!190 #b00000000000000000000000000000100))) (fp.mul roundNearestTiesToEven (select (arr!290 xx!50) #b00000000000000000000000000000001) (select (arr!290 f!79) (bvadd i!190 #b00000000000000000000000000000011)))) (fp.mul roundNearestTiesToEven (select (arr!290 xx!50) #b00000000000000000000000000000010) (select (arr!290 f!79) (bvadd i!190 #b00000000000000000000000000000010)))) (fp.mul roundNearestTiesToEven (select (arr!290 xx!50) #b00000000000000000000000000000011) (select (arr!290 f!79) (bvadd i!190 #b00000000000000000000000000000001)))) (fp.mul roundNearestTiesToEven (select (arr!290 xx!50) #b00000000000000000000000000000100) (select (arr!290 f!79) i!190)))) i!190)))))

(declare-fun b!9314 () Bool)

(assert (=> b!9314 (= e!4920 e!4924)))

(declare-fun res!7664 () Bool)

(assert (=> b!9314 (=> (not res!7664) (not e!4924))))

(declare-fun lt!4500 () (_ BitVec 32))

(assert (=> b!9314 (= res!7664 (= (bvsub e!19 (bvmul #b00000000000000000000000000011000 (bvadd (ite (bvslt lt!4500 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!4500) #b00000000000000000000000000000001))) #b00000000000000000000000000000000))))

(assert (=> b!9314 (= lt!4500 (bvsdiv (bvsub e!19 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(declare-fun b!9315 () Bool)

(declare-fun res!7670 () Bool)

(assert (=> b!9315 (=> (not res!7670) (not e!4920))))

(declare-fun xxInv!0 (array!670) Bool)

(assert (=> b!9315 (= res!7670 (xxInv!0 xx!50))))

(declare-fun b!9316 () Bool)

(declare-fun timesTwoOverPiWhile!0 ((_ BitVec 32) (_ BitVec 32) array!670 (_ BitVec 32) array!670) tuple3!174)

(assert (=> b!9316 (= e!4926 (timesTwoOverPiWhile!0 e!19 jz!36 xx!50 lt!4501 lt!4499))))

(assert (= (and start!1765 res!7673) b!9315))

(assert (= (and b!9315 res!7670) b!9314))

(assert (= (and b!9314 res!7664) b!9308))

(assert (= (and b!9308 c!1027) b!9316))

(assert (= (and b!9308 (not c!1027)) b!9302))

(assert (= (and b!9308 res!7671) b!9306))

(assert (= (and b!9306 res!7666) b!9304))

(assert (= (and b!9304 res!7668) b!9305))

(assert (= (and b!9305 res!7665) b!9309))

(assert (= (and b!9309 res!7661) b!9307))

(assert (= (and b!9307 res!7672) b!9312))

(assert (= (and b!9312 res!7663) b!9311))

(assert (= (and b!9311 res!7669) b!9310))

(assert (= (and b!9310 res!7662) b!9313))

(assert (= (and b!9313 res!7667) b!9303))

(declare-fun m!16759 () Bool)

(assert (=> b!9304 m!16759))

(declare-fun m!16761 () Bool)

(assert (=> b!9309 m!16761))

(assert (=> b!9309 m!16761))

(declare-fun m!16763 () Bool)

(assert (=> b!9309 m!16763))

(declare-fun m!16765 () Bool)

(assert (=> b!9315 m!16765))

(declare-fun m!16767 () Bool)

(assert (=> b!9310 m!16767))

(assert (=> b!9310 m!16767))

(declare-fun m!16769 () Bool)

(assert (=> b!9310 m!16769))

(declare-fun m!16771 () Bool)

(assert (=> b!9316 m!16771))

(declare-fun m!16773 () Bool)

(assert (=> start!1765 m!16773))

(declare-fun m!16775 () Bool)

(assert (=> start!1765 m!16775))

(declare-fun m!16777 () Bool)

(assert (=> start!1765 m!16777))

(declare-fun m!16779 () Bool)

(assert (=> b!9307 m!16779))

(assert (=> b!9307 m!16779))

(declare-fun m!16781 () Bool)

(assert (=> b!9307 m!16781))

(declare-fun m!16783 () Bool)

(assert (=> b!9306 m!16783))

(declare-fun m!16785 () Bool)

(assert (=> b!9312 m!16785))

(assert (=> b!9312 m!16785))

(declare-fun m!16787 () Bool)

(assert (=> b!9312 m!16787))

(declare-fun m!16789 () Bool)

(assert (=> b!9311 m!16789))

(assert (=> b!9311 m!16789))

(declare-fun m!16791 () Bool)

(assert (=> b!9311 m!16791))

(declare-fun m!16793 () Bool)

(assert (=> b!9313 m!16793))

(declare-fun m!16795 () Bool)

(assert (=> b!9313 m!16795))

(assert (=> b!9313 m!16761))

(assert (=> b!9313 m!16779))

(assert (=> b!9313 m!16785))

(assert (=> b!9313 m!16789))

(declare-fun m!16797 () Bool)

(assert (=> b!9313 m!16797))

(declare-fun m!16799 () Bool)

(assert (=> b!9313 m!16799))

(assert (=> b!9313 m!16793))

(declare-fun m!16801 () Bool)

(assert (=> b!9313 m!16801))

(assert (=> b!9313 m!16767))

(declare-fun m!16803 () Bool)

(assert (=> b!9313 m!16803))

(declare-fun m!16805 () Bool)

(assert (=> b!9313 m!16805))

(declare-fun m!16807 () Bool)

(assert (=> b!9313 m!16807))

(push 1)

(assert (not b!9315))

(assert (not b!9312))

(assert (not b!9309))

(assert (not b!9313))

(assert (not b!9316))

(assert (not b!9307))

(assert (not start!1765))

(assert (not b!9304))

(assert (not b!9306))

(assert (not b!9311))

(assert (not b!9310))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

