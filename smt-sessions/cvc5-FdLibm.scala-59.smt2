; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!529 () Bool)

(assert start!529)

(declare-fun res!591 () Bool)

(declare-fun e!408 () Bool)

(assert (=> start!529 (=> (not res!591) (not e!408))))

(declare-fun x!199 () (_ FloatingPoint 11 53))

(assert (=> start!529 (= res!591 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!199) (not (fp.isInfinite x!199)) (not (fp.isNaN x!199))))))

(assert (=> start!529 e!408))

(assert (=> start!529 true))

(declare-fun b!520 () Bool)

(declare-fun e!407 () Bool)

(assert (=> b!520 (= e!408 e!407)))

(declare-fun res!592 () Bool)

(assert (=> b!520 (=> (not res!592) (not e!407))))

(declare-datatypes ((array!23 0))(
  ( (array!24 (arr!11 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!11 (_ BitVec 32))) )
))
(declare-datatypes ((tuple4!10 0))(
  ( (tuple4!11 (_1!42 (_ BitVec 32)) (_2!42 Bool) (_3!32 Bool) (_4!5 array!23)) )
))
(declare-fun lt!584 () tuple4!10)

(assert (=> b!520 (= res!592 (not (_3!32 lt!584)))))

(declare-fun lt!581 () (_ BitVec 32))

(declare-datatypes ((tuple2!20 0))(
  ( (tuple2!21 (_1!43 (_ BitVec 32)) (_2!43 array!23)) )
))
(declare-fun lt!583 () tuple2!20)

(declare-fun computeModulo!0 ((_ BitVec 32) array!23) tuple4!10)

(declare-fun timesTwoOverPi!0 ((_ BitVec 32) (_ BitVec 32) array!23) array!23)

(assert (=> b!520 (= lt!584 (computeModulo!0 lt!581 (timesTwoOverPi!0 lt!581 (_1!43 lt!583) (_2!43 lt!583))))))

(declare-fun splitInput!0 ((_ FloatingPoint 11 53)) tuple2!20)

(assert (=> b!520 (= lt!583 (splitInput!0 x!199))))

(assert (=> b!520 (= lt!581 #b00000000000000000000000000000110)))

(declare-fun b!521 () Bool)

(declare-datatypes ((tuple2!22 0))(
  ( (tuple2!23 (_1!44 (_ FloatingPoint 11 53)) (_2!44 (_ FloatingPoint 11 53))) )
))
(declare-fun lt!582 () tuple2!22)

(assert (=> b!521 (= e!407 (or (bvsgt #b00000000000000000000000000000000 (_1!42 lt!584)) (bvsge (_1!42 lt!584) #b00000000000000000000000000001000) (not (fp.leq (fp #b1 #b01111111110 #b1001001000011111101101010100010001000010110100011000) (_1!44 lt!582))) (not (fp.leq (_1!44 lt!582) (fp #b0 #b01111111110 #b1001001000011111101101010100010001000010110100011000))) (not (fp.eq (fp.add roundNearestTiesToEven (_1!44 lt!582) (_2!44 lt!582)) (_1!44 lt!582)))))))

(declare-fun fqCompression!0 ((_ BitVec 32) array!23 Bool) tuple2!22)

(declare-fun timesPiOverTwo!0 ((_ BitVec 32) array!23) array!23)

(assert (=> b!521 (= lt!582 (fqCompression!0 lt!581 (timesPiOverTwo!0 lt!581 (_4!5 lt!584)) (_2!42 lt!584)))))

(assert (= (and start!529 res!591) b!520))

(assert (= (and b!520 res!592) b!521))

(declare-fun m!607 () Bool)

(assert (=> b!520 m!607))

(assert (=> b!520 m!607))

(declare-fun m!609 () Bool)

(assert (=> b!520 m!609))

(declare-fun m!611 () Bool)

(assert (=> b!520 m!611))

(declare-fun m!613 () Bool)

(assert (=> b!521 m!613))

(assert (=> b!521 m!613))

(declare-fun m!615 () Bool)

(assert (=> b!521 m!615))

(push 1)

(assert (not b!521))

(assert (not b!520))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!471 () Bool)

(declare-fun lt!587 () tuple2!22)

(assert (=> d!471 (and (fp.leq (fp #b1 #b01111111110 #b1001001000011111101101010100010001000010110100011000) (_1!44 lt!587)) (fp.leq (_1!44 lt!587) (fp #b0 #b01111111110 #b1001001000011111101101010100010001000010110100011000)) (fp.eq (fp.add roundNearestTiesToEven (_1!44 lt!587) (_2!44 lt!587)) (_1!44 lt!587)))))

(declare-fun choose!13 ((_ BitVec 32) array!23 Bool) tuple2!22)

(assert (=> d!471 (= lt!587 (choose!13 lt!581 (timesPiOverTwo!0 lt!581 (_4!5 lt!584)) (_2!42 lt!584)))))

(declare-fun e!411 () Bool)

(assert (=> d!471 e!411))

(declare-fun res!595 () Bool)

(assert (=> d!471 (=> (not res!595) (not e!411))))

(assert (=> d!471 (= res!595 (= (size!11 (timesPiOverTwo!0 lt!581 (_4!5 lt!584))) #b00000000000000000000000000010100))))

(assert (=> d!471 (= (fqCompression!0 lt!581 (timesPiOverTwo!0 lt!581 (_4!5 lt!584)) (_2!42 lt!584)) lt!587)))

(declare-fun b!524 () Bool)

(declare-fun fqInv!0 (array!23) Bool)

(assert (=> b!524 (= e!411 (fqInv!0 (timesPiOverTwo!0 lt!581 (_4!5 lt!584))))))

(assert (= (and d!471 res!595) b!524))

(assert (=> d!471 m!613))

(declare-fun m!617 () Bool)

(assert (=> d!471 m!617))

(assert (=> b!524 m!613))

(declare-fun m!619 () Bool)

(assert (=> b!524 m!619))

(assert (=> b!521 d!471))

(declare-fun d!473 () Bool)

(declare-fun e!414 () Bool)

(assert (=> d!473 e!414))

(declare-fun res!598 () Bool)

(assert (=> d!473 (=> (not res!598) (not e!414))))

(declare-fun lt!590 () array!23)

(assert (=> d!473 (= res!598 (= (size!11 lt!590) #b00000000000000000000000000010100))))

(declare-fun choose!16 ((_ BitVec 32) array!23) array!23)

(assert (=> d!473 (= lt!590 (choose!16 lt!581 (_4!5 lt!584)))))

(assert (=> d!473 (and (bvsle #b00000000000000000000000000000000 lt!581) (bvslt lt!581 #b00000000000000000000000000010100))))

(assert (=> d!473 (= (timesPiOverTwo!0 lt!581 (_4!5 lt!584)) lt!590)))

(declare-fun b!527 () Bool)

(assert (=> b!527 (= e!414 (fqInv!0 lt!590))))

(assert (= (and d!473 res!598) b!527))

(declare-fun m!621 () Bool)

(assert (=> d!473 m!621))

(declare-fun m!623 () Bool)

(assert (=> b!527 m!623))

(assert (=> b!521 d!473))

(declare-fun d!475 () Bool)

(declare-fun e!417 () Bool)

(assert (=> d!475 e!417))

(declare-fun res!601 () Bool)

(assert (=> d!475 (=> (not res!601) (not e!417))))

(declare-fun lt!593 () tuple4!10)

(assert (=> d!475 (= res!601 (and (bvsle #b00000000000000000000000000000000 (_1!42 lt!593)) (bvslt (_1!42 lt!593) #b00000000000000000000000000001000) (= (size!11 (_4!5 lt!593)) #b00000000000000000000000000010100)))))

(declare-fun choose!17 ((_ BitVec 32) array!23) tuple4!10)

(assert (=> d!475 (= lt!593 (choose!17 lt!581 (timesTwoOverPi!0 lt!581 (_1!43 lt!583) (_2!43 lt!583))))))

(assert (=> d!475 (and (bvsle #b00000000000000000000000000000010 lt!581) (bvslt lt!581 #b00000000000000000000000000010011))))

(assert (=> d!475 (= (computeModulo!0 lt!581 (timesTwoOverPi!0 lt!581 (_1!43 lt!583) (_2!43 lt!583))) lt!593)))

(declare-fun b!530 () Bool)

(declare-fun qqInv!0 (array!23) Bool)

(assert (=> b!530 (= e!417 (qqInv!0 (_4!5 lt!593)))))

(assert (= (and d!475 res!601) b!530))

(assert (=> d!475 m!607))

(declare-fun m!625 () Bool)

(assert (=> d!475 m!625))

(declare-fun m!627 () Bool)

(assert (=> b!530 m!627))

(assert (=> b!520 d!475))

(declare-fun d!477 () Bool)

(declare-fun lt!596 () array!23)

(declare-fun qInv!0 (array!23) Bool)

(assert (=> d!477 (qInv!0 lt!596)))

(declare-fun choose!15 ((_ BitVec 32) (_ BitVec 32) array!23) array!23)

(assert (=> d!477 (= lt!596 (choose!15 lt!581 (_1!43 lt!583) (_2!43 lt!583)))))

(assert (=> d!477 (and (bvsle #b00000000000000000000000000000000 lt!581) (bvsle lt!581 #b00000000000000000000000000001111))))

(assert (=> d!477 (= (timesTwoOverPi!0 lt!581 (_1!43 lt!583) (_2!43 lt!583)) lt!596)))

(declare-fun bs!153 () Bool)

(assert (= bs!153 d!477))

(declare-fun m!629 () Bool)

(assert (=> bs!153 m!629))

(declare-fun m!631 () Bool)

(assert (=> bs!153 m!631))

(assert (=> b!520 d!477))

(declare-fun d!479 () Bool)

(declare-fun e!421 () Bool)

(assert (=> d!479 e!421))

(declare-fun res!604 () Bool)

(assert (=> d!479 (=> (not res!604) (not e!421))))

(declare-fun lt!599 () tuple2!20)

(assert (=> d!479 (= res!604 (and (bvsle #b00000000000000000000000000011000 (_1!43 lt!599)) (bvsle (_1!43 lt!599) #b00000000000000000000001111110000) (= (bvsrem (_1!43 lt!599) #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(declare-fun choose!11 ((_ FloatingPoint 11 53)) tuple2!20)

(assert (=> d!479 (= lt!599 (choose!11 x!199))))

(assert (=> d!479 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!199) (not (fp.isInfinite x!199)) (not (fp.isNaN x!199)))))

(assert (=> d!479 (= (splitInput!0 x!199) lt!599)))

(declare-fun b!533 () Bool)

(declare-fun xxInv!0 (array!23) Bool)

(assert (=> b!533 (= e!421 (xxInv!0 (_2!43 lt!599)))))

(assert (= (and d!479 res!604) b!533))

(declare-fun m!633 () Bool)

(assert (=> d!479 m!633))

(declare-fun m!635 () Bool)

(assert (=> b!533 m!635))

(assert (=> b!520 d!479))

(push 1)

(assert (not b!527))

(assert (not b!533))

(assert (not b!530))

(assert (not d!477))

(assert (not d!473))

(assert (not b!524))

(assert (not d!471))

(assert (not d!475))

(assert (not d!479))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

