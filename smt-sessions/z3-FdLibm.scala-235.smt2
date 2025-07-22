; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1331 () Bool)

(assert start!1331)

(declare-fun b!6199 () Bool)

(declare-fun res!5026 () Bool)

(declare-fun e!3456 () Bool)

(assert (=> b!6199 (=> res!5026 e!3456)))

(declare-datatypes ((array!564 0))(
  ( (array!565 (arr!253 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!253 (_ BitVec 32))) )
))
(declare-fun f!79 () array!564)

(declare-fun fInv!0 (array!564) Bool)

(assert (=> b!6199 (= res!5026 (not (fInv!0 f!79)))))

(declare-fun res!5019 () Bool)

(declare-fun e!3462 () Bool)

(assert (=> start!1331 (=> (not res!5019) (not e!3462))))

(declare-fun jz!36 () (_ BitVec 32))

(declare-fun e!19 () (_ BitVec 32))

(assert (=> start!1331 (= res!5019 (and (bvsle #b00000000000000000000000000000000 jz!36) (bvsle jz!36 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!19) (bvsle e!19 #b00000000000000000000001111110000) (= (bvsrem e!19 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1331 e!3462))

(declare-fun array_inv!203 (array!564) Bool)

(assert (=> start!1331 (array_inv!203 f!79)))

(declare-fun q!51 () array!564)

(assert (=> start!1331 (array_inv!203 q!51)))

(assert (=> start!1331 true))

(declare-fun xx!50 () array!564)

(assert (=> start!1331 (array_inv!203 xx!50)))

(declare-fun b!6200 () Bool)

(declare-fun e!3457 () Bool)

(declare-fun e!3458 () Bool)

(assert (=> b!6200 (= e!3457 e!3458)))

(declare-fun res!5017 () Bool)

(assert (=> b!6200 (=> (not res!5017) (not e!3458))))

(declare-fun lt!3413 () (_ BitVec 32))

(assert (=> b!6200 (= res!5017 (bvsle lt!3413 jz!36))))

(declare-fun i!190 () (_ BitVec 32))

(assert (=> b!6200 (= lt!3413 (bvadd i!190 #b00000000000000000000000000000001))))

(declare-fun b!6201 () Bool)

(declare-fun e!3455 () Bool)

(assert (=> b!6201 (= e!3455 e!3456)))

(declare-fun res!5013 () Bool)

(assert (=> b!6201 (=> res!5013 e!3456)))

(assert (=> b!6201 (= res!5013 (or (bvsgt #b00000000000000000000000000000000 lt!3413) (bvsgt lt!3413 (bvadd jz!36 #b00000000000000000000000000000001))))))

(declare-datatypes ((Unit!424 0))(
  ( (Unit!425) )
))
(declare-datatypes ((tuple3!100 0))(
  ( (tuple3!101 (_1!164 Unit!424) (_2!164 (_ BitVec 32)) (_3!150 array!564)) )
))
(declare-fun lt!3406 () tuple3!100)

(declare-fun e!3459 () tuple3!100)

(assert (=> b!6201 (= lt!3406 e!3459)))

(declare-fun lt!3414 () (_ BitVec 32))

(declare-fun c!800 () Bool)

(assert (=> b!6201 (= c!800 (bvsle lt!3414 (bvadd (bvsub (size!253 xx!50) #b00000000000000000000000000000001) jz!36)))))

(assert (=> b!6201 (= lt!3414 #b00000000000000000000000000000000)))

(declare-fun lt!3407 () array!564)

(assert (=> b!6201 (= lt!3407 (array!565 ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000010100))))

(declare-fun b!6202 () Bool)

(declare-fun res!5023 () Bool)

(assert (=> b!6202 (=> (not res!5023) (not e!3457))))

(declare-fun Q!0 ((_ FloatingPoint 11 53)) Bool)

(assert (=> b!6202 (= res!5023 (Q!0 (select (arr!253 f!79) i!190)))))

(declare-fun b!6203 () Bool)

(assert (=> b!6203 (= e!3458 e!3455)))

(declare-fun res!5018 () Bool)

(assert (=> b!6203 (=> (not res!5018) (not e!3455))))

(declare-fun lt!3408 () (_ BitVec 32))

(assert (=> b!6203 (= res!5018 (= (bvsub e!19 (bvmul #b00000000000000000000000000011000 (bvadd (ite (bvslt lt!3408 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!3408) #b00000000000000000000000000000001))) #b00000000000000000000000000000000))))

(assert (=> b!6203 (= lt!3408 (bvsdiv (bvsub e!19 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(declare-fun b!6204 () Bool)

(declare-fun qInv!0 (array!564) Bool)

(assert (=> b!6204 (= e!3456 (not (qInv!0 (array!565 (store (arr!253 q!51) i!190 (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven (select (arr!253 xx!50) #b00000000000000000000000000000000) (select (arr!253 f!79) (bvadd i!190 #b00000000000000000000000000000100))) (fp.mul roundNearestTiesToEven (select (arr!253 xx!50) #b00000000000000000000000000000001) (select (arr!253 f!79) (bvadd i!190 #b00000000000000000000000000000011)))) (fp.mul roundNearestTiesToEven (select (arr!253 xx!50) #b00000000000000000000000000000010) (select (arr!253 f!79) (bvadd i!190 #b00000000000000000000000000000010)))) (fp.mul roundNearestTiesToEven (select (arr!253 xx!50) #b00000000000000000000000000000011) (select (arr!253 f!79) (bvadd i!190 #b00000000000000000000000000000001)))) (fp.mul roundNearestTiesToEven (select (arr!253 xx!50) #b00000000000000000000000000000100) (select (arr!253 f!79) i!190)))) (size!253 q!51)))))))

(declare-fun b!6205 () Bool)

(declare-fun timesTwoOverPiWhile!0 ((_ BitVec 32) (_ BitVec 32) array!564 (_ BitVec 32) array!564) tuple3!100)

(assert (=> b!6205 (= e!3459 (timesTwoOverPiWhile!0 e!19 jz!36 xx!50 lt!3414 lt!3407))))

(declare-fun b!6206 () Bool)

(declare-fun res!5015 () Bool)

(assert (=> b!6206 (=> (not res!5015) (not e!3457))))

(assert (=> b!6206 (= res!5015 (qInv!0 q!51))))

(declare-fun b!6207 () Bool)

(declare-fun res!5021 () Bool)

(assert (=> b!6207 (=> (not res!5021) (not e!3457))))

(assert (=> b!6207 (= res!5021 (fInv!0 f!79))))

(declare-fun b!6208 () Bool)

(declare-fun res!5027 () Bool)

(assert (=> b!6208 (=> (not res!5027) (not e!3457))))

(declare-fun P!3 ((_ FloatingPoint 11 53)) Bool)

(assert (=> b!6208 (= res!5027 (P!3 (select (store (arr!253 q!51) i!190 (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven (select (arr!253 xx!50) #b00000000000000000000000000000000) (select (arr!253 f!79) (bvadd i!190 #b00000000000000000000000000000100))) (fp.mul roundNearestTiesToEven (select (arr!253 xx!50) #b00000000000000000000000000000001) (select (arr!253 f!79) (bvadd i!190 #b00000000000000000000000000000011)))) (fp.mul roundNearestTiesToEven (select (arr!253 xx!50) #b00000000000000000000000000000010) (select (arr!253 f!79) (bvadd i!190 #b00000000000000000000000000000010)))) (fp.mul roundNearestTiesToEven (select (arr!253 xx!50) #b00000000000000000000000000000011) (select (arr!253 f!79) (bvadd i!190 #b00000000000000000000000000000001)))) (fp.mul roundNearestTiesToEven (select (arr!253 xx!50) #b00000000000000000000000000000100) (select (arr!253 f!79) i!190)))) i!190)))))

(declare-fun b!6209 () Bool)

(declare-fun res!5020 () Bool)

(assert (=> b!6209 (=> (not res!5020) (not e!3457))))

(assert (=> b!6209 (= res!5020 (Q!0 (select (arr!253 f!79) (bvadd i!190 #b00000000000000000000000000000001))))))

(declare-fun b!6210 () Bool)

(declare-fun res!5012 () Bool)

(assert (=> b!6210 (=> (not res!5012) (not e!3462))))

(declare-fun xxInv!0 (array!564) Bool)

(assert (=> b!6210 (= res!5012 (xxInv!0 xx!50))))

(declare-fun b!6211 () Bool)

(declare-fun res!5022 () Bool)

(assert (=> b!6211 (=> (not res!5022) (not e!3457))))

(assert (=> b!6211 (= res!5022 (Q!0 (select (arr!253 f!79) (bvadd i!190 #b00000000000000000000000000000100))))))

(declare-fun b!6212 () Bool)

(declare-fun Unit!426 () Unit!424)

(assert (=> b!6212 (= e!3459 (tuple3!101 Unit!426 lt!3414 lt!3407))))

(declare-fun b!6213 () Bool)

(declare-fun res!5014 () Bool)

(assert (=> b!6213 (=> (not res!5014) (not e!3457))))

(assert (=> b!6213 (= res!5014 (Q!0 (select (arr!253 f!79) (bvadd i!190 #b00000000000000000000000000000010))))))

(declare-fun b!6214 () Bool)

(declare-fun res!5028 () Bool)

(assert (=> b!6214 (=> (not res!5028) (not e!3457))))

(assert (=> b!6214 (= res!5028 (Q!0 (select (arr!253 f!79) (bvadd i!190 #b00000000000000000000000000000011))))))

(declare-fun b!6215 () Bool)

(declare-fun e!3463 () Bool)

(assert (=> b!6215 (= e!3462 e!3463)))

(declare-fun res!5024 () Bool)

(assert (=> b!6215 (=> (not res!5024) (not e!3463))))

(declare-fun lt!3411 () (_ BitVec 32))

(assert (=> b!6215 (= res!5024 (= (bvsub e!19 (bvmul #b00000000000000000000000000011000 (bvadd (ite (bvslt lt!3411 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!3411) #b00000000000000000000000000000001))) #b00000000000000000000000000000000))))

(assert (=> b!6215 (= lt!3411 (bvsdiv (bvsub e!19 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(declare-fun b!6216 () Bool)

(declare-fun e!3460 () tuple3!100)

(declare-fun lt!3412 () (_ BitVec 32))

(declare-fun lt!3409 () array!564)

(declare-fun Unit!427 () Unit!424)

(assert (=> b!6216 (= e!3460 (tuple3!101 Unit!427 lt!3412 lt!3409))))

(declare-fun b!6217 () Bool)

(declare-fun res!5016 () Bool)

(assert (=> b!6217 (=> (not res!5016) (not e!3457))))

(assert (=> b!6217 (= res!5016 (bvsle i!190 jz!36))))

(declare-fun b!6218 () Bool)

(assert (=> b!6218 (= e!3463 e!3457)))

(declare-fun res!5025 () Bool)

(assert (=> b!6218 (=> (not res!5025) (not e!3457))))

(assert (=> b!6218 (= res!5025 (and (bvsle #b00000000000000000000000000000000 i!190) (bvsle i!190 (bvadd jz!36 #b00000000000000000000000000000001))))))

(declare-fun lt!3410 () tuple3!100)

(assert (=> b!6218 (= lt!3410 e!3460)))

(declare-fun c!801 () Bool)

(assert (=> b!6218 (= c!801 (bvsle lt!3412 (bvadd (bvsub (size!253 xx!50) #b00000000000000000000000000000001) jz!36)))))

(assert (=> b!6218 (= lt!3412 #b00000000000000000000000000000000)))

(assert (=> b!6218 (= lt!3409 (array!565 ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000010100))))

(declare-fun b!6219 () Bool)

(assert (=> b!6219 (= e!3460 (timesTwoOverPiWhile!0 e!19 jz!36 xx!50 lt!3412 lt!3409))))

(assert (= (and start!1331 res!5019) b!6210))

(assert (= (and b!6210 res!5012) b!6215))

(assert (= (and b!6215 res!5024) b!6218))

(assert (= (and b!6218 c!801) b!6219))

(assert (= (and b!6218 (not c!801)) b!6216))

(assert (= (and b!6218 res!5025) b!6207))

(assert (= (and b!6207 res!5021) b!6206))

(assert (= (and b!6206 res!5015) b!6217))

(assert (= (and b!6217 res!5016) b!6211))

(assert (= (and b!6211 res!5022) b!6214))

(assert (= (and b!6214 res!5028) b!6213))

(assert (= (and b!6213 res!5014) b!6209))

(assert (= (and b!6209 res!5020) b!6202))

(assert (= (and b!6202 res!5023) b!6208))

(assert (= (and b!6208 res!5027) b!6200))

(assert (= (and b!6200 res!5017) b!6203))

(assert (= (and b!6203 res!5018) b!6201))

(assert (= (and b!6201 c!800) b!6205))

(assert (= (and b!6201 (not c!800)) b!6212))

(assert (= (and b!6201 (not res!5013)) b!6199))

(assert (= (and b!6199 (not res!5026)) b!6204))

(declare-fun m!10091 () Bool)

(assert (=> b!6219 m!10091))

(declare-fun m!10093 () Bool)

(assert (=> b!6208 m!10093))

(declare-fun m!10095 () Bool)

(assert (=> b!6208 m!10095))

(declare-fun m!10097 () Bool)

(assert (=> b!6208 m!10097))

(declare-fun m!10099 () Bool)

(assert (=> b!6208 m!10099))

(declare-fun m!10101 () Bool)

(assert (=> b!6208 m!10101))

(declare-fun m!10103 () Bool)

(assert (=> b!6208 m!10103))

(declare-fun m!10105 () Bool)

(assert (=> b!6208 m!10105))

(declare-fun m!10107 () Bool)

(assert (=> b!6208 m!10107))

(assert (=> b!6208 m!10103))

(declare-fun m!10109 () Bool)

(assert (=> b!6208 m!10109))

(declare-fun m!10111 () Bool)

(assert (=> b!6208 m!10111))

(declare-fun m!10113 () Bool)

(assert (=> b!6208 m!10113))

(declare-fun m!10115 () Bool)

(assert (=> b!6208 m!10115))

(declare-fun m!10117 () Bool)

(assert (=> b!6208 m!10117))

(declare-fun m!10119 () Bool)

(assert (=> b!6210 m!10119))

(assert (=> b!6213 m!10097))

(assert (=> b!6213 m!10097))

(declare-fun m!10121 () Bool)

(assert (=> b!6213 m!10121))

(declare-fun m!10123 () Bool)

(assert (=> b!6205 m!10123))

(declare-fun m!10125 () Bool)

(assert (=> b!6207 m!10125))

(assert (=> b!6214 m!10095))

(assert (=> b!6214 m!10095))

(declare-fun m!10127 () Bool)

(assert (=> b!6214 m!10127))

(assert (=> b!6204 m!10093))

(assert (=> b!6204 m!10095))

(assert (=> b!6204 m!10097))

(assert (=> b!6204 m!10099))

(assert (=> b!6204 m!10101))

(assert (=> b!6204 m!10105))

(assert (=> b!6204 m!10107))

(declare-fun m!10129 () Bool)

(assert (=> b!6204 m!10129))

(assert (=> b!6204 m!10111))

(assert (=> b!6204 m!10113))

(assert (=> b!6204 m!10115))

(assert (=> b!6204 m!10117))

(assert (=> b!6209 m!10099))

(assert (=> b!6209 m!10099))

(declare-fun m!10131 () Bool)

(assert (=> b!6209 m!10131))

(declare-fun m!10133 () Bool)

(assert (=> b!6206 m!10133))

(assert (=> b!6199 m!10125))

(declare-fun m!10135 () Bool)

(assert (=> start!1331 m!10135))

(declare-fun m!10137 () Bool)

(assert (=> start!1331 m!10137))

(declare-fun m!10139 () Bool)

(assert (=> start!1331 m!10139))

(assert (=> b!6211 m!10093))

(assert (=> b!6211 m!10093))

(declare-fun m!10141 () Bool)

(assert (=> b!6211 m!10141))

(assert (=> b!6202 m!10111))

(assert (=> b!6202 m!10111))

(declare-fun m!10143 () Bool)

(assert (=> b!6202 m!10143))

(check-sat (not b!6207) (not b!6219) (not b!6209) (not b!6206) (not b!6204) (not b!6208) (not b!6211) (not b!6213) (not b!6202) (not b!6199) (not b!6205) (not start!1331) (not b!6214) (not b!6210))
(check-sat)
