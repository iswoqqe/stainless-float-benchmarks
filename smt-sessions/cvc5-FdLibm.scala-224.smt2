; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!1355 () Bool)

(assert start!1355)

(declare-fun res!5421 () Bool)

(declare-fun e!3444 () Bool)

(assert (=> start!1355 (=> (not res!5421) (not e!3444))))

(declare-fun jz!27 () (_ BitVec 32))

(declare-fun e!10 () (_ BitVec 32))

(assert (=> start!1355 (= res!5421 (and (bvsle #b00000000000000000000000000000000 jz!27) (bvsle jz!27 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!10) (bvsle e!10 #b00000000000000000000001111110000) (= (bvsrem e!10 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1355 e!3444))

(assert (=> start!1355 true))

(declare-datatypes ((array!547 0))(
  ( (array!548 (arr!242 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!242 (_ BitVec 32))) )
))
(declare-fun xx!37 () array!547)

(declare-fun array_inv!192 (array!547) Bool)

(assert (=> start!1355 (array_inv!192 xx!37)))

(declare-fun b!6618 () Bool)

(declare-fun e!3449 () Bool)

(declare-fun e!3448 () Bool)

(assert (=> b!6618 (= e!3449 e!3448)))

(declare-fun res!5423 () Bool)

(assert (=> b!6618 (=> (not res!5423) (not e!3448))))

(declare-fun lt!3418 () (_ BitVec 32))

(assert (=> b!6618 (= res!5423 (bvsle lt!3418 jz!27))))

(assert (=> b!6618 (= lt!3418 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!432 0))(
  ( (Unit!433) )
))
(declare-datatypes ((tuple3!94 0))(
  ( (tuple3!95 (_1!159 Unit!432) (_2!159 (_ BitVec 32)) (_3!146 array!547)) )
))
(declare-fun lt!3416 () tuple3!94)

(declare-fun e!3446 () tuple3!94)

(assert (=> b!6618 (= lt!3416 e!3446)))

(declare-fun c!806 () Bool)

(declare-fun lt!3412 () (_ BitVec 32))

(assert (=> b!6618 (= c!806 (bvsle lt!3412 (bvadd (bvsub (size!242 xx!37) #b00000000000000000000000000000001) jz!27)))))

(assert (=> b!6618 (= lt!3412 #b00000000000000000000000000000000)))

(declare-fun lt!3414 () array!547)

(assert (=> b!6618 (= lt!3414 (array!548 ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000010100))))

(declare-fun b!6619 () Bool)

(declare-fun timesTwoOverPiWhile!0 ((_ BitVec 32) (_ BitVec 32) array!547 (_ BitVec 32) array!547) tuple3!94)

(assert (=> b!6619 (= e!3446 (timesTwoOverPiWhile!0 e!10 jz!27 xx!37 lt!3412 lt!3414))))

(declare-fun b!6620 () Bool)

(declare-fun e!3447 () tuple3!94)

(declare-fun lt!3411 () (_ BitVec 32))

(declare-fun lt!3419 () array!547)

(declare-fun Unit!434 () Unit!432)

(assert (=> b!6620 (= e!3447 (tuple3!95 Unit!434 lt!3411 lt!3419))))

(declare-fun b!6621 () Bool)

(assert (=> b!6621 (= e!3447 (timesTwoOverPiWhile!0 e!10 jz!27 xx!37 lt!3411 lt!3419))))

(declare-fun b!6622 () Bool)

(declare-fun e!3445 () Bool)

(assert (=> b!6622 (= e!3445 (bvsgt lt!3418 jz!27))))

(declare-fun lt!3413 () tuple3!94)

(assert (=> b!6622 (= lt!3413 e!3447)))

(declare-fun c!807 () Bool)

(assert (=> b!6622 (= c!807 (bvsle lt!3411 (bvadd (bvsub (size!242 xx!37) #b00000000000000000000000000000001) jz!27)))))

(assert (=> b!6622 (= lt!3411 #b00000000000000000000000000000000)))

(assert (=> b!6622 (= lt!3419 (array!548 ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000010100))))

(declare-fun b!6623 () Bool)

(assert (=> b!6623 (= e!3448 e!3445)))

(declare-fun res!5419 () Bool)

(assert (=> b!6623 (=> (not res!5419) (not e!3445))))

(declare-fun lt!3417 () (_ BitVec 32))

(assert (=> b!6623 (= res!5419 (= (bvsub e!10 (bvmul #b00000000000000000000000000011000 (bvadd (ite (bvslt lt!3417 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!3417) #b00000000000000000000000000000001))) #b00000000000000000000000000000000))))

(assert (=> b!6623 (= lt!3417 (bvsdiv (bvsub e!10 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(declare-fun b!6624 () Bool)

(declare-fun Unit!435 () Unit!432)

(assert (=> b!6624 (= e!3446 (tuple3!95 Unit!435 lt!3412 lt!3414))))

(declare-fun b!6625 () Bool)

(declare-fun res!5422 () Bool)

(assert (=> b!6625 (=> (not res!5422) (not e!3444))))

(declare-fun xxInv!0 (array!547) Bool)

(assert (=> b!6625 (= res!5422 (xxInv!0 xx!37))))

(declare-fun b!6626 () Bool)

(assert (=> b!6626 (= e!3444 e!3449)))

(declare-fun res!5420 () Bool)

(assert (=> b!6626 (=> (not res!5420) (not e!3449))))

(declare-fun lt!3415 () (_ BitVec 32))

(assert (=> b!6626 (= res!5420 (= (bvsub e!10 (bvmul #b00000000000000000000000000011000 (bvadd (ite (bvslt lt!3415 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!3415) #b00000000000000000000000000000001))) #b00000000000000000000000000000000))))

(assert (=> b!6626 (= lt!3415 (bvsdiv (bvsub e!10 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(assert (= (and start!1355 res!5421) b!6625))

(assert (= (and b!6625 res!5422) b!6626))

(assert (= (and b!6626 res!5420) b!6618))

(assert (= (and b!6618 c!806) b!6619))

(assert (= (and b!6618 (not c!806)) b!6624))

(assert (= (and b!6618 res!5423) b!6623))

(assert (= (and b!6623 res!5419) b!6622))

(assert (= (and b!6622 c!807) b!6621))

(assert (= (and b!6622 (not c!807)) b!6620))

(declare-fun m!13131 () Bool)

(assert (=> start!1355 m!13131))

(declare-fun m!13133 () Bool)

(assert (=> b!6619 m!13133))

(declare-fun m!13135 () Bool)

(assert (=> b!6621 m!13135))

(declare-fun m!13137 () Bool)

(assert (=> b!6625 m!13137))

(push 1)

(assert (not b!6621))

(assert (not start!1355))

(assert (not b!6625))

(assert (not b!6619))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

