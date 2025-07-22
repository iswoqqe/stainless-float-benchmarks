; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1291 () Bool)

(assert start!1291)

(declare-fun jz!27 () (_ BitVec 32))

(declare-datatypes ((array!539 0))(
  ( (array!540 (arr!242 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!242 (_ BitVec 32))) )
))
(declare-fun lt!3285 () array!539)

(declare-fun lt!3289 () (_ BitVec 32))

(declare-fun e!10 () (_ BitVec 32))

(declare-fun xx!37 () array!539)

(declare-fun b!6004 () Bool)

(declare-datatypes ((Unit!408 0))(
  ( (Unit!409) )
))
(declare-datatypes ((tuple3!94 0))(
  ( (tuple3!95 (_1!159 Unit!408) (_2!159 (_ BitVec 32)) (_3!146 array!539)) )
))
(declare-fun e!3319 () tuple3!94)

(declare-fun timesTwoOverPiWhile!0 ((_ BitVec 32) (_ BitVec 32) array!539 (_ BitVec 32) array!539) tuple3!94)

(assert (=> b!6004 (= e!3319 (timesTwoOverPiWhile!0 e!10 jz!27 xx!37 lt!3289 lt!3285))))

(declare-fun b!6005 () Bool)

(declare-fun res!4869 () Bool)

(declare-fun e!3320 () Bool)

(assert (=> b!6005 (=> (not res!4869) (not e!3320))))

(declare-fun xxInv!0 (array!539) Bool)

(assert (=> b!6005 (= res!4869 (xxInv!0 xx!37))))

(declare-fun b!6006 () Bool)

(declare-fun e!3321 () tuple3!94)

(declare-fun lt!3283 () (_ BitVec 32))

(declare-fun lt!3288 () array!539)

(declare-fun Unit!410 () Unit!408)

(assert (=> b!6006 (= e!3321 (tuple3!95 Unit!410 lt!3283 lt!3288))))

(declare-fun b!6007 () Bool)

(declare-fun e!3317 () Bool)

(assert (=> b!6007 (= e!3320 e!3317)))

(declare-fun res!4867 () Bool)

(assert (=> b!6007 (=> (not res!4867) (not e!3317))))

(declare-fun lt!3287 () (_ BitVec 32))

(assert (=> b!6007 (= res!4867 (= (bvsub e!10 (bvmul #b00000000000000000000000000011000 (bvadd (ite (bvslt lt!3287 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!3287) #b00000000000000000000000000000001))) #b00000000000000000000000000000000))))

(assert (=> b!6007 (= lt!3287 (bvsdiv (bvsub e!10 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(declare-fun b!6008 () Bool)

(assert (=> b!6008 (= e!3321 (timesTwoOverPiWhile!0 e!10 jz!27 xx!37 lt!3283 lt!3288))))

(declare-fun res!4868 () Bool)

(assert (=> start!1291 (=> (not res!4868) (not e!3320))))

(assert (=> start!1291 (= res!4868 (and (bvsle #b00000000000000000000000000000000 jz!27) (bvsle jz!27 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!10) (bvsle e!10 #b00000000000000000000001111110000) (= (bvsrem e!10 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1291 e!3320))

(assert (=> start!1291 true))

(declare-fun array_inv!192 (array!539) Bool)

(assert (=> start!1291 (array_inv!192 xx!37)))

(declare-fun b!6009 () Bool)

(declare-fun e!3318 () Bool)

(declare-fun lt!3290 () (_ BitVec 32))

(assert (=> b!6009 (= e!3318 (bvsgt lt!3290 jz!27))))

(declare-fun lt!3291 () tuple3!94)

(assert (=> b!6009 (= lt!3291 e!3319)))

(declare-fun c!776 () Bool)

(assert (=> b!6009 (= c!776 (bvsle lt!3289 (bvadd (bvsub (size!242 xx!37) #b00000000000000000000000000000001) jz!27)))))

(assert (=> b!6009 (= lt!3289 #b00000000000000000000000000000000)))

(assert (=> b!6009 (= lt!3285 (array!540 ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000010100))))

(declare-fun b!6010 () Bool)

(declare-fun Unit!411 () Unit!408)

(assert (=> b!6010 (= e!3319 (tuple3!95 Unit!411 lt!3289 lt!3285))))

(declare-fun b!6011 () Bool)

(declare-fun e!3315 () Bool)

(assert (=> b!6011 (= e!3317 e!3315)))

(declare-fun res!4865 () Bool)

(assert (=> b!6011 (=> (not res!4865) (not e!3315))))

(assert (=> b!6011 (= res!4865 (bvsle lt!3290 jz!27))))

(assert (=> b!6011 (= lt!3290 #b00000000000000000000000000000000)))

(declare-fun lt!3284 () tuple3!94)

(assert (=> b!6011 (= lt!3284 e!3321)))

(declare-fun c!777 () Bool)

(assert (=> b!6011 (= c!777 (bvsle lt!3283 (bvadd (bvsub (size!242 xx!37) #b00000000000000000000000000000001) jz!27)))))

(assert (=> b!6011 (= lt!3283 #b00000000000000000000000000000000)))

(assert (=> b!6011 (= lt!3288 (array!540 ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000010100))))

(declare-fun b!6012 () Bool)

(assert (=> b!6012 (= e!3315 e!3318)))

(declare-fun res!4866 () Bool)

(assert (=> b!6012 (=> (not res!4866) (not e!3318))))

(declare-fun lt!3286 () (_ BitVec 32))

(assert (=> b!6012 (= res!4866 (= (bvsub e!10 (bvmul #b00000000000000000000000000011000 (bvadd (ite (bvslt lt!3286 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!3286) #b00000000000000000000000000000001))) #b00000000000000000000000000000000))))

(assert (=> b!6012 (= lt!3286 (bvsdiv (bvsub e!10 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(assert (= (and start!1291 res!4868) b!6005))

(assert (= (and b!6005 res!4869) b!6007))

(assert (= (and b!6007 res!4867) b!6011))

(assert (= (and b!6011 c!777) b!6008))

(assert (= (and b!6011 (not c!777)) b!6006))

(assert (= (and b!6011 res!4865) b!6012))

(assert (= (and b!6012 res!4866) b!6009))

(assert (= (and b!6009 c!776) b!6004))

(assert (= (and b!6009 (not c!776)) b!6010))

(declare-fun m!9983 () Bool)

(assert (=> b!6004 m!9983))

(declare-fun m!9985 () Bool)

(assert (=> b!6005 m!9985))

(declare-fun m!9987 () Bool)

(assert (=> b!6008 m!9987))

(declare-fun m!9989 () Bool)

(assert (=> start!1291 m!9989))

(check-sat (not b!6004) (not b!6005) (not start!1291) (not b!6008))
(check-sat)
