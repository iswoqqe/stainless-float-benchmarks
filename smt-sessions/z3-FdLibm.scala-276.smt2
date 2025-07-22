; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1673 () Bool)

(assert start!1673)

(declare-fun b!8568 () Bool)

(declare-fun res!6992 () Bool)

(declare-fun e!4817 () Bool)

(assert (=> b!8568 (=> (not res!6992) (not e!4817))))

(declare-datatypes ((array!668 0))(
  ( (array!669 (arr!294 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!294 (_ BitVec 32))) )
))
(declare-fun f!79 () array!668)

(declare-fun i!190 () (_ BitVec 32))

(declare-fun Q!0 ((_ FloatingPoint 11 53)) Bool)

(assert (=> b!8568 (= res!6992 (Q!0 (select (arr!294 f!79) i!190)))))

(declare-fun b!8569 () Bool)

(declare-fun res!6991 () Bool)

(assert (=> b!8569 (=> (not res!6991) (not e!4817))))

(assert (=> b!8569 (= res!6991 (Q!0 (select (arr!294 f!79) (bvadd i!190 #b00000000000000000000000000000100))))))

(declare-fun b!8570 () Bool)

(declare-fun res!6986 () Bool)

(assert (=> b!8570 (=> (not res!6986) (not e!4817))))

(declare-fun q!51 () array!668)

(declare-fun qInv!0 (array!668) Bool)

(assert (=> b!8570 (= res!6986 (qInv!0 q!51))))

(declare-fun b!8571 () Bool)

(declare-fun res!6980 () Bool)

(declare-fun e!4820 () Bool)

(assert (=> b!8571 (=> (not res!6980) (not e!4820))))

(declare-fun xx!50 () array!668)

(declare-fun xxInv!0 (array!668) Bool)

(assert (=> b!8571 (= res!6980 (xxInv!0 xx!50))))

(declare-fun b!8572 () Bool)

(declare-fun e!4821 () Bool)

(assert (=> b!8572 (= e!4817 e!4821)))

(declare-fun res!6983 () Bool)

(assert (=> b!8572 (=> (not res!6983) (not e!4821))))

(declare-fun lt!4380 () (_ BitVec 32))

(declare-fun jz!36 () (_ BitVec 32))

(assert (=> b!8572 (= res!6983 (bvsle lt!4380 jz!36))))

(assert (=> b!8572 (= lt!4380 (bvadd i!190 #b00000000000000000000000000000001))))

(declare-fun b!8573 () Bool)

(declare-fun res!6990 () Bool)

(assert (=> b!8573 (=> (not res!6990) (not e!4817))))

(declare-fun P!3 ((_ FloatingPoint 11 53)) Bool)

(assert (=> b!8573 (= res!6990 (P!3 (select (store (arr!294 q!51) i!190 (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven (select (arr!294 xx!50) #b00000000000000000000000000000000) (select (arr!294 f!79) (bvadd i!190 #b00000000000000000000000000000100))) (fp.mul roundNearestTiesToEven (select (arr!294 xx!50) #b00000000000000000000000000000001) (select (arr!294 f!79) (bvadd i!190 #b00000000000000000000000000000011)))) (fp.mul roundNearestTiesToEven (select (arr!294 xx!50) #b00000000000000000000000000000010) (select (arr!294 f!79) (bvadd i!190 #b00000000000000000000000000000010)))) (fp.mul roundNearestTiesToEven (select (arr!294 xx!50) #b00000000000000000000000000000011) (select (arr!294 f!79) (bvadd i!190 #b00000000000000000000000000000001)))) (fp.mul roundNearestTiesToEven (select (arr!294 xx!50) #b00000000000000000000000000000100) (select (arr!294 f!79) i!190)))) i!190)))))

(declare-fun res!6981 () Bool)

(assert (=> start!1673 (=> (not res!6981) (not e!4820))))

(declare-fun e!19 () (_ BitVec 32))

(assert (=> start!1673 (= res!6981 (and (bvsle #b00000000000000000000000000000000 jz!36) (bvsle jz!36 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!19) (bvsle e!19 #b00000000000000000000001111110000) (= (bvsrem e!19 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1673 e!4820))

(declare-fun array_inv!244 (array!668) Bool)

(assert (=> start!1673 (array_inv!244 f!79)))

(assert (=> start!1673 (array_inv!244 q!51)))

(assert (=> start!1673 true))

(assert (=> start!1673 (array_inv!244 xx!50)))

(declare-fun b!8574 () Bool)

(declare-datatypes ((Unit!631 0))(
  ( (Unit!632) )
))
(declare-datatypes ((tuple3!182 0))(
  ( (tuple3!183 (_1!229 Unit!631) (_2!229 (_ BitVec 32)) (_3!193 array!668)) )
))
(declare-fun e!4814 () tuple3!182)

(declare-fun lt!4377 () array!668)

(declare-fun lt!4376 () (_ BitVec 32))

(declare-fun timesTwoOverPiWhile!0 ((_ BitVec 32) (_ BitVec 32) array!668 (_ BitVec 32) array!668) tuple3!182)

(assert (=> b!8574 (= e!4814 (timesTwoOverPiWhile!0 e!19 jz!36 xx!50 lt!4376 lt!4377))))

(declare-fun b!8575 () Bool)

(declare-fun res!6984 () Bool)

(assert (=> b!8575 (=> (not res!6984) (not e!4817))))

(assert (=> b!8575 (= res!6984 (bvsle i!190 jz!36))))

(declare-fun b!8576 () Bool)

(declare-fun res!6985 () Bool)

(assert (=> b!8576 (=> (not res!6985) (not e!4817))))

(assert (=> b!8576 (= res!6985 (Q!0 (select (arr!294 f!79) (bvadd i!190 #b00000000000000000000000000000011))))))

(declare-fun b!8577 () Bool)

(declare-fun res!6979 () Bool)

(assert (=> b!8577 (=> (not res!6979) (not e!4817))))

(assert (=> b!8577 (= res!6979 (Q!0 (select (arr!294 f!79) (bvadd i!190 #b00000000000000000000000000000001))))))

(declare-fun b!8578 () Bool)

(declare-fun res!6987 () Bool)

(assert (=> b!8578 (=> (not res!6987) (not e!4817))))

(assert (=> b!8578 (= res!6987 (Q!0 (select (arr!294 f!79) (bvadd i!190 #b00000000000000000000000000000010))))))

(declare-fun b!8579 () Bool)

(declare-fun e!4816 () Bool)

(assert (=> b!8579 (= e!4816 e!4817)))

(declare-fun res!6989 () Bool)

(assert (=> b!8579 (=> (not res!6989) (not e!4817))))

(assert (=> b!8579 (= res!6989 (and (bvsle #b00000000000000000000000000000000 i!190) (bvsle i!190 (bvadd jz!36 #b00000000000000000000000000000001))))))

(declare-fun lt!4378 () tuple3!182)

(assert (=> b!8579 (= lt!4378 e!4814)))

(declare-fun c!1001 () Bool)

(assert (=> b!8579 (= c!1001 (bvsle lt!4376 (bvadd (bvsub (size!294 xx!50) #b00000000000000000000000000000001) jz!36)))))

(assert (=> b!8579 (= lt!4376 #b00000000000000000000000000000000)))

(assert (=> b!8579 (= lt!4377 (array!669 ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000010100))))

(declare-fun b!8580 () Bool)

(declare-fun res!6982 () Bool)

(assert (=> b!8580 (=> (not res!6982) (not e!4817))))

(declare-fun fInv!0 (array!668) Bool)

(assert (=> b!8580 (= res!6982 (fInv!0 f!79))))

(declare-fun b!8581 () Bool)

(declare-fun Unit!633 () Unit!631)

(assert (=> b!8581 (= e!4814 (tuple3!183 Unit!633 lt!4376 lt!4377))))

(declare-fun b!8582 () Bool)

(declare-datatypes ((tuple4!204 0))(
  ( (tuple4!205 (_1!230 Unit!631) (_2!230 (_ BitVec 32)) (_3!194 array!668) (_4!102 array!668)) )
))
(declare-fun timesTwoOverPiWhile!1 ((_ BitVec 32) (_ BitVec 32) array!668 (_ BitVec 32) array!668 array!668) tuple4!204)

(assert (=> b!8582 (= e!4821 (bvsle (_2!230 (timesTwoOverPiWhile!1 e!19 jz!36 xx!50 lt!4380 (array!669 (store (arr!294 q!51) i!190 (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven (select (arr!294 xx!50) #b00000000000000000000000000000000) (select (arr!294 f!79) (bvadd i!190 #b00000000000000000000000000000100))) (fp.mul roundNearestTiesToEven (select (arr!294 xx!50) #b00000000000000000000000000000001) (select (arr!294 f!79) (bvadd i!190 #b00000000000000000000000000000011)))) (fp.mul roundNearestTiesToEven (select (arr!294 xx!50) #b00000000000000000000000000000010) (select (arr!294 f!79) (bvadd i!190 #b00000000000000000000000000000010)))) (fp.mul roundNearestTiesToEven (select (arr!294 xx!50) #b00000000000000000000000000000011) (select (arr!294 f!79) (bvadd i!190 #b00000000000000000000000000000001)))) (fp.mul roundNearestTiesToEven (select (arr!294 xx!50) #b00000000000000000000000000000100) (select (arr!294 f!79) i!190)))) (size!294 q!51)) f!79)) jz!36))))

(declare-fun b!8583 () Bool)

(assert (=> b!8583 (= e!4820 e!4816)))

(declare-fun res!6988 () Bool)

(assert (=> b!8583 (=> (not res!6988) (not e!4816))))

(declare-fun lt!4379 () (_ BitVec 32))

(assert (=> b!8583 (= res!6988 (= (bvsub e!19 (bvmul #b00000000000000000000000000011000 (bvadd (ite (bvslt lt!4379 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!4379) #b00000000000000000000000000000001))) #b00000000000000000000000000000000))))

(assert (=> b!8583 (= lt!4379 (bvsdiv (bvsub e!19 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(assert (= (and start!1673 res!6981) b!8571))

(assert (= (and b!8571 res!6980) b!8583))

(assert (= (and b!8583 res!6988) b!8579))

(assert (= (and b!8579 c!1001) b!8574))

(assert (= (and b!8579 (not c!1001)) b!8581))

(assert (= (and b!8579 res!6989) b!8580))

(assert (= (and b!8580 res!6982) b!8570))

(assert (= (and b!8570 res!6986) b!8575))

(assert (= (and b!8575 res!6984) b!8569))

(assert (= (and b!8569 res!6991) b!8576))

(assert (= (and b!8576 res!6985) b!8578))

(assert (= (and b!8578 res!6987) b!8577))

(assert (= (and b!8577 res!6979) b!8568))

(assert (= (and b!8568 res!6992) b!8573))

(assert (= (and b!8573 res!6990) b!8572))

(assert (= (and b!8572 res!6983) b!8582))

(declare-fun m!12841 () Bool)

(assert (=> b!8574 m!12841))

(declare-fun m!12843 () Bool)

(assert (=> b!8571 m!12843))

(declare-fun m!12845 () Bool)

(assert (=> b!8582 m!12845))

(declare-fun m!12847 () Bool)

(assert (=> b!8582 m!12847))

(declare-fun m!12849 () Bool)

(assert (=> b!8582 m!12849))

(declare-fun m!12851 () Bool)

(assert (=> b!8582 m!12851))

(declare-fun m!12853 () Bool)

(assert (=> b!8582 m!12853))

(declare-fun m!12855 () Bool)

(assert (=> b!8582 m!12855))

(declare-fun m!12857 () Bool)

(assert (=> b!8582 m!12857))

(declare-fun m!12859 () Bool)

(assert (=> b!8582 m!12859))

(declare-fun m!12861 () Bool)

(assert (=> b!8582 m!12861))

(declare-fun m!12863 () Bool)

(assert (=> b!8582 m!12863))

(declare-fun m!12865 () Bool)

(assert (=> b!8582 m!12865))

(declare-fun m!12867 () Bool)

(assert (=> b!8582 m!12867))

(assert (=> b!8569 m!12845))

(assert (=> b!8569 m!12845))

(declare-fun m!12869 () Bool)

(assert (=> b!8569 m!12869))

(declare-fun m!12871 () Bool)

(assert (=> start!1673 m!12871))

(declare-fun m!12873 () Bool)

(assert (=> start!1673 m!12873))

(declare-fun m!12875 () Bool)

(assert (=> start!1673 m!12875))

(assert (=> b!8577 m!12851))

(assert (=> b!8577 m!12851))

(declare-fun m!12877 () Bool)

(assert (=> b!8577 m!12877))

(assert (=> b!8576 m!12847))

(assert (=> b!8576 m!12847))

(declare-fun m!12879 () Bool)

(assert (=> b!8576 m!12879))

(assert (=> b!8573 m!12845))

(assert (=> b!8573 m!12847))

(assert (=> b!8573 m!12849))

(assert (=> b!8573 m!12851))

(assert (=> b!8573 m!12853))

(declare-fun m!12881 () Bool)

(assert (=> b!8573 m!12881))

(assert (=> b!8573 m!12855))

(assert (=> b!8573 m!12857))

(assert (=> b!8573 m!12881))

(declare-fun m!12883 () Bool)

(assert (=> b!8573 m!12883))

(assert (=> b!8573 m!12861))

(assert (=> b!8573 m!12863))

(assert (=> b!8573 m!12865))

(assert (=> b!8573 m!12867))

(assert (=> b!8568 m!12861))

(assert (=> b!8568 m!12861))

(declare-fun m!12885 () Bool)

(assert (=> b!8568 m!12885))

(declare-fun m!12887 () Bool)

(assert (=> b!8580 m!12887))

(assert (=> b!8578 m!12849))

(assert (=> b!8578 m!12849))

(declare-fun m!12889 () Bool)

(assert (=> b!8578 m!12889))

(declare-fun m!12891 () Bool)

(assert (=> b!8570 m!12891))

(check-sat (not b!8569) (not b!8568) (not b!8582) (not b!8574) (not b!8577) (not b!8570) (not b!8576) (not b!8580) (not b!8571) (not start!1673) (not b!8573) (not b!8578))
(check-sat)
