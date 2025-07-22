; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1605 () Bool)

(assert start!1605)

(declare-fun b!8027 () Bool)

(declare-fun res!6529 () Bool)

(declare-fun e!4513 () Bool)

(assert (=> b!8027 (=> (not res!6529) (not e!4513))))

(declare-fun i!190 () (_ BitVec 32))

(declare-fun jz!36 () (_ BitVec 32))

(assert (=> b!8027 (= res!6529 (bvsle i!190 jz!36))))

(declare-fun b!8028 () Bool)

(declare-fun res!6528 () Bool)

(assert (=> b!8028 (=> (not res!6528) (not e!4513))))

(declare-datatypes ((array!644 0))(
  ( (array!645 (arr!284 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!284 (_ BitVec 32))) )
))
(declare-fun f!79 () array!644)

(declare-fun Q!0 ((_ FloatingPoint 11 53)) Bool)

(assert (=> b!8028 (= res!6528 (Q!0 (select (arr!284 f!79) (bvadd i!190 #b00000000000000000000000000000011))))))

(declare-fun b!8029 () Bool)

(declare-fun e!4511 () Bool)

(declare-fun e!4512 () Bool)

(assert (=> b!8029 (= e!4511 e!4512)))

(declare-fun res!6530 () Bool)

(assert (=> b!8029 (=> (not res!6530) (not e!4512))))

(declare-fun e!19 () (_ BitVec 32))

(declare-fun lt!4155 () (_ BitVec 32))

(assert (=> b!8029 (= res!6530 (= (bvsub e!19 (bvmul #b00000000000000000000000000011000 (bvadd (ite (bvslt lt!4155 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!4155) #b00000000000000000000000000000001))) #b00000000000000000000000000000000))))

(assert (=> b!8029 (= lt!4155 (bvsdiv (bvsub e!19 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(declare-fun b!8030 () Bool)

(declare-fun res!6536 () Bool)

(assert (=> b!8030 (=> (not res!6536) (not e!4511))))

(declare-fun xx!50 () array!644)

(declare-fun xxInv!0 (array!644) Bool)

(assert (=> b!8030 (= res!6536 (xxInv!0 xx!50))))

(declare-fun lt!4157 () array!644)

(declare-fun lt!4158 () (_ BitVec 32))

(declare-datatypes ((Unit!588 0))(
  ( (Unit!589) )
))
(declare-datatypes ((tuple3!162 0))(
  ( (tuple3!163 (_1!213 Unit!588) (_2!213 (_ BitVec 32)) (_3!181 array!644)) )
))
(declare-fun e!4515 () tuple3!162)

(declare-fun b!8031 () Bool)

(declare-fun timesTwoOverPiWhile!0 ((_ BitVec 32) (_ BitVec 32) array!644 (_ BitVec 32) array!644) tuple3!162)

(assert (=> b!8031 (= e!4515 (timesTwoOverPiWhile!0 e!19 jz!36 xx!50 lt!4158 lt!4157))))

(declare-fun b!8032 () Bool)

(declare-fun res!6531 () Bool)

(assert (=> b!8032 (=> (not res!6531) (not e!4513))))

(declare-fun fInv!0 (array!644) Bool)

(assert (=> b!8032 (= res!6531 (fInv!0 f!79))))

(declare-fun b!8033 () Bool)

(declare-fun res!6534 () Bool)

(assert (=> b!8033 (=> (not res!6534) (not e!4513))))

(assert (=> b!8033 (= res!6534 (Q!0 (select (arr!284 f!79) (bvadd i!190 #b00000000000000000000000000000100))))))

(declare-fun res!6535 () Bool)

(assert (=> start!1605 (=> (not res!6535) (not e!4511))))

(assert (=> start!1605 (= res!6535 (and (bvsle #b00000000000000000000000000000000 jz!36) (bvsle jz!36 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!19) (bvsle e!19 #b00000000000000000000001111110000) (= (bvsrem e!19 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1605 e!4511))

(declare-fun array_inv!234 (array!644) Bool)

(assert (=> start!1605 (array_inv!234 f!79)))

(declare-fun q!51 () array!644)

(assert (=> start!1605 (array_inv!234 q!51)))

(assert (=> start!1605 true))

(assert (=> start!1605 (array_inv!234 xx!50)))

(declare-fun b!8034 () Bool)

(assert (=> b!8034 (= e!4513 (and (= (bvand i!190 #b10000000000000000000000000000000) #b00000000000000000000000000000000) (not (= (bvand i!190 #b10000000000000000000000000000000) (bvand (bvadd i!190 #b00000000000000000000000000000010) #b10000000000000000000000000000000)))))))

(declare-fun b!8035 () Bool)

(assert (=> b!8035 (= e!4512 e!4513)))

(declare-fun res!6532 () Bool)

(assert (=> b!8035 (=> (not res!6532) (not e!4513))))

(assert (=> b!8035 (= res!6532 (and (bvsle #b00000000000000000000000000000000 i!190) (bvsle i!190 (bvadd jz!36 #b00000000000000000000000000000001))))))

(declare-fun lt!4156 () tuple3!162)

(assert (=> b!8035 (= lt!4156 e!4515)))

(declare-fun c!956 () Bool)

(assert (=> b!8035 (= c!956 (bvsle lt!4158 (bvadd (bvsub (size!284 xx!50) #b00000000000000000000000000000001) jz!36)))))

(assert (=> b!8035 (= lt!4158 #b00000000000000000000000000000000)))

(assert (=> b!8035 (= lt!4157 (array!645 ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000010100))))

(declare-fun b!8036 () Bool)

(declare-fun Unit!590 () Unit!588)

(assert (=> b!8036 (= e!4515 (tuple3!163 Unit!590 lt!4158 lt!4157))))

(declare-fun b!8037 () Bool)

(declare-fun res!6533 () Bool)

(assert (=> b!8037 (=> (not res!6533) (not e!4513))))

(declare-fun qInv!0 (array!644) Bool)

(assert (=> b!8037 (= res!6533 (qInv!0 q!51))))

(assert (= (and start!1605 res!6535) b!8030))

(assert (= (and b!8030 res!6536) b!8029))

(assert (= (and b!8029 res!6530) b!8035))

(assert (= (and b!8035 c!956) b!8031))

(assert (= (and b!8035 (not c!956)) b!8036))

(assert (= (and b!8035 res!6532) b!8032))

(assert (= (and b!8032 res!6531) b!8037))

(assert (= (and b!8037 res!6533) b!8027))

(assert (= (and b!8027 res!6529) b!8033))

(assert (= (and b!8033 res!6534) b!8028))

(assert (= (and b!8028 res!6528) b!8034))

(declare-fun m!12407 () Bool)

(assert (=> b!8028 m!12407))

(assert (=> b!8028 m!12407))

(declare-fun m!12409 () Bool)

(assert (=> b!8028 m!12409))

(declare-fun m!12411 () Bool)

(assert (=> b!8037 m!12411))

(declare-fun m!12413 () Bool)

(assert (=> b!8030 m!12413))

(declare-fun m!12415 () Bool)

(assert (=> b!8032 m!12415))

(declare-fun m!12417 () Bool)

(assert (=> b!8031 m!12417))

(declare-fun m!12419 () Bool)

(assert (=> start!1605 m!12419))

(declare-fun m!12421 () Bool)

(assert (=> start!1605 m!12421))

(declare-fun m!12423 () Bool)

(assert (=> start!1605 m!12423))

(declare-fun m!12425 () Bool)

(assert (=> b!8033 m!12425))

(assert (=> b!8033 m!12425))

(declare-fun m!12427 () Bool)

(assert (=> b!8033 m!12427))

(check-sat (not b!8032) (not b!8033) (not b!8031) (not b!8028) (not b!8030) (not start!1605) (not b!8037))
(check-sat)
