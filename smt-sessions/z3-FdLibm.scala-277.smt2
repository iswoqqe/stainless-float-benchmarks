; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1701 () Bool)

(assert start!1701)

(declare-fun b!8982 () Bool)

(declare-fun res!7369 () Bool)

(declare-fun e!4908 () Bool)

(assert (=> b!8982 (=> (not res!7369) (not e!4908))))

(declare-datatypes ((array!673 0))(
  ( (array!674 (arr!295 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!295 (_ BitVec 32))) )
))
(declare-fun f!79 () array!673)

(declare-fun fInv!0 (array!673) Bool)

(assert (=> b!8982 (= res!7369 (fInv!0 f!79))))

(declare-fun lt!4467 () (_ BitVec 32))

(declare-fun e!19 () (_ BitVec 32))

(declare-fun jz!36 () (_ BitVec 32))

(declare-datatypes ((Unit!649 0))(
  ( (Unit!650) )
))
(declare-datatypes ((tuple3!184 0))(
  ( (tuple3!185 (_1!231 Unit!649) (_2!231 (_ BitVec 32)) (_3!195 array!673)) )
))
(declare-fun e!4912 () tuple3!184)

(declare-fun lt!4464 () array!673)

(declare-fun b!8983 () Bool)

(declare-fun xx!50 () array!673)

(declare-fun timesTwoOverPiWhile!0 ((_ BitVec 32) (_ BitVec 32) array!673 (_ BitVec 32) array!673) tuple3!184)

(assert (=> b!8983 (= e!4912 (timesTwoOverPiWhile!0 e!19 jz!36 xx!50 lt!4467 lt!4464))))

(declare-fun b!8984 () Bool)

(declare-fun res!7361 () Bool)

(assert (=> b!8984 (=> (not res!7361) (not e!4908))))

(declare-fun i!190 () (_ BitVec 32))

(declare-fun Q!0 ((_ FloatingPoint 11 53)) Bool)

(assert (=> b!8984 (= res!7361 (Q!0 (select (arr!295 f!79) i!190)))))

(declare-fun b!8985 () Bool)

(declare-fun Unit!651 () Unit!649)

(assert (=> b!8985 (= e!4912 (tuple3!185 Unit!651 lt!4467 lt!4464))))

(declare-fun res!7360 () Bool)

(declare-fun e!4907 () Bool)

(assert (=> start!1701 (=> (not res!7360) (not e!4907))))

(assert (=> start!1701 (= res!7360 (and (bvsle #b00000000000000000000000000000000 jz!36) (bvsle jz!36 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!19) (bvsle e!19 #b00000000000000000000001111110000) (= (bvsrem e!19 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1701 e!4907))

(declare-fun array_inv!245 (array!673) Bool)

(assert (=> start!1701 (array_inv!245 f!79)))

(declare-fun q!51 () array!673)

(assert (=> start!1701 (array_inv!245 q!51)))

(assert (=> start!1701 true))

(assert (=> start!1701 (array_inv!245 xx!50)))

(declare-fun b!8986 () Bool)

(declare-fun res!7363 () Bool)

(assert (=> b!8986 (=> (not res!7363) (not e!4908))))

(declare-fun P!3 ((_ FloatingPoint 11 53)) Bool)

(assert (=> b!8986 (= res!7363 (P!3 (select (store (arr!295 q!51) i!190 (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven (select (arr!295 xx!50) #b00000000000000000000000000000000) (select (arr!295 f!79) (bvadd i!190 #b00000000000000000000000000000100))) (fp.mul roundNearestTiesToEven (select (arr!295 xx!50) #b00000000000000000000000000000001) (select (arr!295 f!79) (bvadd i!190 #b00000000000000000000000000000011)))) (fp.mul roundNearestTiesToEven (select (arr!295 xx!50) #b00000000000000000000000000000010) (select (arr!295 f!79) (bvadd i!190 #b00000000000000000000000000000010)))) (fp.mul roundNearestTiesToEven (select (arr!295 xx!50) #b00000000000000000000000000000011) (select (arr!295 f!79) (bvadd i!190 #b00000000000000000000000000000001)))) (fp.mul roundNearestTiesToEven (select (arr!295 xx!50) #b00000000000000000000000000000100) (select (arr!295 f!79) i!190)))) i!190)))))

(declare-fun b!8987 () Bool)

(declare-fun res!7358 () Bool)

(assert (=> b!8987 (=> (not res!7358) (not e!4908))))

(assert (=> b!8987 (= res!7358 (Q!0 (select (arr!295 f!79) (bvadd i!190 #b00000000000000000000000000000100))))))

(declare-fun b!8988 () Bool)

(declare-fun res!7368 () Bool)

(assert (=> b!8988 (=> (not res!7368) (not e!4908))))

(assert (=> b!8988 (= res!7368 (Q!0 (select (arr!295 f!79) (bvadd i!190 #b00000000000000000000000000000001))))))

(declare-fun b!8989 () Bool)

(declare-fun e!4909 () Bool)

(assert (=> b!8989 (= e!4909 e!4908)))

(declare-fun res!7362 () Bool)

(assert (=> b!8989 (=> (not res!7362) (not e!4908))))

(assert (=> b!8989 (= res!7362 (and (bvsle #b00000000000000000000000000000000 i!190) (bvsle i!190 (bvadd jz!36 #b00000000000000000000000000000001))))))

(declare-fun lt!4466 () tuple3!184)

(assert (=> b!8989 (= lt!4466 e!4912)))

(declare-fun c!1019 () Bool)

(assert (=> b!8989 (= c!1019 (bvsle lt!4467 (bvadd (bvsub (size!295 xx!50) #b00000000000000000000000000000001) jz!36)))))

(assert (=> b!8989 (= lt!4467 #b00000000000000000000000000000000)))

(assert (=> b!8989 (= lt!4464 (array!674 ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000010100))))

(declare-fun b!8990 () Bool)

(declare-fun res!7365 () Bool)

(assert (=> b!8990 (=> (not res!7365) (not e!4907))))

(declare-fun xxInv!0 (array!673) Bool)

(assert (=> b!8990 (= res!7365 (xxInv!0 xx!50))))

(declare-fun b!8991 () Bool)

(declare-fun res!7366 () Bool)

(assert (=> b!8991 (=> (not res!7366) (not e!4908))))

(assert (=> b!8991 (= res!7366 (Q!0 (select (arr!295 f!79) (bvadd i!190 #b00000000000000000000000000000011))))))

(declare-fun b!8992 () Bool)

(assert (=> b!8992 (= e!4907 e!4909)))

(declare-fun res!7364 () Bool)

(assert (=> b!8992 (=> (not res!7364) (not e!4909))))

(declare-fun lt!4463 () (_ BitVec 32))

(assert (=> b!8992 (= res!7364 (= (bvsub e!19 (bvmul #b00000000000000000000000000011000 (bvadd (ite (bvslt lt!4463 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!4463) #b00000000000000000000000000000001))) #b00000000000000000000000000000000))))

(assert (=> b!8992 (= lt!4463 (bvsdiv (bvsub e!19 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(declare-fun b!8993 () Bool)

(declare-fun lt!4465 () (_ BitVec 32))

(assert (=> b!8993 (= e!4908 (and (bvsgt lt!4465 jz!36) (bvsle #b00000000000000000000000000000000 lt!4465) (= (bvand jz!36 #b10000000000000000000000000000000) #b00000000000000000000000000000000) (not (= (bvand jz!36 #b10000000000000000000000000000000) (bvand (bvadd jz!36 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(assert (=> b!8993 (= lt!4465 (bvadd i!190 #b00000000000000000000000000000001))))

(declare-fun b!8994 () Bool)

(declare-fun res!7357 () Bool)

(assert (=> b!8994 (=> (not res!7357) (not e!4908))))

(assert (=> b!8994 (= res!7357 (Q!0 (select (arr!295 f!79) (bvadd i!190 #b00000000000000000000000000000010))))))

(declare-fun b!8995 () Bool)

(declare-fun res!7367 () Bool)

(assert (=> b!8995 (=> (not res!7367) (not e!4908))))

(declare-fun qInv!0 (array!673) Bool)

(assert (=> b!8995 (= res!7367 (qInv!0 q!51))))

(declare-fun b!8996 () Bool)

(declare-fun res!7359 () Bool)

(assert (=> b!8996 (=> (not res!7359) (not e!4908))))

(assert (=> b!8996 (= res!7359 (bvsle i!190 jz!36))))

(assert (= (and start!1701 res!7360) b!8990))

(assert (= (and b!8990 res!7365) b!8992))

(assert (= (and b!8992 res!7364) b!8989))

(assert (= (and b!8989 c!1019) b!8983))

(assert (= (and b!8989 (not c!1019)) b!8985))

(assert (= (and b!8989 res!7362) b!8982))

(assert (= (and b!8982 res!7369) b!8995))

(assert (= (and b!8995 res!7367) b!8996))

(assert (= (and b!8996 res!7359) b!8987))

(assert (= (and b!8987 res!7358) b!8991))

(assert (= (and b!8991 res!7366) b!8994))

(assert (= (and b!8994 res!7357) b!8988))

(assert (= (and b!8988 res!7368) b!8984))

(assert (= (and b!8984 res!7361) b!8986))

(assert (= (and b!8986 res!7363) b!8993))

(declare-fun m!14717 () Bool)

(assert (=> b!8994 m!14717))

(assert (=> b!8994 m!14717))

(declare-fun m!14719 () Bool)

(assert (=> b!8994 m!14719))

(declare-fun m!14721 () Bool)

(assert (=> b!8990 m!14721))

(declare-fun m!14723 () Bool)

(assert (=> b!8995 m!14723))

(declare-fun m!14725 () Bool)

(assert (=> start!1701 m!14725))

(declare-fun m!14727 () Bool)

(assert (=> start!1701 m!14727))

(declare-fun m!14729 () Bool)

(assert (=> start!1701 m!14729))

(declare-fun m!14731 () Bool)

(assert (=> b!8984 m!14731))

(assert (=> b!8984 m!14731))

(declare-fun m!14733 () Bool)

(assert (=> b!8984 m!14733))

(declare-fun m!14735 () Bool)

(assert (=> b!8983 m!14735))

(declare-fun m!14737 () Bool)

(assert (=> b!8986 m!14737))

(declare-fun m!14739 () Bool)

(assert (=> b!8986 m!14739))

(declare-fun m!14741 () Bool)

(assert (=> b!8986 m!14741))

(declare-fun m!14743 () Bool)

(assert (=> b!8986 m!14743))

(declare-fun m!14745 () Bool)

(assert (=> b!8986 m!14745))

(declare-fun m!14747 () Bool)

(assert (=> b!8986 m!14747))

(declare-fun m!14749 () Bool)

(assert (=> b!8986 m!14749))

(assert (=> b!8986 m!14717))

(declare-fun m!14751 () Bool)

(assert (=> b!8986 m!14751))

(declare-fun m!14753 () Bool)

(assert (=> b!8986 m!14753))

(declare-fun m!14755 () Bool)

(assert (=> b!8986 m!14755))

(assert (=> b!8986 m!14731))

(assert (=> b!8986 m!14751))

(declare-fun m!14757 () Bool)

(assert (=> b!8986 m!14757))

(declare-fun m!14759 () Bool)

(assert (=> b!8982 m!14759))

(assert (=> b!8987 m!14737))

(assert (=> b!8987 m!14737))

(declare-fun m!14761 () Bool)

(assert (=> b!8987 m!14761))

(assert (=> b!8991 m!14739))

(assert (=> b!8991 m!14739))

(declare-fun m!14763 () Bool)

(assert (=> b!8991 m!14763))

(assert (=> b!8988 m!14743))

(assert (=> b!8988 m!14743))

(declare-fun m!14765 () Bool)

(assert (=> b!8988 m!14765))

(check-sat (not b!8984) (not b!8990) (not b!8983) (not b!8987) (not start!1701) (not b!8994) (not b!8988) (not b!8982) (not b!8995) (not b!8991) (not b!8986))
(check-sat)
