; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!1705 () Bool)

(assert start!1705)

(declare-fun b!8967 () Bool)

(declare-fun e!4722 () Bool)

(declare-fun e!4721 () Bool)

(assert (=> b!8967 (= e!4722 e!4721)))

(declare-fun res!7387 () Bool)

(assert (=> b!8967 (=> (not res!7387) (not e!4721))))

(declare-fun e!19 () (_ BitVec 32))

(declare-fun lt!4352 () (_ BitVec 32))

(assert (=> b!8967 (= res!7387 (= (bvsub e!19 (bvmul #b00000000000000000000000000011000 (bvadd (ite (bvslt lt!4352 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!4352) #b00000000000000000000000000000001))) #b00000000000000000000000000000000))))

(assert (=> b!8967 (= lt!4352 (bvsdiv (bvsub e!19 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(declare-fun b!8968 () Bool)

(declare-fun res!7389 () Bool)

(declare-fun e!4720 () Bool)

(assert (=> b!8968 (=> (not res!7389) (not e!4720))))

(declare-datatypes ((array!654 0))(
  ( (array!655 (arr!284 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!284 (_ BitVec 32))) )
))
(declare-fun f!79 () array!654)

(declare-fun fInv!0 (array!654) Bool)

(assert (=> b!8968 (= res!7389 (fInv!0 f!79))))

(declare-fun lt!4350 () (_ BitVec 32))

(declare-fun jz!36 () (_ BitVec 32))

(declare-datatypes ((Unit!633 0))(
  ( (Unit!634) )
))
(declare-datatypes ((tuple3!162 0))(
  ( (tuple3!163 (_1!215 Unit!633) (_2!215 (_ BitVec 32)) (_3!181 array!654)) )
))
(declare-fun e!4724 () tuple3!162)

(declare-fun lt!4349 () array!654)

(declare-fun b!8969 () Bool)

(declare-fun xx!50 () array!654)

(declare-fun timesTwoOverPiWhile!0 ((_ BitVec 32) (_ BitVec 32) array!654 (_ BitVec 32) array!654) tuple3!162)

(assert (=> b!8969 (= e!4724 (timesTwoOverPiWhile!0 e!19 jz!36 xx!50 lt!4350 lt!4349))))

(declare-fun b!8970 () Bool)

(declare-fun Unit!635 () Unit!633)

(assert (=> b!8970 (= e!4724 (tuple3!163 Unit!635 lt!4350 lt!4349))))

(declare-fun b!8971 () Bool)

(declare-fun res!7393 () Bool)

(assert (=> b!8971 (=> (not res!7393) (not e!4720))))

(declare-fun i!190 () (_ BitVec 32))

(declare-fun Q!0 ((_ FloatingPoint 11 53)) Bool)

(assert (=> b!8971 (= res!7393 (Q!0 (select (arr!284 f!79) (bvadd i!190 #b00000000000000000000000000000011))))))

(declare-fun b!8972 () Bool)

(assert (=> b!8972 (= e!4720 (and (= (bvand i!190 #b10000000000000000000000000000000) #b00000000000000000000000000000000) (not (= (bvand i!190 #b10000000000000000000000000000000) (bvand (bvadd i!190 #b00000000000000000000000000000010) #b10000000000000000000000000000000)))))))

(declare-fun b!8973 () Bool)

(declare-fun res!7392 () Bool)

(assert (=> b!8973 (=> (not res!7392) (not e!4720))))

(assert (=> b!8973 (= res!7392 (bvsle i!190 jz!36))))

(declare-fun b!8974 () Bool)

(declare-fun res!7386 () Bool)

(assert (=> b!8974 (=> (not res!7386) (not e!4722))))

(declare-fun xxInv!0 (array!654) Bool)

(assert (=> b!8974 (= res!7386 (xxInv!0 xx!50))))

(declare-fun b!8975 () Bool)

(assert (=> b!8975 (= e!4721 e!4720)))

(declare-fun res!7394 () Bool)

(assert (=> b!8975 (=> (not res!7394) (not e!4720))))

(assert (=> b!8975 (= res!7394 (and (bvsle #b00000000000000000000000000000000 i!190) (bvsle i!190 (bvadd jz!36 #b00000000000000000000000000000001))))))

(declare-fun lt!4351 () tuple3!162)

(assert (=> b!8975 (= lt!4351 e!4724)))

(declare-fun c!997 () Bool)

(assert (=> b!8975 (= c!997 (bvsle lt!4350 (bvadd (bvsub (size!284 xx!50) #b00000000000000000000000000000001) jz!36)))))

(assert (=> b!8975 (= lt!4350 #b00000000000000000000000000000000)))

(assert (=> b!8975 (= lt!4349 (array!655 ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000010100))))

(declare-fun res!7388 () Bool)

(assert (=> start!1705 (=> (not res!7388) (not e!4722))))

(assert (=> start!1705 (= res!7388 (and (bvsle #b00000000000000000000000000000000 jz!36) (bvsle jz!36 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!19) (bvsle e!19 #b00000000000000000000001111110000) (= (bvsrem e!19 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1705 e!4722))

(declare-fun array_inv!234 (array!654) Bool)

(assert (=> start!1705 (array_inv!234 f!79)))

(declare-fun q!51 () array!654)

(assert (=> start!1705 (array_inv!234 q!51)))

(assert (=> start!1705 true))

(assert (=> start!1705 (array_inv!234 xx!50)))

(declare-fun b!8976 () Bool)

(declare-fun res!7391 () Bool)

(assert (=> b!8976 (=> (not res!7391) (not e!4720))))

(declare-fun qInv!0 (array!654) Bool)

(assert (=> b!8976 (= res!7391 (qInv!0 q!51))))

(declare-fun b!8977 () Bool)

(declare-fun res!7390 () Bool)

(assert (=> b!8977 (=> (not res!7390) (not e!4720))))

(assert (=> b!8977 (= res!7390 (Q!0 (select (arr!284 f!79) (bvadd i!190 #b00000000000000000000000000000100))))))

(assert (= (and start!1705 res!7388) b!8974))

(assert (= (and b!8974 res!7386) b!8967))

(assert (= (and b!8967 res!7387) b!8975))

(assert (= (and b!8975 c!997) b!8969))

(assert (= (and b!8975 (not c!997)) b!8970))

(assert (= (and b!8975 res!7394) b!8968))

(assert (= (and b!8968 res!7389) b!8976))

(assert (= (and b!8976 res!7391) b!8973))

(assert (= (and b!8973 res!7392) b!8977))

(assert (= (and b!8977 res!7390) b!8971))

(assert (= (and b!8971 res!7393) b!8972))

(declare-fun m!16535 () Bool)

(assert (=> b!8968 m!16535))

(declare-fun m!16537 () Bool)

(assert (=> b!8977 m!16537))

(assert (=> b!8977 m!16537))

(declare-fun m!16539 () Bool)

(assert (=> b!8977 m!16539))

(declare-fun m!16541 () Bool)

(assert (=> b!8974 m!16541))

(declare-fun m!16543 () Bool)

(assert (=> b!8976 m!16543))

(declare-fun m!16545 () Bool)

(assert (=> start!1705 m!16545))

(declare-fun m!16547 () Bool)

(assert (=> start!1705 m!16547))

(declare-fun m!16549 () Bool)

(assert (=> start!1705 m!16549))

(declare-fun m!16551 () Bool)

(assert (=> b!8969 m!16551))

(declare-fun m!16553 () Bool)

(assert (=> b!8971 m!16553))

(assert (=> b!8971 m!16553))

(declare-fun m!16555 () Bool)

(assert (=> b!8971 m!16555))

(push 1)

(assert (not b!8968))

(assert (not b!8974))

(assert (not b!8971))

(assert (not b!8976))

(assert (not start!1705))

(assert (not b!8969))

(assert (not b!8977))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

