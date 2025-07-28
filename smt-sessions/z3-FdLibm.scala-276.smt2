; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1699 () Bool)

(assert start!1699)

(declare-fun b!8936 () Bool)

(declare-fun res!7320 () Bool)

(declare-fun e!4890 () Bool)

(assert (=> b!8936 (=> (not res!7320) (not e!4890))))

(declare-datatypes ((array!671 0))(
  ( (array!672 (arr!294 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!294 (_ BitVec 32))) )
))
(declare-fun f!79 () array!671)

(declare-fun q!51 () array!671)

(declare-fun i!190 () (_ BitVec 32))

(declare-fun xx!50 () array!671)

(declare-fun P!3 ((_ FloatingPoint 11 53)) Bool)

(assert (=> b!8936 (= res!7320 (P!3 (select (store (arr!294 q!51) i!190 (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven (select (arr!294 xx!50) #b00000000000000000000000000000000) (select (arr!294 f!79) (bvadd i!190 #b00000000000000000000000000000100))) (fp.mul roundNearestTiesToEven (select (arr!294 xx!50) #b00000000000000000000000000000001) (select (arr!294 f!79) (bvadd i!190 #b00000000000000000000000000000011)))) (fp.mul roundNearestTiesToEven (select (arr!294 xx!50) #b00000000000000000000000000000010) (select (arr!294 f!79) (bvadd i!190 #b00000000000000000000000000000010)))) (fp.mul roundNearestTiesToEven (select (arr!294 xx!50) #b00000000000000000000000000000011) (select (arr!294 f!79) (bvadd i!190 #b00000000000000000000000000000001)))) (fp.mul roundNearestTiesToEven (select (arr!294 xx!50) #b00000000000000000000000000000100) (select (arr!294 f!79) i!190)))) i!190)))))

(declare-fun b!8937 () Bool)

(declare-fun res!7327 () Bool)

(assert (=> b!8937 (=> (not res!7327) (not e!4890))))

(declare-fun Q!0 ((_ FloatingPoint 11 53)) Bool)

(assert (=> b!8937 (= res!7327 (Q!0 (select (arr!294 f!79) (bvadd i!190 #b00000000000000000000000000000010))))))

(declare-fun res!7324 () Bool)

(declare-fun e!4888 () Bool)

(assert (=> start!1699 (=> (not res!7324) (not e!4888))))

(declare-fun jz!36 () (_ BitVec 32))

(declare-fun e!19 () (_ BitVec 32))

(assert (=> start!1699 (= res!7324 (and (bvsle #b00000000000000000000000000000000 jz!36) (bvsle jz!36 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!19) (bvsle e!19 #b00000000000000000000001111110000) (= (bvsrem e!19 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1699 e!4888))

(declare-fun array_inv!244 (array!671) Bool)

(assert (=> start!1699 (array_inv!244 f!79)))

(assert (=> start!1699 (array_inv!244 q!51)))

(assert (=> start!1699 true))

(assert (=> start!1699 (array_inv!244 xx!50)))

(declare-fun b!8938 () Bool)

(declare-fun e!4892 () Bool)

(assert (=> b!8938 (= e!4890 e!4892)))

(declare-fun res!7318 () Bool)

(assert (=> b!8938 (=> (not res!7318) (not e!4892))))

(declare-fun lt!4450 () (_ BitVec 32))

(assert (=> b!8938 (= res!7318 (bvsle lt!4450 jz!36))))

(assert (=> b!8938 (= lt!4450 (bvadd i!190 #b00000000000000000000000000000001))))

(declare-fun b!8939 () Bool)

(declare-fun e!4887 () Bool)

(assert (=> b!8939 (= e!4887 e!4890)))

(declare-fun res!7325 () Bool)

(assert (=> b!8939 (=> (not res!7325) (not e!4890))))

(assert (=> b!8939 (= res!7325 (and (bvsle #b00000000000000000000000000000000 i!190) (bvsle i!190 (bvadd jz!36 #b00000000000000000000000000000001))))))

(declare-datatypes ((Unit!646 0))(
  ( (Unit!647) )
))
(declare-datatypes ((tuple3!182 0))(
  ( (tuple3!183 (_1!229 Unit!646) (_2!229 (_ BitVec 32)) (_3!193 array!671)) )
))
(declare-fun lt!4452 () tuple3!182)

(declare-fun e!4885 () tuple3!182)

(assert (=> b!8939 (= lt!4452 e!4885)))

(declare-fun c!1016 () Bool)

(declare-fun lt!4449 () (_ BitVec 32))

(assert (=> b!8939 (= c!1016 (bvsle lt!4449 (bvadd (bvsub (size!294 xx!50) #b00000000000000000000000000000001) jz!36)))))

(assert (=> b!8939 (= lt!4449 #b00000000000000000000000000000000)))

(declare-fun lt!4448 () array!671)

(assert (=> b!8939 (= lt!4448 (array!672 ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000010100))))

(declare-fun b!8940 () Bool)

(declare-fun res!7323 () Bool)

(assert (=> b!8940 (=> (not res!7323) (not e!4890))))

(assert (=> b!8940 (= res!7323 (Q!0 (select (arr!294 f!79) (bvadd i!190 #b00000000000000000000000000000100))))))

(declare-fun b!8941 () Bool)

(declare-fun res!7329 () Bool)

(assert (=> b!8941 (=> (not res!7329) (not e!4888))))

(declare-fun xxInv!0 (array!671) Bool)

(assert (=> b!8941 (= res!7329 (xxInv!0 xx!50))))

(declare-fun b!8942 () Bool)

(assert (=> b!8942 (= e!4888 e!4887)))

(declare-fun res!7319 () Bool)

(assert (=> b!8942 (=> (not res!7319) (not e!4887))))

(declare-fun lt!4451 () (_ BitVec 32))

(assert (=> b!8942 (= res!7319 (= (bvsub e!19 (bvmul #b00000000000000000000000000011000 (bvadd (ite (bvslt lt!4451 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!4451) #b00000000000000000000000000000001))) #b00000000000000000000000000000000))))

(assert (=> b!8942 (= lt!4451 (bvsdiv (bvsub e!19 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(declare-fun b!8943 () Bool)

(declare-fun timesTwoOverPiWhile!0 ((_ BitVec 32) (_ BitVec 32) array!671 (_ BitVec 32) array!671) tuple3!182)

(assert (=> b!8943 (= e!4885 (timesTwoOverPiWhile!0 e!19 jz!36 xx!50 lt!4449 lt!4448))))

(declare-fun b!8944 () Bool)

(declare-fun res!7317 () Bool)

(assert (=> b!8944 (=> (not res!7317) (not e!4890))))

(assert (=> b!8944 (= res!7317 (bvsle i!190 jz!36))))

(declare-fun b!8945 () Bool)

(declare-fun res!7330 () Bool)

(assert (=> b!8945 (=> (not res!7330) (not e!4890))))

(assert (=> b!8945 (= res!7330 (Q!0 (select (arr!294 f!79) (bvadd i!190 #b00000000000000000000000000000001))))))

(declare-fun b!8946 () Bool)

(declare-fun res!7326 () Bool)

(assert (=> b!8946 (=> (not res!7326) (not e!4890))))

(assert (=> b!8946 (= res!7326 (Q!0 (select (arr!294 f!79) i!190)))))

(declare-fun b!8947 () Bool)

(declare-fun res!7321 () Bool)

(assert (=> b!8947 (=> (not res!7321) (not e!4890))))

(assert (=> b!8947 (= res!7321 (Q!0 (select (arr!294 f!79) (bvadd i!190 #b00000000000000000000000000000011))))))

(declare-fun b!8948 () Bool)

(declare-fun res!7322 () Bool)

(assert (=> b!8948 (=> (not res!7322) (not e!4890))))

(declare-fun qInv!0 (array!671) Bool)

(assert (=> b!8948 (= res!7322 (qInv!0 q!51))))

(declare-fun b!8949 () Bool)

(declare-fun Unit!648 () Unit!646)

(assert (=> b!8949 (= e!4885 (tuple3!183 Unit!648 lt!4449 lt!4448))))

(declare-fun b!8950 () Bool)

(declare-datatypes ((tuple4!204 0))(
  ( (tuple4!205 (_1!230 Unit!646) (_2!230 (_ BitVec 32)) (_3!194 array!671) (_4!102 array!671)) )
))
(declare-fun timesTwoOverPiWhile!1 ((_ BitVec 32) (_ BitVec 32) array!671 (_ BitVec 32) array!671 array!671) tuple4!204)

(assert (=> b!8950 (= e!4892 (bvsle (_2!230 (timesTwoOverPiWhile!1 e!19 jz!36 xx!50 lt!4450 (array!672 (store (arr!294 q!51) i!190 (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven (select (arr!294 xx!50) #b00000000000000000000000000000000) (select (arr!294 f!79) (bvadd i!190 #b00000000000000000000000000000100))) (fp.mul roundNearestTiesToEven (select (arr!294 xx!50) #b00000000000000000000000000000001) (select (arr!294 f!79) (bvadd i!190 #b00000000000000000000000000000011)))) (fp.mul roundNearestTiesToEven (select (arr!294 xx!50) #b00000000000000000000000000000010) (select (arr!294 f!79) (bvadd i!190 #b00000000000000000000000000000010)))) (fp.mul roundNearestTiesToEven (select (arr!294 xx!50) #b00000000000000000000000000000011) (select (arr!294 f!79) (bvadd i!190 #b00000000000000000000000000000001)))) (fp.mul roundNearestTiesToEven (select (arr!294 xx!50) #b00000000000000000000000000000100) (select (arr!294 f!79) i!190)))) (size!294 q!51)) f!79)) jz!36))))

(declare-fun b!8951 () Bool)

(declare-fun res!7328 () Bool)

(assert (=> b!8951 (=> (not res!7328) (not e!4890))))

(declare-fun fInv!0 (array!671) Bool)

(assert (=> b!8951 (= res!7328 (fInv!0 f!79))))

(assert (= (and start!1699 res!7324) b!8941))

(assert (= (and b!8941 res!7329) b!8942))

(assert (= (and b!8942 res!7319) b!8939))

(assert (= (and b!8939 c!1016) b!8943))

(assert (= (and b!8939 (not c!1016)) b!8949))

(assert (= (and b!8939 res!7325) b!8951))

(assert (= (and b!8951 res!7328) b!8948))

(assert (= (and b!8948 res!7322) b!8944))

(assert (= (and b!8944 res!7317) b!8940))

(assert (= (and b!8940 res!7323) b!8947))

(assert (= (and b!8947 res!7321) b!8937))

(assert (= (and b!8937 res!7327) b!8945))

(assert (= (and b!8945 res!7330) b!8946))

(assert (= (and b!8946 res!7326) b!8936))

(assert (= (and b!8936 res!7320) b!8938))

(assert (= (and b!8938 res!7318) b!8950))

(declare-fun m!14665 () Bool)

(assert (=> b!8950 m!14665))

(declare-fun m!14667 () Bool)

(assert (=> b!8950 m!14667))

(declare-fun m!14669 () Bool)

(assert (=> b!8950 m!14669))

(declare-fun m!14671 () Bool)

(assert (=> b!8950 m!14671))

(declare-fun m!14673 () Bool)

(assert (=> b!8950 m!14673))

(declare-fun m!14675 () Bool)

(assert (=> b!8950 m!14675))

(declare-fun m!14677 () Bool)

(assert (=> b!8950 m!14677))

(declare-fun m!14679 () Bool)

(assert (=> b!8950 m!14679))

(declare-fun m!14681 () Bool)

(assert (=> b!8950 m!14681))

(declare-fun m!14683 () Bool)

(assert (=> b!8950 m!14683))

(declare-fun m!14685 () Bool)

(assert (=> b!8950 m!14685))

(declare-fun m!14687 () Bool)

(assert (=> b!8950 m!14687))

(declare-fun m!14689 () Bool)

(assert (=> b!8948 m!14689))

(declare-fun m!14691 () Bool)

(assert (=> b!8941 m!14691))

(declare-fun m!14693 () Bool)

(assert (=> start!1699 m!14693))

(declare-fun m!14695 () Bool)

(assert (=> start!1699 m!14695))

(declare-fun m!14697 () Bool)

(assert (=> start!1699 m!14697))

(assert (=> b!8937 m!14671))

(assert (=> b!8937 m!14671))

(declare-fun m!14699 () Bool)

(assert (=> b!8937 m!14699))

(declare-fun m!14701 () Bool)

(assert (=> b!8951 m!14701))

(assert (=> b!8936 m!14665))

(assert (=> b!8936 m!14667))

(assert (=> b!8936 m!14669))

(assert (=> b!8936 m!14673))

(assert (=> b!8936 m!14675))

(assert (=> b!8936 m!14677))

(assert (=> b!8936 m!14683))

(assert (=> b!8936 m!14671))

(declare-fun m!14703 () Bool)

(assert (=> b!8936 m!14703))

(assert (=> b!8936 m!14685))

(assert (=> b!8936 m!14687))

(assert (=> b!8936 m!14681))

(assert (=> b!8936 m!14703))

(declare-fun m!14705 () Bool)

(assert (=> b!8936 m!14705))

(assert (=> b!8940 m!14665))

(assert (=> b!8940 m!14665))

(declare-fun m!14707 () Bool)

(assert (=> b!8940 m!14707))

(assert (=> b!8947 m!14667))

(assert (=> b!8947 m!14667))

(declare-fun m!14709 () Bool)

(assert (=> b!8947 m!14709))

(assert (=> b!8945 m!14673))

(assert (=> b!8945 m!14673))

(declare-fun m!14711 () Bool)

(assert (=> b!8945 m!14711))

(declare-fun m!14713 () Bool)

(assert (=> b!8943 m!14713))

(assert (=> b!8946 m!14681))

(assert (=> b!8946 m!14681))

(declare-fun m!14715 () Bool)

(assert (=> b!8946 m!14715))

(check-sat (not b!8946) (not b!8950) (not b!8943) (not b!8937) (not b!8948) (not b!8945) (not b!8941) (not b!8940) (not start!1699) (not b!8947) (not b!8951) (not b!8936))
(check-sat)
