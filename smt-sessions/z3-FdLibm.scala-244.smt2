; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1455 () Bool)

(assert start!1455)

(declare-fun b!7498 () Bool)

(declare-fun e!3879 () Bool)

(declare-fun e!3878 () Bool)

(assert (=> b!7498 (= e!3879 e!3878)))

(declare-fun res!6184 () Bool)

(assert (=> b!7498 (=> (not res!6184) (not e!3878))))

(declare-fun e!19 () (_ BitVec 32))

(declare-fun lt!3729 () (_ BitVec 32))

(assert (=> b!7498 (= res!6184 (= (bvsub e!19 (bvmul #b00000000000000000000000000011000 (bvadd (ite (bvslt lt!3729 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!3729) #b00000000000000000000000000000001))) #b00000000000000000000000000000000))))

(assert (=> b!7498 (= lt!3729 (bvsdiv (bvsub e!19 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(declare-fun b!7499 () Bool)

(declare-fun res!6180 () Bool)

(assert (=> b!7499 (=> (not res!6180) (not e!3879))))

(declare-datatypes ((array!590 0))(
  ( (array!591 (arr!262 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!262 (_ BitVec 32))) )
))
(declare-fun xx!50 () array!590)

(declare-fun xxInv!0 (array!590) Bool)

(assert (=> b!7499 (= res!6180 (xxInv!0 xx!50))))

(declare-fun res!6182 () Bool)

(assert (=> start!1455 (=> (not res!6182) (not e!3879))))

(declare-fun jz!36 () (_ BitVec 32))

(assert (=> start!1455 (= res!6182 (and (bvsle #b00000000000000000000000000000000 jz!36) (bvsle jz!36 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!19) (bvsle e!19 #b00000000000000000000001111110000) (= (bvsrem e!19 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1455 e!3879))

(declare-fun f!79 () array!590)

(declare-fun array_inv!212 (array!590) Bool)

(assert (=> start!1455 (array_inv!212 f!79)))

(declare-fun q!51 () array!590)

(assert (=> start!1455 (array_inv!212 q!51)))

(assert (=> start!1455 true))

(assert (=> start!1455 (array_inv!212 xx!50)))

(declare-fun b!7500 () Bool)

(declare-fun res!6183 () Bool)

(declare-fun e!3876 () Bool)

(assert (=> b!7500 (=> (not res!6183) (not e!3876))))

(declare-fun qInv!0 (array!590) Bool)

(assert (=> b!7500 (= res!6183 (qInv!0 q!51))))

(declare-fun b!7501 () Bool)

(declare-datatypes ((Unit!498 0))(
  ( (Unit!499) )
))
(declare-datatypes ((tuple3!118 0))(
  ( (tuple3!119 (_1!178 Unit!498) (_2!178 (_ BitVec 32)) (_3!159 array!590)) )
))
(declare-fun e!3874 () tuple3!118)

(declare-fun lt!3728 () (_ BitVec 32))

(declare-fun lt!3726 () array!590)

(declare-fun Unit!500 () Unit!498)

(assert (=> b!7501 (= e!3874 (tuple3!119 Unit!500 lt!3728 lt!3726))))

(declare-fun b!7502 () Bool)

(declare-fun timesTwoOverPiWhile!0 ((_ BitVec 32) (_ BitVec 32) array!590 (_ BitVec 32) array!590) tuple3!118)

(assert (=> b!7502 (= e!3874 (timesTwoOverPiWhile!0 e!19 jz!36 xx!50 lt!3728 lt!3726))))

(declare-fun b!7503 () Bool)

(declare-fun res!6181 () Bool)

(assert (=> b!7503 (=> (not res!6181) (not e!3876))))

(declare-fun fInv!0 (array!590) Bool)

(assert (=> b!7503 (= res!6181 (fInv!0 f!79))))

(declare-fun b!7504 () Bool)

(assert (=> b!7504 (= e!3878 e!3876)))

(declare-fun res!6179 () Bool)

(assert (=> b!7504 (=> (not res!6179) (not e!3876))))

(declare-fun i!190 () (_ BitVec 32))

(assert (=> b!7504 (= res!6179 (and (bvsle #b00000000000000000000000000000000 i!190) (bvsle i!190 (bvadd jz!36 #b00000000000000000000000000000001))))))

(declare-fun lt!3727 () tuple3!118)

(assert (=> b!7504 (= lt!3727 e!3874)))

(declare-fun c!866 () Bool)

(assert (=> b!7504 (= c!866 (bvsle lt!3728 (bvadd (bvsub (size!262 xx!50) #b00000000000000000000000000000001) jz!36)))))

(assert (=> b!7504 (= lt!3728 #b00000000000000000000000000000000)))

(assert (=> b!7504 (= lt!3726 (array!591 ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000010100))))

(declare-fun b!7505 () Bool)

(assert (=> b!7505 (= e!3876 (and (bvsle i!190 jz!36) (= (bvand jz!36 #b10000000000000000000000000000000) #b00000000000000000000000000000000) (not (= (bvand jz!36 #b10000000000000000000000000000000) (bvand (bvadd jz!36 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(assert (= (and start!1455 res!6182) b!7499))

(assert (= (and b!7499 res!6180) b!7498))

(assert (= (and b!7498 res!6184) b!7504))

(assert (= (and b!7504 c!866) b!7502))

(assert (= (and b!7504 (not c!866)) b!7501))

(assert (= (and b!7504 res!6179) b!7503))

(assert (= (and b!7503 res!6181) b!7500))

(assert (= (and b!7500 res!6183) b!7505))

(declare-fun m!13707 () Bool)

(assert (=> b!7500 m!13707))

(declare-fun m!13709 () Bool)

(assert (=> b!7499 m!13709))

(declare-fun m!13711 () Bool)

(assert (=> b!7502 m!13711))

(declare-fun m!13713 () Bool)

(assert (=> b!7503 m!13713))

(declare-fun m!13715 () Bool)

(assert (=> start!1455 m!13715))

(declare-fun m!13717 () Bool)

(assert (=> start!1455 m!13717))

(declare-fun m!13719 () Bool)

(assert (=> start!1455 m!13719))

(check-sat (not b!7499) (not b!7503) (not b!7500) (not start!1455) (not b!7502))
(check-sat)
