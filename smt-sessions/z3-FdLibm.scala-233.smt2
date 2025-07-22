; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1317 () Bool)

(assert start!1317)

(declare-fun b!6077 () Bool)

(declare-fun e!3385 () Bool)

(declare-fun e!3384 () Bool)

(assert (=> b!6077 (= e!3385 e!3384)))

(declare-fun res!4932 () Bool)

(assert (=> b!6077 (=> (not res!4932) (not e!3384))))

(declare-fun e!10 () (_ BitVec 32))

(declare-fun lt!3333 () (_ BitVec 32))

(assert (=> b!6077 (= res!4932 (= (bvsub e!10 (bvmul #b00000000000000000000000000011000 (bvadd (ite (bvslt lt!3333 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!3333) #b00000000000000000000000000000001))) #b00000000000000000000000000000000))))

(assert (=> b!6077 (= lt!3333 (bvsdiv (bvsub e!10 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(declare-datatypes ((array!559 0))(
  ( (array!560 (arr!251 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!251 (_ BitVec 32))) )
))
(declare-datatypes ((Unit!412 0))(
  ( (Unit!413) )
))
(declare-datatypes ((tuple3!96 0))(
  ( (tuple3!97 (_1!160 Unit!412) (_2!160 (_ BitVec 32)) (_3!147 array!559)) )
))
(declare-fun e!3386 () tuple3!96)

(declare-fun b!6078 () Bool)

(declare-fun xx!37 () array!559)

(declare-fun lt!3331 () (_ BitVec 32))

(declare-fun jz!27 () (_ BitVec 32))

(declare-fun lt!3332 () array!559)

(declare-fun timesTwoOverPiWhile!0 ((_ BitVec 32) (_ BitVec 32) array!559 (_ BitVec 32) array!559) tuple3!96)

(assert (=> b!6078 (= e!3386 (timesTwoOverPiWhile!0 e!10 jz!27 xx!37 lt!3331 lt!3332))))

(declare-fun res!4931 () Bool)

(assert (=> start!1317 (=> (not res!4931) (not e!3385))))

(assert (=> start!1317 (= res!4931 (and (bvsle #b00000000000000000000000000000000 jz!27) (bvsle jz!27 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!10) (bvsle e!10 #b00000000000000000000001111110000) (= (bvsrem e!10 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1317 e!3385))

(assert (=> start!1317 true))

(declare-fun array_inv!201 (array!559) Bool)

(assert (=> start!1317 (array_inv!201 xx!37)))

(declare-fun b!6079 () Bool)

(declare-fun res!4930 () Bool)

(assert (=> b!6079 (=> (not res!4930) (not e!3385))))

(declare-fun xxInv!0 (array!559) Bool)

(assert (=> b!6079 (= res!4930 (xxInv!0 xx!37))))

(declare-fun b!6080 () Bool)

(declare-fun Unit!414 () Unit!412)

(assert (=> b!6080 (= e!3386 (tuple3!97 Unit!414 lt!3331 lt!3332))))

(declare-fun b!6081 () Bool)

(assert (=> b!6081 (= e!3384 false)))

(declare-fun lt!3330 () tuple3!96)

(assert (=> b!6081 (= lt!3330 e!3386)))

(declare-fun c!780 () Bool)

(assert (=> b!6081 (= c!780 (bvsle lt!3331 (bvadd (bvsub (size!251 xx!37) #b00000000000000000000000000000001) jz!27)))))

(assert (=> b!6081 (= lt!3331 #b00000000000000000000000000000000)))

(assert (=> b!6081 (= lt!3332 (array!560 ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000010100))))

(assert (= (and start!1317 res!4931) b!6079))

(assert (= (and b!6079 res!4930) b!6077))

(assert (= (and b!6077 res!4932) b!6081))

(assert (= (and b!6081 c!780) b!6078))

(assert (= (and b!6081 (not c!780)) b!6080))

(declare-fun m!10027 () Bool)

(assert (=> b!6078 m!10027))

(declare-fun m!10029 () Bool)

(assert (=> start!1317 m!10029))

(declare-fun m!10031 () Bool)

(assert (=> b!6079 m!10031))

(check-sat (not start!1317) (not b!6078) (not b!6079))
(check-sat)
