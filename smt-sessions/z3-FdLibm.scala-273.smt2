; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1667 () Bool)

(assert start!1667)

(declare-fun b!8413 () Bool)

(declare-fun res!6856 () Bool)

(declare-fun e!4745 () Bool)

(assert (=> b!8413 (=> (not res!6856) (not e!4745))))

(declare-datatypes ((array!662 0))(
  ( (array!663 (arr!291 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!291 (_ BitVec 32))) )
))
(declare-fun f!79 () array!662)

(declare-fun q!51 () array!662)

(declare-fun i!190 () (_ BitVec 32))

(declare-fun xx!50 () array!662)

(declare-fun P!3 ((_ FloatingPoint 11 53)) Bool)

(assert (=> b!8413 (= res!6856 (P!3 (select (store (arr!291 q!51) i!190 (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven (select (arr!291 xx!50) #b00000000000000000000000000000000) (select (arr!291 f!79) (bvadd i!190 #b00000000000000000000000000000100))) (fp.mul roundNearestTiesToEven (select (arr!291 xx!50) #b00000000000000000000000000000001) (select (arr!291 f!79) (bvadd i!190 #b00000000000000000000000000000011)))) (fp.mul roundNearestTiesToEven (select (arr!291 xx!50) #b00000000000000000000000000000010) (select (arr!291 f!79) (bvadd i!190 #b00000000000000000000000000000010)))) (fp.mul roundNearestTiesToEven (select (arr!291 xx!50) #b00000000000000000000000000000011) (select (arr!291 f!79) (bvadd i!190 #b00000000000000000000000000000001)))) (fp.mul roundNearestTiesToEven (select (arr!291 xx!50) #b00000000000000000000000000000100) (select (arr!291 f!79) i!190)))) i!190)))))

(declare-fun b!8415 () Bool)

(declare-fun res!6848 () Bool)

(assert (=> b!8415 (=> (not res!6848) (not e!4745))))

(declare-fun Q!0 ((_ FloatingPoint 11 53)) Bool)

(assert (=> b!8415 (= res!6848 (Q!0 (select (arr!291 f!79) (bvadd i!190 #b00000000000000000000000000000100))))))

(declare-fun b!8416 () Bool)

(declare-fun e!19 () (_ BitVec 32))

(declare-fun jz!36 () (_ BitVec 32))

(declare-fun lt!4327 () array!662)

(declare-datatypes ((Unit!621 0))(
  ( (Unit!622) )
))
(declare-datatypes ((tuple3!176 0))(
  ( (tuple3!177 (_1!224 Unit!621) (_2!224 (_ BitVec 32)) (_3!188 array!662)) )
))
(declare-fun e!4743 () tuple3!176)

(declare-fun lt!4332 () (_ BitVec 32))

(declare-fun timesTwoOverPiWhile!0 ((_ BitVec 32) (_ BitVec 32) array!662 (_ BitVec 32) array!662) tuple3!176)

(assert (=> b!8416 (= e!4743 (timesTwoOverPiWhile!0 e!19 jz!36 xx!50 lt!4332 lt!4327))))

(declare-fun b!8417 () Bool)

(declare-fun e!4742 () Bool)

(assert (=> b!8417 (= e!4742 e!4745)))

(declare-fun res!6849 () Bool)

(assert (=> b!8417 (=> (not res!6849) (not e!4745))))

(assert (=> b!8417 (= res!6849 (and (bvsle #b00000000000000000000000000000000 i!190) (bvsle i!190 (bvadd jz!36 #b00000000000000000000000000000001))))))

(declare-fun lt!4328 () tuple3!176)

(assert (=> b!8417 (= lt!4328 e!4743)))

(declare-fun c!992 () Bool)

(assert (=> b!8417 (= c!992 (bvsle lt!4332 (bvadd (bvsub (size!291 xx!50) #b00000000000000000000000000000001) jz!36)))))

(assert (=> b!8417 (= lt!4332 #b00000000000000000000000000000000)))

(assert (=> b!8417 (= lt!4327 (array!663 ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000010100))))

(declare-fun b!8418 () Bool)

(declare-fun res!6857 () Bool)

(assert (=> b!8418 (=> (not res!6857) (not e!4745))))

(assert (=> b!8418 (= res!6857 (Q!0 (select (arr!291 f!79) (bvadd i!190 #b00000000000000000000000000000011))))))

(declare-fun b!8419 () Bool)

(declare-fun res!6846 () Bool)

(assert (=> b!8419 (=> (not res!6846) (not e!4745))))

(assert (=> b!8419 (= res!6846 (Q!0 (select (arr!291 f!79) (bvadd i!190 #b00000000000000000000000000000010))))))

(declare-fun b!8420 () Bool)

(declare-fun Unit!623 () Unit!621)

(assert (=> b!8420 (= e!4743 (tuple3!177 Unit!623 lt!4332 lt!4327))))

(declare-fun b!8421 () Bool)

(declare-fun res!6853 () Bool)

(assert (=> b!8421 (=> (not res!6853) (not e!4745))))

(assert (=> b!8421 (= res!6853 (Q!0 (select (arr!291 f!79) i!190)))))

(declare-fun e!4738 () tuple3!176)

(declare-fun lt!4326 () array!662)

(declare-fun b!8422 () Bool)

(declare-fun lt!4331 () (_ BitVec 32))

(assert (=> b!8422 (= e!4738 (timesTwoOverPiWhile!0 e!19 jz!36 xx!50 lt!4331 lt!4326))))

(declare-fun b!8423 () Bool)

(declare-fun res!6850 () Bool)

(assert (=> b!8423 (=> (not res!6850) (not e!4745))))

(assert (=> b!8423 (= res!6850 (bvsle i!190 jz!36))))

(declare-fun b!8424 () Bool)

(declare-fun res!6844 () Bool)

(assert (=> b!8424 (=> (not res!6844) (not e!4745))))

(declare-fun fInv!0 (array!662) Bool)

(assert (=> b!8424 (= res!6844 (fInv!0 f!79))))

(declare-fun b!8425 () Bool)

(declare-fun res!6845 () Bool)

(assert (=> b!8425 (=> (not res!6845) (not e!4745))))

(assert (=> b!8425 (= res!6845 (Q!0 (select (arr!291 f!79) (bvadd i!190 #b00000000000000000000000000000001))))))

(declare-fun b!8426 () Bool)

(declare-fun res!6854 () Bool)

(declare-fun e!4744 () Bool)

(assert (=> b!8426 (=> (not res!6854) (not e!4744))))

(declare-fun xxInv!0 (array!662) Bool)

(assert (=> b!8426 (= res!6854 (xxInv!0 xx!50))))

(declare-fun b!8427 () Bool)

(assert (=> b!8427 (= e!4744 e!4742)))

(declare-fun res!6851 () Bool)

(assert (=> b!8427 (=> (not res!6851) (not e!4742))))

(declare-fun lt!4330 () (_ BitVec 32))

(assert (=> b!8427 (= res!6851 (= (bvsub e!19 (bvmul #b00000000000000000000000000011000 (bvadd (ite (bvslt lt!4330 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!4330) #b00000000000000000000000000000001))) #b00000000000000000000000000000000))))

(assert (=> b!8427 (= lt!4330 (bvsdiv (bvsub e!19 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(declare-fun e!4739 () Bool)

(declare-fun b!8428 () Bool)

(declare-fun lt!4329 () (_ BitVec 32))

(assert (=> b!8428 (= e!4739 (bvsge (bvsub (bvadd jz!36 #b00000000000000000000000000000001) lt!4329) (bvsub (bvadd jz!36 #b00000000000000000000000000000001) i!190)))))

(declare-fun lt!4325 () tuple3!176)

(assert (=> b!8428 (= lt!4325 e!4738)))

(declare-fun c!991 () Bool)

(assert (=> b!8428 (= c!991 (bvsle lt!4331 (bvadd (bvsub (size!291 xx!50) #b00000000000000000000000000000001) jz!36)))))

(assert (=> b!8428 (= lt!4331 #b00000000000000000000000000000000)))

(assert (=> b!8428 (= lt!4326 (array!663 ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000010100))))

(declare-fun res!6852 () Bool)

(assert (=> start!1667 (=> (not res!6852) (not e!4744))))

(assert (=> start!1667 (= res!6852 (and (bvsle #b00000000000000000000000000000000 jz!36) (bvsle jz!36 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!19) (bvsle e!19 #b00000000000000000000001111110000) (= (bvsrem e!19 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1667 e!4744))

(declare-fun array_inv!241 (array!662) Bool)

(assert (=> start!1667 (array_inv!241 f!79)))

(assert (=> start!1667 (array_inv!241 q!51)))

(assert (=> start!1667 true))

(assert (=> start!1667 (array_inv!241 xx!50)))

(declare-fun b!8414 () Bool)

(declare-fun Unit!624 () Unit!621)

(assert (=> b!8414 (= e!4738 (tuple3!177 Unit!624 lt!4331 lt!4326))))

(declare-fun b!8429 () Bool)

(assert (=> b!8429 (= e!4745 e!4739)))

(declare-fun res!6855 () Bool)

(assert (=> b!8429 (=> (not res!6855) (not e!4739))))

(assert (=> b!8429 (= res!6855 (bvsle lt!4329 jz!36))))

(assert (=> b!8429 (= lt!4329 (bvadd i!190 #b00000000000000000000000000000001))))

(declare-fun b!8430 () Bool)

(declare-fun res!6847 () Bool)

(assert (=> b!8430 (=> (not res!6847) (not e!4745))))

(declare-fun qInv!0 (array!662) Bool)

(assert (=> b!8430 (= res!6847 (qInv!0 q!51))))

(assert (= (and start!1667 res!6852) b!8426))

(assert (= (and b!8426 res!6854) b!8427))

(assert (= (and b!8427 res!6851) b!8417))

(assert (= (and b!8417 c!992) b!8416))

(assert (= (and b!8417 (not c!992)) b!8420))

(assert (= (and b!8417 res!6849) b!8424))

(assert (= (and b!8424 res!6844) b!8430))

(assert (= (and b!8430 res!6847) b!8423))

(assert (= (and b!8423 res!6850) b!8415))

(assert (= (and b!8415 res!6848) b!8418))

(assert (= (and b!8418 res!6857) b!8419))

(assert (= (and b!8419 res!6846) b!8425))

(assert (= (and b!8425 res!6845) b!8421))

(assert (= (and b!8421 res!6853) b!8413))

(assert (= (and b!8413 res!6856) b!8429))

(assert (= (and b!8429 res!6855) b!8428))

(assert (= (and b!8428 c!991) b!8422))

(assert (= (and b!8428 (not c!991)) b!8414))

(declare-fun m!12681 () Bool)

(assert (=> b!8416 m!12681))

(declare-fun m!12683 () Bool)

(assert (=> b!8426 m!12683))

(declare-fun m!12685 () Bool)

(assert (=> b!8425 m!12685))

(assert (=> b!8425 m!12685))

(declare-fun m!12687 () Bool)

(assert (=> b!8425 m!12687))

(declare-fun m!12689 () Bool)

(assert (=> b!8421 m!12689))

(assert (=> b!8421 m!12689))

(declare-fun m!12691 () Bool)

(assert (=> b!8421 m!12691))

(declare-fun m!12693 () Bool)

(assert (=> b!8430 m!12693))

(declare-fun m!12695 () Bool)

(assert (=> b!8413 m!12695))

(declare-fun m!12697 () Bool)

(assert (=> b!8413 m!12697))

(declare-fun m!12699 () Bool)

(assert (=> b!8413 m!12699))

(assert (=> b!8413 m!12685))

(declare-fun m!12701 () Bool)

(assert (=> b!8413 m!12701))

(declare-fun m!12703 () Bool)

(assert (=> b!8413 m!12703))

(declare-fun m!12705 () Bool)

(assert (=> b!8413 m!12705))

(declare-fun m!12707 () Bool)

(assert (=> b!8413 m!12707))

(assert (=> b!8413 m!12703))

(declare-fun m!12709 () Bool)

(assert (=> b!8413 m!12709))

(assert (=> b!8413 m!12689))

(declare-fun m!12711 () Bool)

(assert (=> b!8413 m!12711))

(declare-fun m!12713 () Bool)

(assert (=> b!8413 m!12713))

(declare-fun m!12715 () Bool)

(assert (=> b!8413 m!12715))

(declare-fun m!12717 () Bool)

(assert (=> b!8422 m!12717))

(assert (=> b!8415 m!12695))

(assert (=> b!8415 m!12695))

(declare-fun m!12719 () Bool)

(assert (=> b!8415 m!12719))

(assert (=> b!8418 m!12697))

(assert (=> b!8418 m!12697))

(declare-fun m!12721 () Bool)

(assert (=> b!8418 m!12721))

(declare-fun m!12723 () Bool)

(assert (=> start!1667 m!12723))

(declare-fun m!12725 () Bool)

(assert (=> start!1667 m!12725))

(declare-fun m!12727 () Bool)

(assert (=> start!1667 m!12727))

(declare-fun m!12729 () Bool)

(assert (=> b!8424 m!12729))

(assert (=> b!8419 m!12699))

(assert (=> b!8419 m!12699))

(declare-fun m!12731 () Bool)

(assert (=> b!8419 m!12731))

(check-sat (not start!1667) (not b!8413) (not b!8422) (not b!8416) (not b!8421) (not b!8426) (not b!8424) (not b!8419) (not b!8415) (not b!8425) (not b!8430) (not b!8418))
(check-sat)
