; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!3153 () Bool)

(assert start!3153)

(declare-fun b_free!61 () Bool)

(declare-fun b_next!61 () Bool)

(assert (=> start!3153 (= b_free!61 (not b_next!61))))

(declare-fun tp!92 () Bool)

(declare-fun b_and!517 () Bool)

(assert (=> start!3153 (= tp!92 b_and!517)))

(declare-fun b!17943 () Bool)

(declare-fun res!14376 () Bool)

(declare-fun e!9484 () Bool)

(assert (=> b!17943 (=> (not res!14376) (not e!9484))))

(declare-fun P!5 () Int)

(declare-datatypes ((array!1414 0))(
  ( (array!1415 (arr!619 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!619 (_ BitVec 32))) )
))
(declare-fun a!12 () array!1414)

(declare-fun dynLambda!73 (Int (_ FloatingPoint 11 53)) Bool)

(assert (=> b!17943 (= res!14376 (dynLambda!73 P!5 (select (arr!619 a!12) #b00000000000000000000000000000010)))))

(declare-fun res!14374 () Bool)

(assert (=> start!3153 (=> (not res!14374) (not e!9484))))

(assert (=> start!3153 (= res!14374 (= (size!619 a!12) #b00000000000000000000000000010100))))

(assert (=> start!3153 e!9484))

(declare-fun array_inv!567 (array!1414) Bool)

(assert (=> start!3153 (array_inv!567 a!12)))

(assert (=> start!3153 tp!92))

(declare-fun b!17944 () Bool)

(declare-fun res!14372 () Bool)

(assert (=> b!17944 (=> (not res!14372) (not e!9484))))

(assert (=> b!17944 (= res!14372 (dynLambda!73 P!5 (select (arr!619 a!12) #b00000000000000000000000000000111)))))

(declare-fun b!17945 () Bool)

(declare-fun res!14373 () Bool)

(assert (=> b!17945 (=> (not res!14373) (not e!9484))))

(assert (=> b!17945 (= res!14373 (dynLambda!73 P!5 (select (arr!619 a!12) #b00000000000000000000000000000001)))))

(declare-fun b!17946 () Bool)

(declare-fun res!14371 () Bool)

(assert (=> b!17946 (=> (not res!14371) (not e!9484))))

(assert (=> b!17946 (= res!14371 (dynLambda!73 P!5 (select (arr!619 a!12) #b00000000000000000000000000000011)))))

(declare-fun b!17947 () Bool)

(declare-fun res!14379 () Bool)

(assert (=> b!17947 (=> (not res!14379) (not e!9484))))

(assert (=> b!17947 (= res!14379 (dynLambda!73 P!5 (select (arr!619 a!12) #b00000000000000000000000000000101)))))

(declare-fun b!17948 () Bool)

(declare-fun res!14377 () Bool)

(assert (=> b!17948 (=> (not res!14377) (not e!9484))))

(assert (=> b!17948 (= res!14377 (dynLambda!73 P!5 (select (arr!619 a!12) #b00000000000000000000000000000110)))))

(declare-fun b!17949 () Bool)

(assert (=> b!17949 (= e!9484 (bvsge #b00000000000000000000000000001000 (size!619 a!12)))))

(declare-fun b!17950 () Bool)

(declare-fun res!14375 () Bool)

(assert (=> b!17950 (=> (not res!14375) (not e!9484))))

(assert (=> b!17950 (= res!14375 (dynLambda!73 P!5 (select (arr!619 a!12) #b00000000000000000000000000000100)))))

(declare-fun b!17951 () Bool)

(declare-fun res!14378 () Bool)

(assert (=> b!17951 (=> (not res!14378) (not e!9484))))

(assert (=> b!17951 (= res!14378 (dynLambda!73 P!5 (select (arr!619 a!12) #b00000000000000000000000000000000)))))

(assert (= (and start!3153 res!14374) b!17951))

(assert (= (and b!17951 res!14378) b!17945))

(assert (= (and b!17945 res!14373) b!17943))

(assert (= (and b!17943 res!14376) b!17946))

(assert (= (and b!17946 res!14371) b!17950))

(assert (= (and b!17950 res!14375) b!17947))

(assert (= (and b!17947 res!14379) b!17948))

(assert (= (and b!17948 res!14377) b!17944))

(assert (= (and b!17944 res!14372) b!17949))

(declare-fun b_lambda!8397 () Bool)

(assert (=> (not b_lambda!8397) (not b!17943)))

(declare-fun t!647 () Bool)

(declare-fun tb!457 () Bool)

(assert (=> (and start!3153 (= P!5 P!5) t!647) tb!457))

(declare-fun result!457 () Bool)

(assert (=> tb!457 (= result!457 true)))

(assert (=> b!17943 t!647))

(declare-fun b_and!519 () Bool)

(assert (= b_and!517 (and (=> t!647 result!457) b_and!519)))

(declare-fun b_lambda!8399 () Bool)

(assert (=> (not b_lambda!8399) (not b!17947)))

(declare-fun t!649 () Bool)

(declare-fun tb!459 () Bool)

(assert (=> (and start!3153 (= P!5 P!5) t!649) tb!459))

(declare-fun result!459 () Bool)

(assert (=> tb!459 (= result!459 true)))

(assert (=> b!17947 t!649))

(declare-fun b_and!521 () Bool)

(assert (= b_and!519 (and (=> t!649 result!459) b_and!521)))

(declare-fun b_lambda!8401 () Bool)

(assert (=> (not b_lambda!8401) (not b!17950)))

(declare-fun t!651 () Bool)

(declare-fun tb!461 () Bool)

(assert (=> (and start!3153 (= P!5 P!5) t!651) tb!461))

(declare-fun result!461 () Bool)

(assert (=> tb!461 (= result!461 true)))

(assert (=> b!17950 t!651))

(declare-fun b_and!523 () Bool)

(assert (= b_and!521 (and (=> t!651 result!461) b_and!523)))

(declare-fun b_lambda!8403 () Bool)

(assert (=> (not b_lambda!8403) (not b!17951)))

(declare-fun t!653 () Bool)

(declare-fun tb!463 () Bool)

(assert (=> (and start!3153 (= P!5 P!5) t!653) tb!463))

(declare-fun result!463 () Bool)

(assert (=> tb!463 (= result!463 true)))

(assert (=> b!17951 t!653))

(declare-fun b_and!525 () Bool)

(assert (= b_and!523 (and (=> t!653 result!463) b_and!525)))

(declare-fun b_lambda!8405 () Bool)

(assert (=> (not b_lambda!8405) (not b!17948)))

(declare-fun t!655 () Bool)

(declare-fun tb!465 () Bool)

(assert (=> (and start!3153 (= P!5 P!5) t!655) tb!465))

(declare-fun result!465 () Bool)

(assert (=> tb!465 (= result!465 true)))

(assert (=> b!17948 t!655))

(declare-fun b_and!527 () Bool)

(assert (= b_and!525 (and (=> t!655 result!465) b_and!527)))

(declare-fun b_lambda!8407 () Bool)

(assert (=> (not b_lambda!8407) (not b!17945)))

(declare-fun t!657 () Bool)

(declare-fun tb!467 () Bool)

(assert (=> (and start!3153 (= P!5 P!5) t!657) tb!467))

(declare-fun result!467 () Bool)

(assert (=> tb!467 (= result!467 true)))

(assert (=> b!17945 t!657))

(declare-fun b_and!529 () Bool)

(assert (= b_and!527 (and (=> t!657 result!467) b_and!529)))

(declare-fun b_lambda!8409 () Bool)

(assert (=> (not b_lambda!8409) (not b!17944)))

(declare-fun t!659 () Bool)

(declare-fun tb!469 () Bool)

(assert (=> (and start!3153 (= P!5 P!5) t!659) tb!469))

(declare-fun result!469 () Bool)

(assert (=> tb!469 (= result!469 true)))

(assert (=> b!17944 t!659))

(declare-fun b_and!531 () Bool)

(assert (= b_and!529 (and (=> t!659 result!469) b_and!531)))

(declare-fun b_lambda!8411 () Bool)

(assert (=> (not b_lambda!8411) (not b!17946)))

(declare-fun t!661 () Bool)

(declare-fun tb!471 () Bool)

(assert (=> (and start!3153 (= P!5 P!5) t!661) tb!471))

(declare-fun result!471 () Bool)

(assert (=> tb!471 (= result!471 true)))

(assert (=> b!17946 t!661))

(declare-fun b_and!533 () Bool)

(assert (= b_and!531 (and (=> t!661 result!471) b_and!533)))

(declare-fun m!28303 () Bool)

(assert (=> b!17947 m!28303))

(assert (=> b!17947 m!28303))

(declare-fun m!28305 () Bool)

(assert (=> b!17947 m!28305))

(declare-fun m!28307 () Bool)

(assert (=> b!17946 m!28307))

(assert (=> b!17946 m!28307))

(declare-fun m!28309 () Bool)

(assert (=> b!17946 m!28309))

(declare-fun m!28311 () Bool)

(assert (=> b!17950 m!28311))

(assert (=> b!17950 m!28311))

(declare-fun m!28313 () Bool)

(assert (=> b!17950 m!28313))

(declare-fun m!28315 () Bool)

(assert (=> b!17951 m!28315))

(assert (=> b!17951 m!28315))

(declare-fun m!28317 () Bool)

(assert (=> b!17951 m!28317))

(declare-fun m!28319 () Bool)

(assert (=> b!17948 m!28319))

(assert (=> b!17948 m!28319))

(declare-fun m!28321 () Bool)

(assert (=> b!17948 m!28321))

(declare-fun m!28323 () Bool)

(assert (=> b!17943 m!28323))

(assert (=> b!17943 m!28323))

(declare-fun m!28325 () Bool)

(assert (=> b!17943 m!28325))

(declare-fun m!28327 () Bool)

(assert (=> b!17944 m!28327))

(assert (=> b!17944 m!28327))

(declare-fun m!28329 () Bool)

(assert (=> b!17944 m!28329))

(declare-fun m!28331 () Bool)

(assert (=> b!17945 m!28331))

(assert (=> b!17945 m!28331))

(declare-fun m!28333 () Bool)

(assert (=> b!17945 m!28333))

(declare-fun m!28335 () Bool)

(assert (=> start!3153 m!28335))

(push 1)

(assert (not b_lambda!8397))

(assert (not b_lambda!8411))

(assert (not b_lambda!8407))

(assert (not start!3153))

(assert (not b_lambda!8405))

(assert b_and!533)

(assert (not b_lambda!8401))

(assert (not b_lambda!8399))

(assert (not b_lambda!8409))

(assert (not b_next!61))

(assert (not b_lambda!8403))

(check-sat)

(pop 1)

(push 1)

(assert b_and!533)

(assert (not b_next!61))

(check-sat)

(pop 1)

