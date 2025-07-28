; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1343 () Bool)

(assert start!1343)

(declare-datatypes ((array!562 0))(
  ( (array!563 (arr!251 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!251 (_ BitVec 32))) )
))
(declare-fun lt!3403 () array!562)

(declare-fun e!10 () (_ BitVec 32))

(declare-fun xx!37 () array!562)

(declare-fun b!6445 () Bool)

(declare-fun lt!3404 () (_ BitVec 32))

(declare-datatypes ((Unit!427 0))(
  ( (Unit!428) )
))
(declare-datatypes ((tuple3!96 0))(
  ( (tuple3!97 (_1!160 Unit!427) (_2!160 (_ BitVec 32)) (_3!147 array!562)) )
))
(declare-fun e!3456 () tuple3!96)

(declare-fun jz!27 () (_ BitVec 32))

(declare-fun timesTwoOverPiWhile!0 ((_ BitVec 32) (_ BitVec 32) array!562 (_ BitVec 32) array!562) tuple3!96)

(assert (=> b!6445 (= e!3456 (timesTwoOverPiWhile!0 e!10 jz!27 xx!37 lt!3404 lt!3403))))

(declare-fun b!6446 () Bool)

(declare-fun Unit!429 () Unit!427)

(assert (=> b!6446 (= e!3456 (tuple3!97 Unit!429 lt!3404 lt!3403))))

(declare-fun res!5269 () Bool)

(declare-fun e!3458 () Bool)

(assert (=> start!1343 (=> (not res!5269) (not e!3458))))

(assert (=> start!1343 (= res!5269 (and (bvsle #b00000000000000000000000000000000 jz!27) (bvsle jz!27 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!10) (bvsle e!10 #b00000000000000000000001111110000) (= (bvsrem e!10 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1343 e!3458))

(assert (=> start!1343 true))

(declare-fun array_inv!201 (array!562) Bool)

(assert (=> start!1343 (array_inv!201 xx!37)))

(declare-fun b!6447 () Bool)

(declare-fun e!3457 () Bool)

(assert (=> b!6447 (= e!3457 false)))

(declare-fun lt!3402 () tuple3!96)

(assert (=> b!6447 (= lt!3402 e!3456)))

(declare-fun c!795 () Bool)

(assert (=> b!6447 (= c!795 (bvsle lt!3404 (bvadd (bvsub (size!251 xx!37) #b00000000000000000000000000000001) jz!27)))))

(assert (=> b!6447 (= lt!3404 #b00000000000000000000000000000000)))

(assert (=> b!6447 (= lt!3403 (array!563 ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000010100))))

(declare-fun b!6448 () Bool)

(assert (=> b!6448 (= e!3458 e!3457)))

(declare-fun res!5270 () Bool)

(assert (=> b!6448 (=> (not res!5270) (not e!3457))))

(declare-fun lt!3405 () (_ BitVec 32))

(assert (=> b!6448 (= res!5270 (= (bvsub e!10 (bvmul #b00000000000000000000000000011000 (bvadd (ite (bvslt lt!3405 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!3405) #b00000000000000000000000000000001))) #b00000000000000000000000000000000))))

(assert (=> b!6448 (= lt!3405 (bvsdiv (bvsub e!10 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(declare-fun b!6449 () Bool)

(declare-fun res!5268 () Bool)

(assert (=> b!6449 (=> (not res!5268) (not e!3458))))

(declare-fun xxInv!0 (array!562) Bool)

(assert (=> b!6449 (= res!5268 (xxInv!0 xx!37))))

(assert (= (and start!1343 res!5269) b!6449))

(assert (= (and b!6449 res!5268) b!6448))

(assert (= (and b!6448 res!5270) b!6447))

(assert (= (and b!6447 c!795) b!6445))

(assert (= (and b!6447 (not c!795)) b!6446))

(declare-fun m!11851 () Bool)

(assert (=> b!6445 m!11851))

(declare-fun m!11853 () Bool)

(assert (=> start!1343 m!11853))

(declare-fun m!11855 () Bool)

(assert (=> b!6449 m!11855))

(check-sat (not b!6449) (not b!6445) (not start!1343))
(check-sat)
