; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1677 () Bool)

(assert start!1677)

(declare-fun res!7077 () Bool)

(declare-fun e!4863 () Bool)

(assert (=> start!1677 (=> (not res!7077) (not e!4863))))

(declare-fun jz!36 () (_ BitVec 32))

(declare-fun e!19 () (_ BitVec 32))

(assert (=> start!1677 (= res!7077 (and (bvsle #b00000000000000000000000000000000 jz!36) (bvsle jz!36 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!19) (bvsle e!19 #b00000000000000000000001111110000) (= (bvsrem e!19 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1677 e!4863))

(declare-datatypes ((array!672 0))(
  ( (array!673 (arr!296 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!296 (_ BitVec 32))) )
))
(declare-fun f!79 () array!672)

(declare-fun array_inv!246 (array!672) Bool)

(assert (=> start!1677 (array_inv!246 f!79)))

(declare-fun q!51 () array!672)

(assert (=> start!1677 (array_inv!246 q!51)))

(assert (=> start!1677 true))

(declare-fun xx!50 () array!672)

(assert (=> start!1677 (array_inv!246 xx!50)))

(declare-fun b!8665 () Bool)

(declare-fun res!7073 () Bool)

(declare-fun e!4861 () Bool)

(assert (=> b!8665 (=> (not res!7073) (not e!4861))))

(declare-fun qInv!0 (array!672) Bool)

(assert (=> b!8665 (= res!7073 (qInv!0 q!51))))

(declare-fun b!8666 () Bool)

(declare-datatypes ((Unit!637 0))(
  ( (Unit!638) )
))
(declare-datatypes ((tuple3!186 0))(
  ( (tuple3!187 (_1!232 Unit!637) (_2!232 (_ BitVec 32)) (_3!196 array!672)) )
))
(declare-fun e!4862 () tuple3!186)

(declare-fun lt!4408 () array!672)

(declare-fun lt!4409 () (_ BitVec 32))

(declare-fun timesTwoOverPiWhile!0 ((_ BitVec 32) (_ BitVec 32) array!672 (_ BitVec 32) array!672) tuple3!186)

(assert (=> b!8666 (= e!4862 (timesTwoOverPiWhile!0 e!19 jz!36 xx!50 lt!4409 lt!4408))))

(declare-fun e!4864 () Bool)

(declare-fun i!190 () (_ BitVec 32))

(declare-fun b!8667 () Bool)

(assert (=> b!8667 (= e!4864 (not (qInv!0 (array!673 (store (arr!296 q!51) i!190 (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven (select (arr!296 xx!50) #b00000000000000000000000000000000) (select (arr!296 f!79) (bvadd i!190 #b00000000000000000000000000000100))) (fp.mul roundNearestTiesToEven (select (arr!296 xx!50) #b00000000000000000000000000000001) (select (arr!296 f!79) (bvadd i!190 #b00000000000000000000000000000011)))) (fp.mul roundNearestTiesToEven (select (arr!296 xx!50) #b00000000000000000000000000000010) (select (arr!296 f!79) (bvadd i!190 #b00000000000000000000000000000010)))) (fp.mul roundNearestTiesToEven (select (arr!296 xx!50) #b00000000000000000000000000000011) (select (arr!296 f!79) (bvadd i!190 #b00000000000000000000000000000001)))) (fp.mul roundNearestTiesToEven (select (arr!296 xx!50) #b00000000000000000000000000000100) (select (arr!296 f!79) i!190)))) (size!296 q!51)))))))

(declare-fun b!8668 () Bool)

(declare-fun Unit!639 () Unit!637)

(assert (=> b!8668 (= e!4862 (tuple3!187 Unit!639 lt!4409 lt!4408))))

(declare-fun b!8669 () Bool)

(declare-fun res!7074 () Bool)

(assert (=> b!8669 (=> (not res!7074) (not e!4861))))

(declare-fun Q!0 ((_ FloatingPoint 11 53)) Bool)

(assert (=> b!8669 (= res!7074 (Q!0 (select (arr!296 f!79) (bvadd i!190 #b00000000000000000000000000000100))))))

(declare-fun b!8670 () Bool)

(declare-fun res!7064 () Bool)

(assert (=> b!8670 (=> (not res!7064) (not e!4863))))

(declare-fun xxInv!0 (array!672) Bool)

(assert (=> b!8670 (= res!7064 (xxInv!0 xx!50))))

(declare-fun b!8671 () Bool)

(declare-fun e!4869 () Bool)

(assert (=> b!8671 (= e!4863 e!4869)))

(declare-fun res!7079 () Bool)

(assert (=> b!8671 (=> (not res!7079) (not e!4869))))

(declare-fun lt!4406 () (_ BitVec 32))

(assert (=> b!8671 (= res!7079 (= (bvsub e!19 (bvmul #b00000000000000000000000000011000 (bvadd (ite (bvslt lt!4406 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!4406) #b00000000000000000000000000000001))) #b00000000000000000000000000000000))))

(assert (=> b!8671 (= lt!4406 (bvsdiv (bvsub e!19 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(declare-fun b!8672 () Bool)

(declare-fun res!7068 () Bool)

(assert (=> b!8672 (=> (not res!7068) (not e!4861))))

(assert (=> b!8672 (= res!7068 (bvsle i!190 jz!36))))

(declare-fun b!8673 () Bool)

(declare-fun e!4866 () Bool)

(assert (=> b!8673 (= e!4866 e!4864)))

(declare-fun res!7070 () Bool)

(assert (=> b!8673 (=> res!7070 e!4864)))

(declare-fun lt!4410 () (_ BitVec 32))

(assert (=> b!8673 (= res!7070 (or (bvsgt #b00000000000000000000000000000000 lt!4410) (bvsgt lt!4410 (bvadd jz!36 #b00000000000000000000000000000001))))))

(declare-fun b!8674 () Bool)

(declare-fun res!7075 () Bool)

(assert (=> b!8674 (=> (not res!7075) (not e!4861))))

(declare-fun fInv!0 (array!672) Bool)

(assert (=> b!8674 (= res!7075 (fInv!0 f!79))))

(declare-fun b!8675 () Bool)

(assert (=> b!8675 (= e!4861 e!4866)))

(declare-fun res!7067 () Bool)

(assert (=> b!8675 (=> (not res!7067) (not e!4866))))

(assert (=> b!8675 (= res!7067 (bvsgt lt!4410 jz!36))))

(assert (=> b!8675 (= lt!4410 (bvadd i!190 #b00000000000000000000000000000001))))

(declare-fun b!8676 () Bool)

(assert (=> b!8676 (= e!4869 e!4861)))

(declare-fun res!7078 () Bool)

(assert (=> b!8676 (=> (not res!7078) (not e!4861))))

(assert (=> b!8676 (= res!7078 (and (bvsle #b00000000000000000000000000000000 i!190) (bvsle i!190 (bvadd jz!36 #b00000000000000000000000000000001))))))

(declare-fun lt!4407 () tuple3!186)

(assert (=> b!8676 (= lt!4407 e!4862)))

(declare-fun c!1007 () Bool)

(assert (=> b!8676 (= c!1007 (bvsle lt!4409 (bvadd (bvsub (size!296 xx!50) #b00000000000000000000000000000001) jz!36)))))

(assert (=> b!8676 (= lt!4409 #b00000000000000000000000000000000)))

(assert (=> b!8676 (= lt!4408 (array!673 ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000010100))))

(declare-fun b!8677 () Bool)

(declare-fun res!7076 () Bool)

(assert (=> b!8677 (=> (not res!7076) (not e!4861))))

(declare-fun P!3 ((_ FloatingPoint 11 53)) Bool)

(assert (=> b!8677 (= res!7076 (P!3 (select (store (arr!296 q!51) i!190 (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven (select (arr!296 xx!50) #b00000000000000000000000000000000) (select (arr!296 f!79) (bvadd i!190 #b00000000000000000000000000000100))) (fp.mul roundNearestTiesToEven (select (arr!296 xx!50) #b00000000000000000000000000000001) (select (arr!296 f!79) (bvadd i!190 #b00000000000000000000000000000011)))) (fp.mul roundNearestTiesToEven (select (arr!296 xx!50) #b00000000000000000000000000000010) (select (arr!296 f!79) (bvadd i!190 #b00000000000000000000000000000010)))) (fp.mul roundNearestTiesToEven (select (arr!296 xx!50) #b00000000000000000000000000000011) (select (arr!296 f!79) (bvadd i!190 #b00000000000000000000000000000001)))) (fp.mul roundNearestTiesToEven (select (arr!296 xx!50) #b00000000000000000000000000000100) (select (arr!296 f!79) i!190)))) i!190)))))

(declare-fun b!8678 () Bool)

(declare-fun res!7065 () Bool)

(assert (=> b!8678 (=> (not res!7065) (not e!4861))))

(assert (=> b!8678 (= res!7065 (Q!0 (select (arr!296 f!79) (bvadd i!190 #b00000000000000000000000000000001))))))

(declare-fun b!8679 () Bool)

(declare-fun res!7071 () Bool)

(assert (=> b!8679 (=> (not res!7071) (not e!4861))))

(assert (=> b!8679 (= res!7071 (Q!0 (select (arr!296 f!79) i!190)))))

(declare-fun b!8680 () Bool)

(declare-fun res!7072 () Bool)

(assert (=> b!8680 (=> res!7072 e!4864)))

(assert (=> b!8680 (= res!7072 (not (fInv!0 f!79)))))

(declare-fun b!8681 () Bool)

(declare-fun res!7066 () Bool)

(assert (=> b!8681 (=> (not res!7066) (not e!4861))))

(assert (=> b!8681 (= res!7066 (Q!0 (select (arr!296 f!79) (bvadd i!190 #b00000000000000000000000000000010))))))

(declare-fun b!8682 () Bool)

(declare-fun res!7069 () Bool)

(assert (=> b!8682 (=> (not res!7069) (not e!4861))))

(assert (=> b!8682 (= res!7069 (Q!0 (select (arr!296 f!79) (bvadd i!190 #b00000000000000000000000000000011))))))

(assert (= (and start!1677 res!7077) b!8670))

(assert (= (and b!8670 res!7064) b!8671))

(assert (= (and b!8671 res!7079) b!8676))

(assert (= (and b!8676 c!1007) b!8666))

(assert (= (and b!8676 (not c!1007)) b!8668))

(assert (= (and b!8676 res!7078) b!8674))

(assert (= (and b!8674 res!7075) b!8665))

(assert (= (and b!8665 res!7073) b!8672))

(assert (= (and b!8672 res!7068) b!8669))

(assert (= (and b!8669 res!7074) b!8682))

(assert (= (and b!8682 res!7069) b!8681))

(assert (= (and b!8681 res!7066) b!8678))

(assert (= (and b!8678 res!7065) b!8679))

(assert (= (and b!8679 res!7071) b!8677))

(assert (= (and b!8677 res!7076) b!8675))

(assert (= (and b!8675 res!7067) b!8673))

(assert (= (and b!8673 (not res!7070)) b!8680))

(assert (= (and b!8680 (not res!7072)) b!8667))

(declare-fun m!12943 () Bool)

(assert (=> b!8682 m!12943))

(assert (=> b!8682 m!12943))

(declare-fun m!12945 () Bool)

(assert (=> b!8682 m!12945))

(declare-fun m!12947 () Bool)

(assert (=> b!8670 m!12947))

(declare-fun m!12949 () Bool)

(assert (=> b!8665 m!12949))

(declare-fun m!12951 () Bool)

(assert (=> b!8681 m!12951))

(assert (=> b!8681 m!12951))

(declare-fun m!12953 () Bool)

(assert (=> b!8681 m!12953))

(declare-fun m!12955 () Bool)

(assert (=> b!8666 m!12955))

(declare-fun m!12957 () Bool)

(assert (=> b!8680 m!12957))

(assert (=> b!8674 m!12957))

(declare-fun m!12959 () Bool)

(assert (=> b!8667 m!12959))

(assert (=> b!8667 m!12943))

(assert (=> b!8667 m!12951))

(declare-fun m!12961 () Bool)

(assert (=> b!8667 m!12961))

(declare-fun m!12963 () Bool)

(assert (=> b!8667 m!12963))

(declare-fun m!12965 () Bool)

(assert (=> b!8667 m!12965))

(declare-fun m!12967 () Bool)

(assert (=> b!8667 m!12967))

(declare-fun m!12969 () Bool)

(assert (=> b!8667 m!12969))

(declare-fun m!12971 () Bool)

(assert (=> b!8667 m!12971))

(declare-fun m!12973 () Bool)

(assert (=> b!8667 m!12973))

(declare-fun m!12975 () Bool)

(assert (=> b!8667 m!12975))

(declare-fun m!12977 () Bool)

(assert (=> b!8667 m!12977))

(assert (=> b!8669 m!12959))

(assert (=> b!8669 m!12959))

(declare-fun m!12979 () Bool)

(assert (=> b!8669 m!12979))

(assert (=> b!8677 m!12959))

(assert (=> b!8677 m!12943))

(assert (=> b!8677 m!12951))

(assert (=> b!8677 m!12961))

(assert (=> b!8677 m!12963))

(declare-fun m!12981 () Bool)

(assert (=> b!8677 m!12981))

(assert (=> b!8677 m!12965))

(assert (=> b!8677 m!12967))

(assert (=> b!8677 m!12981))

(declare-fun m!12983 () Bool)

(assert (=> b!8677 m!12983))

(assert (=> b!8677 m!12971))

(assert (=> b!8677 m!12973))

(assert (=> b!8677 m!12975))

(assert (=> b!8677 m!12977))

(declare-fun m!12985 () Bool)

(assert (=> start!1677 m!12985))

(declare-fun m!12987 () Bool)

(assert (=> start!1677 m!12987))

(declare-fun m!12989 () Bool)

(assert (=> start!1677 m!12989))

(assert (=> b!8678 m!12961))

(assert (=> b!8678 m!12961))

(declare-fun m!12991 () Bool)

(assert (=> b!8678 m!12991))

(assert (=> b!8679 m!12971))

(assert (=> b!8679 m!12971))

(declare-fun m!12993 () Bool)

(assert (=> b!8679 m!12993))

(check-sat (not start!1677) (not b!8674) (not b!8670) (not b!8680) (not b!8679) (not b!8665) (not b!8681) (not b!8667) (not b!8678) (not b!8669) (not b!8666) (not b!8677) (not b!8682))
(check-sat)
