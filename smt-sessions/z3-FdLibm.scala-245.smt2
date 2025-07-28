; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1457 () Bool)

(assert start!1457)

(declare-fun b!7522 () Bool)

(declare-fun res!6200 () Bool)

(declare-fun e!3896 () Bool)

(assert (=> b!7522 (=> (not res!6200) (not e!3896))))

(declare-datatypes ((array!592 0))(
  ( (array!593 (arr!263 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!263 (_ BitVec 32))) )
))
(declare-fun q!51 () array!592)

(declare-fun qInv!0 (array!592) Bool)

(assert (=> b!7522 (= res!6200 (qInv!0 q!51))))

(declare-fun b!7523 () Bool)

(declare-fun res!6197 () Bool)

(assert (=> b!7523 (=> (not res!6197) (not e!3896))))

(declare-fun f!79 () array!592)

(declare-fun fInv!0 (array!592) Bool)

(assert (=> b!7523 (= res!6197 (fInv!0 f!79))))

(declare-fun b!7524 () Bool)

(declare-fun e!3897 () Bool)

(declare-fun e!3898 () Bool)

(assert (=> b!7524 (= e!3897 e!3898)))

(declare-fun res!6201 () Bool)

(assert (=> b!7524 (=> (not res!6201) (not e!3898))))

(declare-fun e!19 () (_ BitVec 32))

(declare-fun lt!3738 () (_ BitVec 32))

(assert (=> b!7524 (= res!6201 (= (bvsub e!19 (bvmul #b00000000000000000000000000011000 (bvadd (ite (bvslt lt!3738 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!3738) #b00000000000000000000000000000001))) #b00000000000000000000000000000000))))

(assert (=> b!7524 (= lt!3738 (bvsdiv (bvsub e!19 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(declare-fun b!7525 () Bool)

(declare-fun res!6199 () Bool)

(assert (=> b!7525 (=> (not res!6199) (not e!3897))))

(declare-fun xx!50 () array!592)

(declare-fun xxInv!0 (array!592) Bool)

(assert (=> b!7525 (= res!6199 (xxInv!0 xx!50))))

(declare-fun b!7526 () Bool)

(declare-fun i!190 () (_ BitVec 32))

(declare-fun jz!36 () (_ BitVec 32))

(assert (=> b!7526 (= e!3896 (and (bvsle i!190 jz!36) (let ((lhs!76 (bvadd jz!36 #b00000000000000000000000000000001))) (and (not (= (bvand lhs!76 #b10000000000000000000000000000000) (bvand i!190 #b10000000000000000000000000000000))) (not (= (bvand lhs!76 #b10000000000000000000000000000000) (bvand (bvsub lhs!76 i!190) #b10000000000000000000000000000000)))))))))

(declare-fun b!7527 () Bool)

(declare-datatypes ((Unit!501 0))(
  ( (Unit!502) )
))
(declare-datatypes ((tuple3!120 0))(
  ( (tuple3!121 (_1!179 Unit!501) (_2!179 (_ BitVec 32)) (_3!160 array!592)) )
))
(declare-fun e!3894 () tuple3!120)

(declare-fun lt!3741 () (_ BitVec 32))

(declare-fun lt!3740 () array!592)

(declare-fun Unit!503 () Unit!501)

(assert (=> b!7527 (= e!3894 (tuple3!121 Unit!503 lt!3741 lt!3740))))

(declare-fun b!7528 () Bool)

(assert (=> b!7528 (= e!3898 e!3896)))

(declare-fun res!6202 () Bool)

(assert (=> b!7528 (=> (not res!6202) (not e!3896))))

(assert (=> b!7528 (= res!6202 (and (bvsle #b00000000000000000000000000000000 i!190) (bvsle i!190 (bvadd jz!36 #b00000000000000000000000000000001))))))

(declare-fun lt!3739 () tuple3!120)

(assert (=> b!7528 (= lt!3739 e!3894)))

(declare-fun c!869 () Bool)

(assert (=> b!7528 (= c!869 (bvsle lt!3741 (bvadd (bvsub (size!263 xx!50) #b00000000000000000000000000000001) jz!36)))))

(assert (=> b!7528 (= lt!3741 #b00000000000000000000000000000000)))

(assert (=> b!7528 (= lt!3740 (array!593 ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000010100))))

(declare-fun res!6198 () Bool)

(assert (=> start!1457 (=> (not res!6198) (not e!3897))))

(assert (=> start!1457 (= res!6198 (and (bvsle #b00000000000000000000000000000000 jz!36) (bvsle jz!36 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!19) (bvsle e!19 #b00000000000000000000001111110000) (= (bvsrem e!19 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1457 e!3897))

(declare-fun array_inv!213 (array!592) Bool)

(assert (=> start!1457 (array_inv!213 f!79)))

(assert (=> start!1457 (array_inv!213 q!51)))

(assert (=> start!1457 true))

(assert (=> start!1457 (array_inv!213 xx!50)))

(declare-fun b!7529 () Bool)

(declare-fun timesTwoOverPiWhile!0 ((_ BitVec 32) (_ BitVec 32) array!592 (_ BitVec 32) array!592) tuple3!120)

(assert (=> b!7529 (= e!3894 (timesTwoOverPiWhile!0 e!19 jz!36 xx!50 lt!3741 lt!3740))))

(assert (= (and start!1457 res!6198) b!7525))

(assert (= (and b!7525 res!6199) b!7524))

(assert (= (and b!7524 res!6201) b!7528))

(assert (= (and b!7528 c!869) b!7529))

(assert (= (and b!7528 (not c!869)) b!7527))

(assert (= (and b!7528 res!6202) b!7523))

(assert (= (and b!7523 res!6197) b!7522))

(assert (= (and b!7522 res!6200) b!7526))

(declare-fun m!13721 () Bool)

(assert (=> b!7525 m!13721))

(declare-fun m!13723 () Bool)

(assert (=> b!7522 m!13723))

(declare-fun m!13725 () Bool)

(assert (=> b!7523 m!13725))

(declare-fun m!13727 () Bool)

(assert (=> b!7529 m!13727))

(declare-fun m!13729 () Bool)

(assert (=> start!1457 m!13729))

(declare-fun m!13731 () Bool)

(assert (=> start!1457 m!13731))

(declare-fun m!13733 () Bool)

(assert (=> start!1457 m!13733))

(check-sat (not b!7523) (not b!7525) (not start!1457) (not b!7529) (not b!7522))
(check-sat)
