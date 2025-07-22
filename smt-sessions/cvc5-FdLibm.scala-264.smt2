; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!1689 () Bool)

(assert start!1689)

(declare-fun res!7317 () Bool)

(declare-fun e!4657 () Bool)

(assert (=> start!1689 (=> (not res!7317) (not e!4657))))

(declare-fun jz!36 () (_ BitVec 32))

(declare-fun e!19 () (_ BitVec 32))

(assert (=> start!1689 (= res!7317 (and (bvsle #b00000000000000000000000000000000 jz!36) (bvsle jz!36 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!19) (bvsle e!19 #b00000000000000000000001111110000) (= (bvsrem e!19 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1689 e!4657))

(declare-datatypes ((array!649 0))(
  ( (array!650 (arr!282 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!282 (_ BitVec 32))) )
))
(declare-fun f!79 () array!649)

(declare-fun array_inv!232 (array!649) Bool)

(assert (=> start!1689 (array_inv!232 f!79)))

(declare-fun q!51 () array!649)

(assert (=> start!1689 (array_inv!232 q!51)))

(assert (=> start!1689 true))

(declare-fun xx!50 () array!649)

(assert (=> start!1689 (array_inv!232 xx!50)))

(declare-fun b!8878 () Bool)

(declare-fun res!7315 () Bool)

(declare-fun e!4661 () Bool)

(assert (=> b!8878 (=> (not res!7315) (not e!4661))))

(declare-fun i!190 () (_ BitVec 32))

(assert (=> b!8878 (= res!7315 (bvsle i!190 jz!36))))

(declare-fun b!8879 () Bool)

(declare-fun lt!4307 () array!649)

(declare-datatypes ((Unit!624 0))(
  ( (Unit!625) )
))
(declare-datatypes ((tuple3!158 0))(
  ( (tuple3!159 (_1!212 Unit!624) (_2!212 (_ BitVec 32)) (_3!179 array!649)) )
))
(declare-fun e!4662 () tuple3!158)

(declare-fun lt!4304 () (_ BitVec 32))

(declare-fun timesTwoOverPiWhile!0 ((_ BitVec 32) (_ BitVec 32) array!649 (_ BitVec 32) array!649) tuple3!158)

(assert (=> b!8879 (= e!4662 (timesTwoOverPiWhile!0 e!19 jz!36 xx!50 lt!4304 lt!4307))))

(declare-fun b!8880 () Bool)

(declare-fun e!4663 () Bool)

(assert (=> b!8880 (= e!4663 e!4661)))

(declare-fun res!7316 () Bool)

(assert (=> b!8880 (=> (not res!7316) (not e!4661))))

(assert (=> b!8880 (= res!7316 (and (bvsle #b00000000000000000000000000000000 i!190) (bvsle i!190 (bvadd jz!36 #b00000000000000000000000000000001))))))

(declare-fun lt!4305 () tuple3!158)

(assert (=> b!8880 (= lt!4305 e!4662)))

(declare-fun c!988 () Bool)

(assert (=> b!8880 (= c!988 (bvsle lt!4304 (bvadd (bvsub (size!282 xx!50) #b00000000000000000000000000000001) jz!36)))))

(assert (=> b!8880 (= lt!4304 #b00000000000000000000000000000000)))

(assert (=> b!8880 (= lt!4307 (array!650 ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000010100))))

(declare-fun b!8881 () Bool)

(assert (=> b!8881 (= e!4657 e!4663)))

(declare-fun res!7320 () Bool)

(assert (=> b!8881 (=> (not res!7320) (not e!4663))))

(declare-fun lt!4306 () (_ BitVec 32))

(assert (=> b!8881 (= res!7320 (= (bvsub e!19 (bvmul #b00000000000000000000000000011000 (bvadd (ite (bvslt lt!4306 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!4306) #b00000000000000000000000000000001))) #b00000000000000000000000000000000))))

(assert (=> b!8881 (= lt!4306 (bvsdiv (bvsub e!19 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(declare-fun b!8882 () Bool)

(declare-fun res!7319 () Bool)

(assert (=> b!8882 (=> (not res!7319) (not e!4661))))

(declare-fun Q!0 ((_ FloatingPoint 11 53)) Bool)

(assert (=> b!8882 (= res!7319 (Q!0 (select (arr!282 f!79) (bvadd i!190 #b00000000000000000000000000000100))))))

(declare-fun b!8883 () Bool)

(assert (=> b!8883 (= e!4661 (and (= (bvand i!190 #b10000000000000000000000000000000) #b00000000000000000000000000000000) (not (= (bvand i!190 #b10000000000000000000000000000000) (bvand (bvadd i!190 #b00000000000000000000000000000011) #b10000000000000000000000000000000)))))))

(declare-fun b!8884 () Bool)

(declare-fun res!7321 () Bool)

(assert (=> b!8884 (=> (not res!7321) (not e!4661))))

(declare-fun fInv!0 (array!649) Bool)

(assert (=> b!8884 (= res!7321 (fInv!0 f!79))))

(declare-fun b!8885 () Bool)

(declare-fun Unit!626 () Unit!624)

(assert (=> b!8885 (= e!4662 (tuple3!159 Unit!626 lt!4304 lt!4307))))

(declare-fun b!8886 () Bool)

(declare-fun res!7322 () Bool)

(assert (=> b!8886 (=> (not res!7322) (not e!4657))))

(declare-fun xxInv!0 (array!649) Bool)

(assert (=> b!8886 (= res!7322 (xxInv!0 xx!50))))

(declare-fun b!8887 () Bool)

(declare-fun res!7318 () Bool)

(assert (=> b!8887 (=> (not res!7318) (not e!4661))))

(declare-fun qInv!0 (array!649) Bool)

(assert (=> b!8887 (= res!7318 (qInv!0 q!51))))

(assert (= (and start!1689 res!7317) b!8886))

(assert (= (and b!8886 res!7322) b!8881))

(assert (= (and b!8881 res!7320) b!8880))

(assert (= (and b!8880 c!988) b!8879))

(assert (= (and b!8880 (not c!988)) b!8885))

(assert (= (and b!8880 res!7316) b!8884))

(assert (= (and b!8884 res!7321) b!8887))

(assert (= (and b!8887 res!7318) b!8878))

(assert (= (and b!8878 res!7315) b!8882))

(assert (= (and b!8882 res!7319) b!8883))

(declare-fun m!16483 () Bool)

(assert (=> b!8884 m!16483))

(declare-fun m!16485 () Bool)

(assert (=> start!1689 m!16485))

(declare-fun m!16487 () Bool)

(assert (=> start!1689 m!16487))

(declare-fun m!16489 () Bool)

(assert (=> start!1689 m!16489))

(declare-fun m!16491 () Bool)

(assert (=> b!8887 m!16491))

(declare-fun m!16493 () Bool)

(assert (=> b!8886 m!16493))

(declare-fun m!16495 () Bool)

(assert (=> b!8882 m!16495))

(assert (=> b!8882 m!16495))

(declare-fun m!16497 () Bool)

(assert (=> b!8882 m!16497))

(declare-fun m!16499 () Bool)

(assert (=> b!8879 m!16499))

(push 1)

(assert (not b!8879))

(assert (not b!8884))

(assert (not b!8882))

(assert (not start!1689))

(assert (not b!8886))

(assert (not b!8887))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

