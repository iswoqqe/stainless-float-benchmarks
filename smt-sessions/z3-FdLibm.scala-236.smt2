; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1333 () Bool)

(assert start!1333)

(declare-datatypes ((array!566 0))(
  ( (array!567 (arr!254 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!254 (_ BitVec 32))) )
))
(declare-fun lt!3436 () array!566)

(declare-fun b!6258 () Bool)

(declare-fun e!19 () (_ BitVec 32))

(declare-fun jz!36 () (_ BitVec 32))

(declare-datatypes ((Unit!428 0))(
  ( (Unit!429) )
))
(declare-datatypes ((tuple3!102 0))(
  ( (tuple3!103 (_1!165 Unit!428) (_2!165 (_ BitVec 32)) (_3!151 array!566)) )
))
(declare-fun e!3486 () tuple3!102)

(declare-fun xx!50 () array!566)

(declare-fun lt!3434 () (_ BitVec 32))

(declare-fun timesTwoOverPiWhile!0 ((_ BitVec 32) (_ BitVec 32) array!566 (_ BitVec 32) array!566) tuple3!102)

(assert (=> b!6258 (= e!3486 (timesTwoOverPiWhile!0 e!19 jz!36 xx!50 lt!3434 lt!3436))))

(declare-fun b!6259 () Bool)

(declare-fun res!5073 () Bool)

(declare-fun e!3493 () Bool)

(assert (=> b!6259 (=> (not res!5073) (not e!3493))))

(declare-fun f!79 () array!566)

(declare-fun fInv!0 (array!566) Bool)

(assert (=> b!6259 (= res!5073 (fInv!0 f!79))))

(declare-fun b!6260 () Bool)

(declare-fun e!3487 () Bool)

(assert (=> b!6260 (= e!3493 e!3487)))

(declare-fun res!5072 () Bool)

(assert (=> b!6260 (=> (not res!5072) (not e!3487))))

(declare-fun lt!3435 () (_ BitVec 32))

(assert (=> b!6260 (= res!5072 (bvsle lt!3435 jz!36))))

(declare-fun i!190 () (_ BitVec 32))

(assert (=> b!6260 (= lt!3435 (bvadd i!190 #b00000000000000000000000000000001))))

(declare-fun b!6261 () Bool)

(declare-fun res!5067 () Bool)

(assert (=> b!6261 (=> (not res!5067) (not e!3493))))

(assert (=> b!6261 (= res!5067 (bvsle i!190 jz!36))))

(declare-fun b!6262 () Bool)

(declare-fun res!5062 () Bool)

(assert (=> b!6262 (=> (not res!5062) (not e!3493))))

(declare-fun Q!0 ((_ FloatingPoint 11 53)) Bool)

(assert (=> b!6262 (= res!5062 (Q!0 (select (arr!254 f!79) i!190)))))

(declare-fun b!6263 () Bool)

(declare-fun res!5060 () Bool)

(assert (=> b!6263 (=> (not res!5060) (not e!3493))))

(declare-fun q!51 () array!566)

(declare-fun P!3 ((_ FloatingPoint 11 53)) Bool)

(assert (=> b!6263 (= res!5060 (P!3 (select (store (arr!254 q!51) i!190 (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven (select (arr!254 xx!50) #b00000000000000000000000000000000) (select (arr!254 f!79) (bvadd i!190 #b00000000000000000000000000000100))) (fp.mul roundNearestTiesToEven (select (arr!254 xx!50) #b00000000000000000000000000000001) (select (arr!254 f!79) (bvadd i!190 #b00000000000000000000000000000011)))) (fp.mul roundNearestTiesToEven (select (arr!254 xx!50) #b00000000000000000000000000000010) (select (arr!254 f!79) (bvadd i!190 #b00000000000000000000000000000010)))) (fp.mul roundNearestTiesToEven (select (arr!254 xx!50) #b00000000000000000000000000000011) (select (arr!254 f!79) (bvadd i!190 #b00000000000000000000000000000001)))) (fp.mul roundNearestTiesToEven (select (arr!254 xx!50) #b00000000000000000000000000000100) (select (arr!254 f!79) i!190)))) i!190)))))

(declare-fun res!5061 () Bool)

(declare-fun e!3488 () Bool)

(assert (=> start!1333 (=> (not res!5061) (not e!3488))))

(assert (=> start!1333 (= res!5061 (and (bvsle #b00000000000000000000000000000000 jz!36) (bvsle jz!36 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!19) (bvsle e!19 #b00000000000000000000001111110000) (= (bvsrem e!19 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1333 e!3488))

(declare-fun array_inv!204 (array!566) Bool)

(assert (=> start!1333 (array_inv!204 f!79)))

(assert (=> start!1333 (array_inv!204 q!51)))

(assert (=> start!1333 true))

(assert (=> start!1333 (array_inv!204 xx!50)))

(declare-fun b!6264 () Bool)

(declare-fun e!3491 () tuple3!102)

(declare-fun lt!3439 () (_ BitVec 32))

(declare-fun lt!3441 () array!566)

(declare-fun Unit!430 () Unit!428)

(assert (=> b!6264 (= e!3491 (tuple3!103 Unit!430 lt!3439 lt!3441))))

(declare-fun b!6265 () Bool)

(declare-fun e!3489 () Bool)

(assert (=> b!6265 (= e!3489 e!3493)))

(declare-fun res!5068 () Bool)

(assert (=> b!6265 (=> (not res!5068) (not e!3493))))

(assert (=> b!6265 (= res!5068 (and (bvsle #b00000000000000000000000000000000 i!190) (bvsle i!190 (bvadd jz!36 #b00000000000000000000000000000001))))))

(declare-fun lt!3438 () tuple3!102)

(assert (=> b!6265 (= lt!3438 e!3491)))

(declare-fun c!807 () Bool)

(assert (=> b!6265 (= c!807 (bvsle lt!3439 (bvadd (bvsub (size!254 xx!50) #b00000000000000000000000000000001) jz!36)))))

(assert (=> b!6265 (= lt!3439 #b00000000000000000000000000000000)))

(assert (=> b!6265 (= lt!3441 (array!567 ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000010100))))

(declare-fun b!6266 () Bool)

(declare-fun Unit!431 () Unit!428)

(assert (=> b!6266 (= e!3486 (tuple3!103 Unit!431 lt!3434 lt!3436))))

(declare-fun b!6267 () Bool)

(declare-fun res!5059 () Bool)

(assert (=> b!6267 (=> (not res!5059) (not e!3493))))

(assert (=> b!6267 (= res!5059 (Q!0 (select (arr!254 f!79) (bvadd i!190 #b00000000000000000000000000000001))))))

(declare-fun b!6268 () Bool)

(declare-fun res!5065 () Bool)

(assert (=> b!6268 (=> (not res!5065) (not e!3488))))

(declare-fun xxInv!0 (array!566) Bool)

(assert (=> b!6268 (= res!5065 (xxInv!0 xx!50))))

(declare-fun b!6269 () Bool)

(declare-fun e!3485 () Bool)

(assert (=> b!6269 (= e!3485 (bvsgt lt!3435 jz!36))))

(declare-fun lt!3440 () tuple3!102)

(assert (=> b!6269 (= lt!3440 e!3486)))

(declare-fun c!806 () Bool)

(assert (=> b!6269 (= c!806 (bvsle lt!3434 (bvadd (bvsub (size!254 xx!50) #b00000000000000000000000000000001) jz!36)))))

(assert (=> b!6269 (= lt!3434 #b00000000000000000000000000000000)))

(assert (=> b!6269 (= lt!3436 (array!567 ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000010100))))

(declare-fun b!6270 () Bool)

(declare-fun res!5071 () Bool)

(assert (=> b!6270 (=> (not res!5071) (not e!3493))))

(assert (=> b!6270 (= res!5071 (Q!0 (select (arr!254 f!79) (bvadd i!190 #b00000000000000000000000000000011))))))

(declare-fun b!6271 () Bool)

(assert (=> b!6271 (= e!3488 e!3489)))

(declare-fun res!5070 () Bool)

(assert (=> b!6271 (=> (not res!5070) (not e!3489))))

(declare-fun lt!3433 () (_ BitVec 32))

(assert (=> b!6271 (= res!5070 (= (bvsub e!19 (bvmul #b00000000000000000000000000011000 (bvadd (ite (bvslt lt!3433 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!3433) #b00000000000000000000000000000001))) #b00000000000000000000000000000000))))

(assert (=> b!6271 (= lt!3433 (bvsdiv (bvsub e!19 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(declare-fun b!6272 () Bool)

(assert (=> b!6272 (= e!3491 (timesTwoOverPiWhile!0 e!19 jz!36 xx!50 lt!3439 lt!3441))))

(declare-fun b!6273 () Bool)

(assert (=> b!6273 (= e!3487 e!3485)))

(declare-fun res!5069 () Bool)

(assert (=> b!6273 (=> (not res!5069) (not e!3485))))

(declare-fun lt!3437 () (_ BitVec 32))

(assert (=> b!6273 (= res!5069 (= (bvsub e!19 (bvmul #b00000000000000000000000000011000 (bvadd (ite (bvslt lt!3437 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!3437) #b00000000000000000000000000000001))) #b00000000000000000000000000000000))))

(assert (=> b!6273 (= lt!3437 (bvsdiv (bvsub e!19 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(declare-fun b!6274 () Bool)

(declare-fun res!5063 () Bool)

(assert (=> b!6274 (=> (not res!5063) (not e!3493))))

(assert (=> b!6274 (= res!5063 (Q!0 (select (arr!254 f!79) (bvadd i!190 #b00000000000000000000000000000010))))))

(declare-fun b!6275 () Bool)

(declare-fun res!5064 () Bool)

(assert (=> b!6275 (=> (not res!5064) (not e!3493))))

(declare-fun qInv!0 (array!566) Bool)

(assert (=> b!6275 (= res!5064 (qInv!0 q!51))))

(declare-fun b!6276 () Bool)

(declare-fun res!5066 () Bool)

(assert (=> b!6276 (=> (not res!5066) (not e!3493))))

(assert (=> b!6276 (= res!5066 (Q!0 (select (arr!254 f!79) (bvadd i!190 #b00000000000000000000000000000100))))))

(assert (= (and start!1333 res!5061) b!6268))

(assert (= (and b!6268 res!5065) b!6271))

(assert (= (and b!6271 res!5070) b!6265))

(assert (= (and b!6265 c!807) b!6272))

(assert (= (and b!6265 (not c!807)) b!6264))

(assert (= (and b!6265 res!5068) b!6259))

(assert (= (and b!6259 res!5073) b!6275))

(assert (= (and b!6275 res!5064) b!6261))

(assert (= (and b!6261 res!5067) b!6276))

(assert (= (and b!6276 res!5066) b!6270))

(assert (= (and b!6270 res!5071) b!6274))

(assert (= (and b!6274 res!5063) b!6267))

(assert (= (and b!6267 res!5059) b!6262))

(assert (= (and b!6262 res!5062) b!6263))

(assert (= (and b!6263 res!5060) b!6260))

(assert (= (and b!6260 res!5072) b!6273))

(assert (= (and b!6273 res!5069) b!6269))

(assert (= (and b!6269 c!806) b!6258))

(assert (= (and b!6269 (not c!806)) b!6266))

(declare-fun m!10145 () Bool)

(assert (=> b!6274 m!10145))

(assert (=> b!6274 m!10145))

(declare-fun m!10147 () Bool)

(assert (=> b!6274 m!10147))

(declare-fun m!10149 () Bool)

(assert (=> b!6268 m!10149))

(declare-fun m!10151 () Bool)

(assert (=> b!6267 m!10151))

(assert (=> b!6267 m!10151))

(declare-fun m!10153 () Bool)

(assert (=> b!6267 m!10153))

(declare-fun m!10155 () Bool)

(assert (=> b!6272 m!10155))

(declare-fun m!10157 () Bool)

(assert (=> start!1333 m!10157))

(declare-fun m!10159 () Bool)

(assert (=> start!1333 m!10159))

(declare-fun m!10161 () Bool)

(assert (=> start!1333 m!10161))

(declare-fun m!10163 () Bool)

(assert (=> b!6262 m!10163))

(assert (=> b!6262 m!10163))

(declare-fun m!10165 () Bool)

(assert (=> b!6262 m!10165))

(declare-fun m!10167 () Bool)

(assert (=> b!6276 m!10167))

(assert (=> b!6276 m!10167))

(declare-fun m!10169 () Bool)

(assert (=> b!6276 m!10169))

(assert (=> b!6263 m!10167))

(declare-fun m!10171 () Bool)

(assert (=> b!6263 m!10171))

(assert (=> b!6263 m!10145))

(assert (=> b!6263 m!10151))

(declare-fun m!10173 () Bool)

(assert (=> b!6263 m!10173))

(declare-fun m!10175 () Bool)

(assert (=> b!6263 m!10175))

(declare-fun m!10177 () Bool)

(assert (=> b!6263 m!10177))

(declare-fun m!10179 () Bool)

(assert (=> b!6263 m!10179))

(assert (=> b!6263 m!10175))

(declare-fun m!10181 () Bool)

(assert (=> b!6263 m!10181))

(assert (=> b!6263 m!10163))

(declare-fun m!10183 () Bool)

(assert (=> b!6263 m!10183))

(declare-fun m!10185 () Bool)

(assert (=> b!6263 m!10185))

(declare-fun m!10187 () Bool)

(assert (=> b!6263 m!10187))

(assert (=> b!6270 m!10171))

(assert (=> b!6270 m!10171))

(declare-fun m!10189 () Bool)

(assert (=> b!6270 m!10189))

(declare-fun m!10191 () Bool)

(assert (=> b!6275 m!10191))

(declare-fun m!10193 () Bool)

(assert (=> b!6259 m!10193))

(declare-fun m!10195 () Bool)

(assert (=> b!6258 m!10195))

(check-sat (not b!6272) (not b!6259) (not b!6258) (not b!6270) (not b!6276) (not b!6262) (not b!6268) (not b!6263) (not b!6274) (not start!1333) (not b!6275) (not b!6267))
(check-sat)
