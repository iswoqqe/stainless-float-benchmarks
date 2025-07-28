; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1461 () Bool)

(assert start!1461)

(declare-fun b!7570 () Bool)

(declare-fun e!3937 () Bool)

(declare-fun e!3939 () Bool)

(assert (=> b!7570 (= e!3937 e!3939)))

(declare-fun res!6235 () Bool)

(assert (=> b!7570 (=> (not res!6235) (not e!3939))))

(declare-fun e!19 () (_ BitVec 32))

(declare-fun lt!3762 () (_ BitVec 32))

(assert (=> b!7570 (= res!6235 (= (bvsub e!19 (bvmul #b00000000000000000000000000011000 (bvadd (ite (bvslt lt!3762 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!3762) #b00000000000000000000000000000001))) #b00000000000000000000000000000000))))

(assert (=> b!7570 (= lt!3762 (bvsdiv (bvsub e!19 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(declare-fun b!7571 () Bool)

(declare-datatypes ((array!596 0))(
  ( (array!597 (arr!265 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!265 (_ BitVec 32))) )
))
(declare-datatypes ((Unit!507 0))(
  ( (Unit!508) )
))
(declare-datatypes ((tuple3!124 0))(
  ( (tuple3!125 (_1!181 Unit!507) (_2!181 (_ BitVec 32)) (_3!162 array!596)) )
))
(declare-fun e!3941 () tuple3!124)

(declare-fun lt!3763 () (_ BitVec 32))

(declare-fun lt!3765 () array!596)

(declare-fun Unit!509 () Unit!507)

(assert (=> b!7571 (= e!3941 (tuple3!125 Unit!509 lt!3763 lt!3765))))

(declare-fun res!6233 () Bool)

(assert (=> start!1461 (=> (not res!6233) (not e!3937))))

(declare-fun jz!36 () (_ BitVec 32))

(assert (=> start!1461 (= res!6233 (and (bvsle #b00000000000000000000000000000000 jz!36) (bvsle jz!36 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!19) (bvsle e!19 #b00000000000000000000001111110000) (= (bvsrem e!19 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1461 e!3937))

(declare-fun f!79 () array!596)

(declare-fun array_inv!215 (array!596) Bool)

(assert (=> start!1461 (array_inv!215 f!79)))

(declare-fun q!51 () array!596)

(assert (=> start!1461 (array_inv!215 q!51)))

(assert (=> start!1461 true))

(declare-fun xx!50 () array!596)

(assert (=> start!1461 (array_inv!215 xx!50)))

(declare-fun b!7572 () Bool)

(declare-fun timesTwoOverPiWhile!0 ((_ BitVec 32) (_ BitVec 32) array!596 (_ BitVec 32) array!596) tuple3!124)

(assert (=> b!7572 (= e!3941 (timesTwoOverPiWhile!0 e!19 jz!36 xx!50 lt!3763 lt!3765))))

(declare-fun b!7573 () Bool)

(declare-fun res!6238 () Bool)

(declare-fun e!3938 () Bool)

(assert (=> b!7573 (=> (not res!6238) (not e!3938))))

(declare-fun fInv!0 (array!596) Bool)

(assert (=> b!7573 (= res!6238 (fInv!0 f!79))))

(declare-fun b!7574 () Bool)

(declare-fun res!6236 () Bool)

(assert (=> b!7574 (=> (not res!6236) (not e!3938))))

(declare-fun qInv!0 (array!596) Bool)

(assert (=> b!7574 (= res!6236 (qInv!0 q!51))))

(declare-fun b!7575 () Bool)

(declare-fun res!6237 () Bool)

(assert (=> b!7575 (=> (not res!6237) (not e!3937))))

(declare-fun xxInv!0 (array!596) Bool)

(assert (=> b!7575 (= res!6237 (xxInv!0 xx!50))))

(declare-fun b!7576 () Bool)

(declare-fun i!190 () (_ BitVec 32))

(assert (=> b!7576 (= e!3938 (and (bvsle i!190 jz!36) (= (bvand i!190 #b10000000000000000000000000000000) #b00000000000000000000000000000000) (not (= (bvand i!190 #b10000000000000000000000000000000) (bvand (bvadd i!190 #b00000000000000000000000000000100) #b10000000000000000000000000000000)))))))

(declare-fun b!7577 () Bool)

(assert (=> b!7577 (= e!3939 e!3938)))

(declare-fun res!6234 () Bool)

(assert (=> b!7577 (=> (not res!6234) (not e!3938))))

(assert (=> b!7577 (= res!6234 (and (bvsle #b00000000000000000000000000000000 i!190) (bvsle i!190 (bvadd jz!36 #b00000000000000000000000000000001))))))

(declare-fun lt!3764 () tuple3!124)

(assert (=> b!7577 (= lt!3764 e!3941)))

(declare-fun c!875 () Bool)

(assert (=> b!7577 (= c!875 (bvsle lt!3763 (bvadd (bvsub (size!265 xx!50) #b00000000000000000000000000000001) jz!36)))))

(assert (=> b!7577 (= lt!3763 #b00000000000000000000000000000000)))

(assert (=> b!7577 (= lt!3765 (array!597 ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000010100))))

(assert (= (and start!1461 res!6233) b!7575))

(assert (= (and b!7575 res!6237) b!7570))

(assert (= (and b!7570 res!6235) b!7577))

(assert (= (and b!7577 c!875) b!7572))

(assert (= (and b!7577 (not c!875)) b!7571))

(assert (= (and b!7577 res!6234) b!7573))

(assert (= (and b!7573 res!6238) b!7574))

(assert (= (and b!7574 res!6236) b!7576))

(declare-fun m!13749 () Bool)

(assert (=> start!1461 m!13749))

(declare-fun m!13751 () Bool)

(assert (=> start!1461 m!13751))

(declare-fun m!13753 () Bool)

(assert (=> start!1461 m!13753))

(declare-fun m!13755 () Bool)

(assert (=> b!7573 m!13755))

(declare-fun m!13757 () Bool)

(assert (=> b!7574 m!13757))

(declare-fun m!13759 () Bool)

(assert (=> b!7572 m!13759))

(declare-fun m!13761 () Bool)

(assert (=> b!7575 m!13761))

(check-sat (not b!7574) (not start!1461) (not b!7575) (not b!7573) (not b!7572))
(check-sat)
